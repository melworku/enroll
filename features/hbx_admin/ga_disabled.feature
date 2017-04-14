@general_agency_disabled
Feature: Admin can't assign General Agencies if they are disabled

  Background:
    Given a broker exists
    And a Hbx admin with read and write permissions exists
  Scenario: When the general agency is disabled through settings, then the Broker should not see the 'Assign' link under his profile
    And Hbx Admin logs on to the Hbx Portal
    And Hbx Admin clicks on the Broker Agencies tab
    And Hbx Admin clicks on the broker
    Then he should not be able to see the Assign link under his profile
