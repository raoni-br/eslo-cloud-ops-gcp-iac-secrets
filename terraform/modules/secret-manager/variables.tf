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

variable "secret_project_id" {
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

variable "secret_name" {
  description = "Secret name"
  type        = string
}

variable "secret_group_manager" {
  description = "Google Group with access to create versions and read the secret"
  type        = string
}

variable "secret_reader_sas" {
  description = "List of service accounts with read only access to the secret"
  type        = list(string)
}