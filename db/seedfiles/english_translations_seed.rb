puts "*"*80
puts "::: Generating English Translations :::"

translations = {
  "en.layouts.application_brand.call_customer_service" => "Call Customer Service",
  "en.layouts.application_brand.help" => "Help",
  "en.layouts.application_brand.logout" => "Logout",
  "en.layouts.application_brand.my_id" => "My ID",
  "en.shared.my_portal_links.my_insured_portal" => "My Insured Portal",
  "en.uis.bootstrap3_examples.index.alerts_link" => "Jump to the alerts section of this page",
  "en.uis.bootstrap3_examples.index.badges_link" => "Jump to the badges section of this page",
  "en.uis.bootstrap3_examples.index.body_copy" => "Body Copy",
  "en.uis.bootstrap3_examples.index.body_copy_text" => "Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.  Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec ullamcorper nulla non metus auctor fringilla. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec ullamcorper nulla non metus auctor fringilla.  Maecenas sed diam eget risus varius blandit sit amet non magna. Donec id elit non mi porta gravida at eget metus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.",
  "en.uis.bootstrap3_examples.index.buttons_link" => "Jump to the buttons section of this page",
  "en.uis.bootstrap3_examples.index.carousels_link" => "Jump to the carousels section of this page",
  "en.uis.bootstrap3_examples.index.heading_1" => "Heading 1",
  "en.uis.bootstrap3_examples.index.heading_2" => "Heading 2",
  "en.uis.bootstrap3_examples.index.heading_3" => "Heading 3",
  "en.uis.bootstrap3_examples.index.heading_4" => "Heading 4",
  "en.uis.bootstrap3_examples.index.heading_5" => "Heading 5",
  "en.uis.bootstrap3_examples.index.heading_6" => "Heading 6",
  "en.uis.bootstrap3_examples.index.headings" => "Headings",
  "en.uis.bootstrap3_examples.index.inputs_link" => "Jump to the inputs section of this page",
  "en.uis.bootstrap3_examples.index.navigation_link" => "Jump to the navigation section of this page",
  "en.uis.bootstrap3_examples.index.pagination_link" => "Jump to the pagination section of this page",
  "en.uis.bootstrap3_examples.index.panels_link" => "Jump to the panels section of this page",
  "en.uis.bootstrap3_examples.index.progressbars_link" => "Jump to the progress bars section of this page",
  "en.uis.bootstrap3_examples.index.tables_link" => "Jump to the tables section of this page",
  "en.uis.bootstrap3_examples.index.tooltips_link" => "Jump to the tooltips section of this page",
  "en.uis.bootstrap3_examples.index.typography" => "Typography",
  "en.uis.bootstrap3_examples.index.typography_link" => "Jump to the typography section of this page",
  "en.uis.bootstrap3_examples.index.wells_link" => "Jump to the wells section of this page",
  "en.wecome.index.sign_out" => "Sign Out",
  "en.welcome.index.assisted_consumer_family_portal" => "Assisted Consumer/Family Portal",
  "en.welcome.index.broker_agency_portal" => "Broker Agency Portal",
  "en.welcome.index.broker_registration" => "Broker Registration",
  "en.welcome.index.byline" => "The Right Place for the Right Plan",
  "en.welcome.index.consumer_family_portal" => "Consumer/Family Portal",
  "en.welcome.index.employee_portal" => "Employee Portal",
  "en.welcome.index.employer_portal" => "Employer Portal",
  "en.welcome.index.general_agency_portal" => "General Agency Portal",
  "en.welcome.index.general_agency_registration" => "General Agency Registration",
  "en.welcome.index.hbx_portal" => "HBX Portal",
  "en.welcome.index.logout" => "Logout",
  "en.welcome.index.returning_user" => "Returning User",
  "en.welcome.index.signed_in_as" => "Signed in as %{current_user}",
  "en.welcome.index.welcome_email" => "Welcome %{current_user}",
  "en.welcome.index.welcome_to_site_name" => "Welcome to %{short_name}"
}

translations.keys.each do |k|
  Translation.where(key: k).first_or_create.update_attributes!(value: "\"#{translations[k]}\"")
end

puts "::: English Translations Complete :::"
puts "*"*80