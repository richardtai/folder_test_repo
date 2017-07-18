view: sales {
  sql_table_name: comic_sales.sales ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
# asdfasdf
# Here's ANOTHER commit.
#   asdfasdfsf

  dimension: issues_sold {
    type: number
    sql: ${TABLE}.count ;;
    drill_fields: [date_month]
  }

  dimension_group: date {
    type: time
    timeframes: [time, month, year]
    drill_fields: [title, issue, issues_sold]
    sql: ${TABLE}.date ;;
  }

  dimension: issue {
    type: number
    sql: ${TABLE}.issue ;;
  }

  dimension: price {
    type: number
    value_format: "$#,##0.00"
    sql: ${TABLE}.price ;;
  }

  dimension: publisher {
    type: string
    sql: ${TABLE}.publisher ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: total_issues_sold {
    type: sum
    value_format: "#,##0"
    drill_fields: [title, issue, issues_sold, price, total_revenue]
    sql: ${issues_sold};;
  }


  measure: total_revenue {
    type: sum
    value_format: "$#,##0.00"
    drill_fields: [title, issue, issues_sold, price, total_revenue]
    sql: ${issues_sold} * ${price};;
  }
}
