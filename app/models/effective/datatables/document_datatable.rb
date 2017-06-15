
module Effective
  module Datatables
    class DocumentDatatable < Effective::MongoidDatatable
      datatable do


        bulk_actions_column do
          bulk_action 'Download', download_documents_documents_path, data: {  confirm: 'Do you want to Download?', no_turbolink: true }
          bulk_action 'Delete', delete_documents_documents_path, data: {  confirm: 'Are you sure?', no_turbolink: true }
        end
        table_column :status, :proc => Proc.new { |row| '<i class="fa fa-file-text-o" style="margin-right:20px;"></i>'+row.status }, :filter => false, :sortable => false
        table_column :employer, :proc => Proc.new { |row| link_to row.creator,"" }, :filter => false, :sortable => false
        table_column :doc_type, :proc => Proc.new { |row| link_to "Employer Attestation","", "data-toggle" => "modal", 'data-target' => "#employeeModal_#{row.id}" }, :filter => false, :sortable => false
        table_column :effective_date, :proc => Proc.new { |row| row.date }, :filter => false, :sortable => false
        table_column :submitted_date, :proc => Proc.new { |row| row.created_at }, :filter => false, :sortable => false
      end

      def generate_invoice_link_type(row)
        row.current_month_invoice.present? ? 'disabled' : 'post_ajax'
      end

      def collection
        documents = Document.all
        documents = Document.send(attributes[:status]) if attributes[:status].present?
        documents
      end

      def global_search?
        false
      end

      def global_search_method
        val = params[:search][:value]
        if val.match(/\d{9}/)
          :datatable_search_fein
        else
          :datatable_search
        end
      end

      def search_column(collection, table_column, search_term, sql_column)

      end

    def nested_filter_definition
      {
          top_scope:  :status,
          status: [
              {scope: 'submitted',label: 'Submitted'},
              {scope: 'approved', label: 'Approved'},
              {scope: 'rejected', label: 'Rejected'},
              {scope: 'all',  label: 'All'}
          ],
      }
      end
    end
  end
end
