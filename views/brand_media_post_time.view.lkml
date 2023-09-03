view: brand_media_post_time {
  sql_table_name: analytics.brand_media_post_time ;;

  dimension: day_of_week {
    type: number
    sql: ${TABLE}.day_of_week ;;
  }
  dimension: post_day_of_week {
    type: string
    sql: ${TABLE}.post_day_of_week ;;
  }
  dimension: post_time {
    type: number
    sql: ${TABLE}.post_time ;;
  }
  dimension: tag_name {
    type: string
    sql: ${TABLE}.tag_name ;;
  }
  dimension_group: ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.ts ;;
  }
  measure: count {
    type: count
    drill_fields: [tag_name]
  }
}
