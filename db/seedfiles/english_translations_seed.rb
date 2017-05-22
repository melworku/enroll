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
  "en.uis.bootstrap3_examples.index.breadcrumbs" => "Breadcrumbs",
  "en.uis.bootstrap3_examples.index.home" => "Home",
  "en.uis.bootstrap3_examples.index.library" => "Library",
  "en.uis.bootstrap3_examples.index.data" => "Data",
  "en.uis.bootstrap3_examples.index.panels_link" => "Jump to the panels section of this page",
  "en.uis.bootstrap3_examples.index.progressbars_link" => "Jump to the progress bars section of this page",
  "en.uis.bootstrap3_examples.index.tables_link" => "Jump to the tables section of this page",
  "en.uis.bootstrap3_examples.index.tooltips_link" => "Jump to the tooltips section of this page",
  "en.uis.bootstrap3_examples.index.text_area" => "Text Area",
  "en.uis.bootstrap3_examples.index.comment" => "Comment",
  "en.uis.bootstrap3_examples.index.check_box" => "Check Box",
  "en.uis.bootstrap3_examples.index.checked" => "Do you have insurance before",
  "en.uis.bootstrap3_examples.index.unchecked" => "Do you have insurance before",
  "en.uis.bootstrap3_examples.index.disabled_checked" => "Disabled",
  "en.uis.bootstrap3_examples.index.disabled_unchecked" => "Admin Access",
  "en.uis.bootstrap3_examples.index.radio_button" => "Radio Button",
  "en.uis.bootstrap3_examples.index.radio_off" => "Do you have insurance before",
  "en.uis.bootstrap3_examples.index.radio_on" => "Do you have insurance before",
  "en.uis.bootstrap3_examples.index.disabled_radio_off" => "Admin Access",
  "en.uis.bootstrap3_examples.index.disabled_radio_on" => "Disabled",
  "en.uis.bootstrap3_examples.index.typography" => "Typography",
  "en.uis.bootstrap3_examples.index.typography_link" => "Jump to the typography section of this page",
  "en.uis.bootstrap3_examples.index.wells_link" => "Jump to the wells section of this page",
  "en.uis.bootstrap3_examples.index.alerts" => "Alerts",
  "en.uis.bootstrap3_examples.index.div_alert_success" => "Create a div with class 'alert alert-success' ",
  "en.uis.bootstrap3_examples.index.your_computer" => "Your computer restarted ",
  "en.uis.bootstrap3_examples.index.because_problem" => "because of a problem.",
  "en.uis.bootstrap3_examples.index.sorry_for_inconvenience" => "Sorry for any inconvenience and appreciate your patient.",
  "en.uis.bootstrap3_examples.index.disc_space" => "Disc Space was extended twice. It’s ok? ",
  "en.uis.bootstrap3_examples.index.an_error_message" => "An error message is information displayed when an  ",
  "en.uis.bootstrap3_examples.index.unexpected_condition" => "unexpected condition occurs ",
  "en.uis.bootstrap3_examples.index.usually_on_a_computer" => ", usually on a computer or other device. On modern operating systems with graphical user interfaces, error messages are often displayed using dialog boxes. ",
  "en.uis.bootstrap3_examples.index.hurray" => "Hurray! ",
  "en.uis.bootstrap3_examples.index.share_on_twitter" => "Share on twitter ",
  "en.uis.bootstrap3_examples.index.div_alert_info" => "Create a div with class 'alert alert-info' ",
  "en.uis.bootstrap3_examples.index.information_label" => "Information Label ",
  "en.uis.bootstrap3_examples.index.turn_it_off" => "Turn it off now ",
  "en.uis.bootstrap3_examples.index.its_ok" => "It’s ok ",
  "en.uis.bootstrap3_examples.index.div_alert_warning" => "Create a div with class 'alert alert-warning' ",
  "en.uis.bootstrap3_examples.index.error_the_change" => "Error: The change you wanted was rejected. ",
  "en.uis.bootstrap3_examples.index.div_alert_danger" => "Create a div with class 'alert alert-danger' ",
  "en.uis.bootstrap3_examples.index.dismissible" => "Dismissible ",
  "en.uis.bootstrap3_examples.index.warning" => "Warning! ",
  "en.uis.bootstrap3_examples.index.better_check_yourself" => "Better check yourself, you're not looking too good. ",
  "en.uis.bootstrap3_examples.index.tabs" => " Tabs ",
  "en.uis.bootstrap3_examples.index.popular" => " Popular ",
  "en.uis.bootstrap3_examples.index.newest" => " Newest  ",
  "en.uis.bootstrap3_examples.index.bestselling" => " Bestselling  ",
  "en.uis.bootstrap3_examples.index.disabled_tab" => "Disabled Tab  ",
  "en.uis.bootstrap3_examples.index.section_one" => "I'm in Section 1.  ",
  "en.uis.bootstrap3_examples.index.section_two" => "Howdy, I'm in Section 2.  ",
  "en.uis.bootstrap3_examples.index.section_three" => "Howdy, I'm in Section 3.  ",
  "en.uis.bootstrap3_examples.index.section_disbaled" => "This section is disabled.  ",
  "en.uis.bootstrap3_examples.index.tab_dropdown" => "Tab with Dropdown  ",
  "en.uis.bootstrap3_examples.index.home" => "Home  ",
  "en.uis.bootstrap3_examples.index.sub_options" => "Sub Options  ",
  "en.uis.bootstrap3_examples.index.sub_option_divider" => "Sub Option below a divider  ",
  "en.uis.bootstrap3_examples.index.profile" => "Profile  ",
  "en.uis.bootstrap3_examples.index.messages" => "Messages  ",
  "en.uis.bootstrap3_examples.index.file_input" => "File Input",
  "en.wecome.index.sign_out" => "Sign Out",
  "en.welcome.index.assisted_consumer_family_portal" => "Assisted Consumer/Family Portal",
  "en.welcome.index.broker_agency_portal" => "Broker Agency Portal",
  "en.welcome.index.broker_registration" => "Broker Registration",
  "en.layouts.application_brand.byline" => "The Right Place for the Right Plan",
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
  "en.welcome.index.welcome_to_site_name" => "Welcome to %{short_name}",
  "en.uis.bootstrap3_examples.buttons" => "Buttons",
  "en.uis.bootstrap3_examples.index.panels" => "Panels",
  "en.uis.bootstrap3_examples.index.button_classes" => "Button Classes",
  "en.uis.bootstrap3_examples.index.default" => "Default",
  "en.uis.bootstrap3_examples.index.primary" => "Primary",
  "en.uis.bootstrap3_examples.index.success" => "Success",
  "en.uis.bootstrap3_examples.index.info" => "Info",
  "en.uis.bootstrap3_examples.index.warning" => "Warning",
  "en.uis.bootstrap3_examples.index.danger" => "Danger",
  "en.uis.bootstrap3_examples.index.link" => "Link",
  "en.uis.bootstrap3_examples.index.button_sizes" => "Button Sizes",
  "en.uis.bootstrap3_examples.index.large_button" => "Large Button",
  "en.uis.bootstrap3_examples.index.default_button" => "Default Button",
  "en.uis.bootstrap3_examples.index.extra_small_button" => "Extra Small Button",
  "en.uis.bootstrap3_examples.index.block_level_buttons" => "Block Level Buttons",
  "en.uis.bootstrap3_examples.index.button_states" => "Button States",
  "en.uis.bootstrap3_examples.index.active_primary_button" => "Active Primary Button",
  "en.uis.bootstrap3_examples.index.active_default_button" => "Active Default Button",
  "en.uis.bootstrap3_examples.index.disabled_primary_button" => "Disabled Primary Button",
  "en.uis.bootstrap3_examples.index.disabled_default_button" => "Disabled Default Button",
  "en.uis.bootstrap3_examples.index.button_variants" => "Button Variants",
  "en.uis.bootstrap3_examples.index.its_a" => "Its a",
  "en.uis.bootstrap3_examples.index.button" => "Button",
  "en.uis.bootstrap3_examples.index.embossed" => "Embossed",
  "en.uis.bootstrap3_examples.index.default_fluid_button" => "Default Fluid Button",
  "en.uis.bootstrap3_examples.index.dropdowns" => "Drop downs",
  "en.uis.bootstrap3_examples.index.action" => "Action",
  "en.uis.bootstrap3_examples.index.another_action" => "Another Action",
  "en.uis.bootstrap3_examples.index.something_else_where" => "Something else where",
  "en.uis.bootstrap3_examples.index.separated_link" => "Separed Link",
  "en.uis.bootstrap3_examples.index.toggle_dropdown" => "Toggle Dropdown",
  "en.uis.bootstrap3_examples.index.button_groups" => "Button Groups",
  "en.uis.bootstrap3_examples.index.button_group_desc" => "we can group buttons in 3 different ways",
  "en.uis.bootstrap3_examples.index.button_group_type1_desc" => "First type of grouping default is :",
  "en.uis.bootstrap3_examples.index.elon_musk" => "Elon Musk",
  "en.uis.bootstrap3_examples.index.bill_gates" => "Bill Gates",
  "en.uis.bootstrap3_examples.index.mark" => "Mark",
  "en.uis.bootstrap3_examples.index.second_header" => "SECOND VERTICAL TYPE:",
  "en.uis.bootstrap3_examples.index.third_header" => "THIRD JUSTIFIED TYPE :",
  "en.uis.bootstrap3_examples.index.button_group_type_group_desc" => "we can also mix input groups with button groups",
  "en.uis.bootstrap3_examples.index.panels" => "Panels",
  "en.uis.bootstrap3_examples.index.panel_desc" => "Panel Heading for enrollment reports goes here",
  "en.uis.bootstrap3_examples.index.panel_body_desc" => "It will display the all the enrollment reports",
  "en.uis.bootstrap3_examples.index.hbx_id" => "HBX_ID",
  "en.uis.bootstrap3_examples.index.user_name" => "User Name",
  "en.uis.bootstrap3_examples.index.employee" => "Employee",
  "en.uis.bootstrap3_examples.index.dob" => "DOB",
  "en.uis.bootstrap3_examples.index.ssn" => "SSN",
  "en.uis.bootstrap3_examples.index.elon_id" => "8787",
  "en.uis.bootstrap3_examples.index.tesla" => "Tesla",
  "en.uis.bootstrap3_examples.index.elon_dob" => "10-07-1991",
  "en.uis.bootstrap3_examples.index.elon_ssn" => "999-09-9991",
  "en.uis.bootstrap3_examples.index.gates_id" => "9090",
  "en.uis.bootstrap3_examples.index.microsoft" => "Microsoft",
  "en.uis.bootstrap3_examples.index.gates_dob" => "10-07-1991",
  "en.uis.bootstrap3_examples.index.gates_ssn" => "999-99-99990",
  "en.uis.bootstrap3_examples.index.mark_id" => "9898",
  "en.uis.bootstrap3_examples.index.facebook" => "Facebook",
  "en.uis.bootstrap3_examples.index.mark_dob" => "10-07-1991",
  "en.uis.bootstrap3_examples.index.mark_ssn" => "999-88-8880",
  "en.uis.bootstrap3_examples.index.panel_list_desc" => "We can put the list of groups in panel while displaying them using JS and we can use Hover as well while moving the cursor to different panels",
  "en.uis.bootstrap3_examples.index.history" => "History",
  "en.uis.bootstrap3_examples.index.panel_list_history_desc" => "Here goes the respective history text",
  "en.uis.bootstrap3_examples.index.bibilography" => "Bibilography",
  "en.uis.bootstrap3_examples.index.qualifications" => "Qualifications",
  "en.uis.bootstrap3_examples.index.education" => "Education",
  "en.uis.bootstrap3_examples.index.references" => "References",
  "en.uis.bootstrap3_examples.index.panel_footer_desc" => "Panel Footer Example",
  "en.uis.bootstrap3_examples.index.panel_header_desc" => "Panel header goes here",
  "en.uis.bootstrap3_examples.index.panel_body_content" => "Load the panel body content here",
  "en.uis.bootstrap3_examples.index.panel_footer_content" => "Panel footer goes here "
}

translations.keys.each do |k|
  Translation.where(key: k).first_or_create.update_attributes!(value: "\"#{translations[k]}\"")
end

puts "::: English Translations Complete :::"
puts "*"*80