resource "google_secret_manager_secret" "eslo_secret" {
  project   = var.secret_project_id
  secret_id = var.secret_name


  replication {
    user_managed {
      replicas {
        location = var.region
      }
      replicas {
        location = var.region_backup
      }
    }
  }
}
