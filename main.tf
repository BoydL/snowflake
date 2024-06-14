terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.25.17"
    }
  }

  backend "remote" {
    organization = "snowflake_lucas_boyd"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}

provider "snowflake" {
    
}

resource "snowflake_database" "demo_db_lucas_boyd" {
  name    = "DEMO_DB_LUCAS_BOYD"
  comment = "Database for Snowflake Terraform demo"
}