view: product {
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

}
