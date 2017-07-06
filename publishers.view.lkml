view: publishers {
  sql_table_name: comic_sales.publishers ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

#   dimension_group: created {
#     type: time
#   }
#
#   dimension: test_created {
#     type: string
#     sql: ${created_} ;;
#   }

  dimension: test_dupe {
    type: string
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
