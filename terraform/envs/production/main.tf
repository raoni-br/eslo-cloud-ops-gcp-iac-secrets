module "eslo_secret" {
  source   = "../../modules/secret-manager"
  for_each = var.secrets

  secret_project_id = var.secret_manager_project_id
  region            = var.region
  region_backup     = var.region_backup

  secret_name          = each.value.secret_name
  secret_group_manager = each.value.secret_group_manager
  secret_reader_sas    = each.value.secret_reader_sas
}

