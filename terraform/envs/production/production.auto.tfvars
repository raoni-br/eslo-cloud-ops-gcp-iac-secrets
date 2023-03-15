/**
 * Copyright 2020 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

secret_manager_project_id = "prj-p-secrets-4f8e"

region        = "southamerica-east1"
region_backup = "us-east1"

secrets = {
    "eslo-platform-backend-tf-vars" = {
        secret_name          = "eslo-platform-backend-tf-vars"
        secret_group_manager = "gcp.eslo-platform-sre@eslo.com.br"
        secret_reader_sas    = ["1031330240347@cloudbuild.gserviceaccount.com"]   
    }
}

terraform_service_account = "org-terraform@eslo-seed-4117.iam.gserviceaccount.com"
