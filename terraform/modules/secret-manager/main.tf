locals {
  sa_secret_reader_set = toset(distinct(flatten(var.secret_reader_sas)))
}
