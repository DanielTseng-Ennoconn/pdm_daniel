connection: "ennoconn-it-ennoconn-mssql2019-pdm"

# include all the views
include: "/views/**/*.view.lkml"

access_grant: user_id {
  user_attribute: id
  allowed_values: ["2", "6", "31"]
}

datagroup: pdm_daniel_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: pdm_daniel_default_datagroup

explore: approval_rate_information {
  label: "PDM承認率"

  required_access_grants: [user_id]
}
