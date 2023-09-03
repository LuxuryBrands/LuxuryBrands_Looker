view: brand_information {
  sql_table_name: analytics.brand_information ;;

  dimension: comments_count {
    type: number
    sql: ${TABLE}.comments_count ;;
  }
  dimension: day_of_week {
    type: number
    sql: ${TABLE}.day_of_week ;;
  }
  dimension: engagement {
    type: number
    sql: ${TABLE}.engagement ;;
  }
  dimension: engagement_rate {
    type: number
    sql: ${TABLE}.engagement_rate ;;
  }
  dimension: followers_count {
    type: number
    sql: ${TABLE}.followers_count ;;
  }
  dimension: like_count {
    type: number
    sql: ${TABLE}.like_count ;;
  }
  dimension: media_count {
    type: number
    sql: ${TABLE}.media_count ;;
  }
  dimension: media_id {
    type: string
    sql: ${TABLE}.media_id ;;
  }
  dimension: media_product_type {
    type: string
    sql: ${TABLE}.media_product_type ;;
  }
  dimension: media_type {
    type: string
    sql: ${TABLE}.media_type ;;
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
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [tag_name]
  }
}
