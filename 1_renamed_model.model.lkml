connection: "comic_sales"

include: "a_duplicate_test_dir/nested_file.view.lkml"
include: "titles.view.lkml"

explore: users {}
explore: titles {}
explore: product {}

view: users {
  dimension: id {
    type: number
    primary_key: yes
    sql: ${TABLE}.id;;
  }

  dimension: age {
    type: number
  }

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month, year]
    sql: ${TABLE}.created_at;;
  }

  dimension: gender {}

  dimension: name {
    sql: CONCAT(${TABLE}.first_name,' ', ${TABLE}.last_name);;
  }

  dimension: state {}

  measure: count {
    type: count
  }
}
