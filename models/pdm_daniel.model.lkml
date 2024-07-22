connection: "ennoconn-it-ennoconn-mssql2019-pdm"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: pdm_daniel_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: pdm_daniel_default_datagroup

explore: approval_rate_information {}

