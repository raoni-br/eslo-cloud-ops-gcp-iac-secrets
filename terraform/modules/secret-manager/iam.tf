# Group manager - access to read secrets and add versions
resource "google_secret_manager_secret_iam_member" "group_manager_accessor" {
  project   = google_secret_manager_secret.eslo_secret.project
  secret_id = google_secret_manager_secret.eslo_secret.secret_id
  role      = "roles/secretmanager.secretAccessor"
  member    = "group:${var.secret_group_manager}"
}

resource "google_secret_manager_secret_iam_member" "group_manager_version_adder" {
  project   = google_secret_manager_secret.eslo_secret.project
  secret_id = google_secret_manager_secret.eslo_secret.secret_id
  role      = "roles/secretmanager.secretVersionAdder"
  member    = "group:${var.secret_group_manager}"
}

# SAs with accessor access
resource "google_secret_manager_secret_iam_member" "sa_accessor" {
  for_each  = local.sa_secret_reader_set
  project   = google_secret_manager_secret.eslo_secret.project
  secret_id = google_secret_manager_secret.eslo_secret.secret_id
  role      = "roles/secretmanager.secretAccessor"
  member    = "serviceAccount:${each.value}"
}
