view: titles {
  sql_table_name: comic_sales.titles ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: publisher {
    type: string
    sql: ${TABLE}.publisher ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
