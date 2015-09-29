@watir @screenshots @no-database-cleaner 
Feature: Insured Enrolls as Employee then as Consumer
  Scenario: New insured user purchases on individual market
    Given Individual has not signed up as an HBX user
    Given Company Tronics is created with benefits
    Given Tronics clicks on the Employees tab
    Given Tronics clicks on the add employee button
    Given Tronics creates Fred as a roster employee
    #Given Tronics clicks on the Employees tab
    #Given Tronics clicks on the add employee button
    #Given Tronics creates Megan as a roster employee
    Given Company Tronics logs out

    When Fred visits the Consumer Portal
    When Fred creates a new account
    Then Fred sees the Your Information page
    When Fred continues
    When Fred enters person search data
    When Fred sees the Fantastic page
    When Fred continues
    When Fred enters demographic information
    When Fred clicks continue
    Then Fred sees the Verify Identity page

    When Fred logs out
    When Fred visits the Employee portal
    When Fred signs in 
    When Fred enters person search data
    When Fred selects Company match for Tronics
    When Fred continues again
    Then Fred sees the Household Info: Family Members page
    Then Fred is an Employee
    When Fred logs out
    When Fred visits the Consumer portal
    When Fred signs in
    Then Fred sees the Verify Identity page
    Then Fred should see identity verification page and clicks on submit
    Then Fred sees the Household Info: Family Members page 
    Then Fred is a Consumer


    When Fred logs out
    When Fred visits the Employee portal
    When Fred signs in
    Then Fred sees the Household Info: Family Members page
    Then Fred is an Employee
    Then Fred logs out
