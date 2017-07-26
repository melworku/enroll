class Observers::NoticeObserver < Observers::Observer

  # TODO: Code below pulled from NoticeTrigger
  # Integrate here and delete NoticeTrigger
  # Why are these persisted in MongoDB?

  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :notice_template, type: String
  field :notice_builder, type: String
  field :mpi_indicator, type: String

  embedded_in :application_event_kind

  embeds_one :notice_trigger_element_group
  accepts_nested_attributes_for :notice_trigger_element_group

  after_initialize :initialize_dependent_models

  def publish(target_object, new_event)
    rule = EventForNoticeTriggerRule.new(self, new_event)
    if rule.satisfied?
      notice_builder.camelize.constantize.new(target_object, {template: notice_template, subject: application_event_kind.title, mpi_indicator: mpi_indicator}.merge(notice_trigger_element_group.notice_peferences)).deliver
    else
      # log error
    end
  end

  def initialize_dependent_models
    build_notice_trigger_element_group if notice_trigger_element_group.nil?
  end

  def employer_profile_update(observer_event)
  end

end
