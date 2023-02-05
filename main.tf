
# project : project-1

resource "google_project_iam_member" "project-1_project-1" {
  project = "project-1"
  member  = "user:project-1@project-1.iam.gserviceaccount.com"
  role    = "roles/bigquery.readsessions.create"
}
resource "google_project_iam_binding" "project-1_project-1_roles-bigquery-readsessions-create" {
  project = "project-1"
  role    = "roles/bigquery.readsessions.create"
  members = [
    "user:project-1@project-1.iam.gserviceaccount.com",
  ]
}
resource "google_service_account" "project-1_sa-name" {
  project          = "project-1"
  account_id       = "sa-name"
  display_name     = "SA"
}

resource "google_project_iam_binding" "project-1_sa-name_roles-editor" {
  project = "project-1"
  role    = "roles/editor"
  members = [
    "serviceAccount:${google_service_account.project-1_sa-name.email}"
  ]
}
# project : project-2

resource "google_project_iam_member" "project-2_Claudia" {
  project = "project-2"
  member  = "user:claudia84012345@gmail.com"
  role    = "roles/biquery.dataOwner"
}
resource "google_project_iam_member" "project-2_Claudia" {
  project = "project-2"
  member  = "user:claudia84012345@gmail.com"
  role    = "roles/biquery.jobUser"
}
resource "google_project_iam_member" "project-2_Claudia" {
  project = "project-2"
  member  = "user:claudia84012345@gmail.com"
  role    = "roles/iam.serviceAccountUser"
}
resource "google_project_iam_member" "project-2_Claudia" {
  project = "project-2"
  member  = "user:claudia84012345@gmail.com"
  role    = "roles/viewer"
}
resource "google_project_iam_binding" "project-2_Claudia_roles-biquery-dataOwner" {
  project = "project-2"
  role    = "roles/biquery.dataOwner"
  members = [
    "user:claudia84012345@gmail.com",
  ]
}
resource "google_project_iam_binding" "project-2_Claudia_roles-biquery-jobUser" {
  project = "project-2"
  role    = "roles/biquery.jobUser"
  members = [
    "user:claudia84012345@gmail.com",
  ]
}
resource "google_project_iam_binding" "project-2_Claudia_roles-iam-serviceAccountUser" {
  project = "project-2"
  role    = "roles/iam.serviceAccountUser"
  members = [
    "user:claudia84012345@gmail.com",
  ]
}
resource "google_project_iam_binding" "project-2_Claudia_roles-viewer" {
  project = "project-2"
  role    = "roles/viewer"
  members = [
    "user:claudia84012345@gmail.com",
  ]
}
resource "google_service_account" "project-2_sa-name-dev" {
  project          = "project-2"
  account_id       = "sa-name-dev"
  display_name     = "SA-dev"
}


# project : project-3

resource "google_project_iam_member" "project-3_Claudia" {
  project = "project-3"
  member  = "user:claudia84012345@gmail.com"
  role    = "roles/biquery.dataOwner"
}
resource "google_project_iam_member" "project-3_Claudia" {
  project = "project-3"
  member  = "user:claudia84012345@gmail.com"
  role    = "roles/biquery.jobUser"
}
resource "google_project_iam_member" "project-3_Claudia" {
  project = "project-3"
  member  = "user:claudia84012345@gmail.com"
  role    = "roles/iam.serviceAccountUser"
}
resource "google_project_iam_member" "project-3_Claudia" {
  project = "project-3"
  member  = "user:claudia84012345@gmail.com"
  role    = "roles/viewer"
}
resource "google_project_iam_binding" "project-3_Claudia_roles-biquery-dataOwner" {
  project = "project-3"
  role    = "roles/biquery.dataOwner"
  members = [
    "user:claudia84012345@gmail.com",
  ]
}
resource "google_project_iam_binding" "project-3_Claudia_roles-biquery-jobUser" {
  project = "project-3"
  role    = "roles/biquery.jobUser"
  members = [
    "user:claudia84012345@gmail.com",
  ]
}
resource "google_project_iam_binding" "project-3_Claudia_roles-iam-serviceAccountUser" {
  project = "project-3"
  role    = "roles/iam.serviceAccountUser"
  members = [
    "user:claudia84012345@gmail.com",
  ]
}
resource "google_project_iam_binding" "project-3_Claudia_roles-viewer" {
  project = "project-3"
  role    = "roles/viewer"
  members = [
    "user:claudia84012345@gmail.com",
  ]
}
resource "google_service_account" "project-3_sa-name-dev" {
  project          = "project-3"
  account_id       = "sa-name-dev"
  display_name     = "SA-dev"
}


# project : project-4

resource "google_project_iam_member" "project-4_Claudia" {
  project = "project-4"
  member  = "user:claudia84012345@gmail.com"
  role    = "roles/biquery.dataOwner"
}
resource "google_project_iam_member" "project-4_Claudia" {
  project = "project-4"
  member  = "user:claudia84012345@gmail.com"
  role    = "roles/biquery.jobUser"
}
resource "google_project_iam_member" "project-4_Claudia" {
  project = "project-4"
  member  = "user:claudia84012345@gmail.com"
  role    = "roles/iam.serviceAccountUser"
}
resource "google_project_iam_member" "project-4_Claudia" {
  project = "project-4"
  member  = "user:claudia84012345@gmail.com"
  role    = "roles/viewer"
}
resource "google_project_iam_binding" "project-4_Claudia_roles-biquery-dataOwner" {
  project = "project-4"
  role    = "roles/biquery.dataOwner"
  members = [
    "user:claudia84012345@gmail.com",
  ]
}
resource "google_project_iam_binding" "project-4_Claudia_roles-biquery-jobUser" {
  project = "project-4"
  role    = "roles/biquery.jobUser"
  members = [
    "user:claudia84012345@gmail.com",
  ]
}
resource "google_project_iam_binding" "project-4_Claudia_roles-iam-serviceAccountUser" {
  project = "project-4"
  role    = "roles/iam.serviceAccountUser"
  members = [
    "user:claudia84012345@gmail.com",
  ]
}
resource "google_project_iam_binding" "project-4_Claudia_roles-viewer" {
  project = "project-4"
  role    = "roles/viewer"
  members = [
    "user:claudia84012345@gmail.com",
  ]
}
resource "google_service_account" "project-4_sa-name-dev" {
  project          = "project-4"
  account_id       = "sa-name-dev"
  display_name     = "SA-dev"
}



