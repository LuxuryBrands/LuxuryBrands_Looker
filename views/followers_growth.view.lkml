view: followers_growth {
  sql_table_name: analytics.followers_growth ;;

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: followers_count {
    type: number
    sql: ${TABLE}.followers_count ;;
  }
  dimension: tag_name {
    type: string
    sql: ${TABLE}.tag_name ;;
  }
  measure: count {
    type: count
    drill_fields: [tag_name]
  }
}
