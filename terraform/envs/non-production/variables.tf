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

variable "terraform_service_account" {
  description = "Service account email of the account to impersonate to run Terraform."
  type        = string
}

variable "secret_manager_project_id" {
  description = "Project ID of secret manager project"
  type        = string
}

variable "region" {
  description = "Secret region"
  type        = string
}

variable "region_backup" {
  description = "Secret replication region"
  type        = string
}

# secrets
variable "secrets" {
  description = "Secrets map"
  type = map(object({
    secret_name          = string
    secret_group_manager = string
    secret_reader_sas    = list(string)
  }))
}
