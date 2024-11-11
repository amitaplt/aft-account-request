module "account_request_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "amitapl+afttest3@amazon.com"
    AccountName               = "aft-test3"
    ManagedOrganizationalUnit = "Sandbox" 
    SSOUserEmail              = "amitapl+afttest3@amazon.com"
    SSOUserFirstName          = "AmitaTest"
    SSOUserLastName           = "PillaiTest"
  }

  account_tags = {
    "ABC:Owner"       = "myname@mycompany.com"
    "ABC:Division"    = "ENT"
  
  }

  change_management_parameters = {
    change_requested_by = "AWS Control Tower Lab"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform (AFT)"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "SANDBOX"
}
