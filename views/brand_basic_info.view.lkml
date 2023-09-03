view: brand_basic_info {
  sql_table_name: analytics.brand_basic_info ;;

  dimension: followers_count {
    type: number
    sql: ${TABLE}.followers_count ;;
  }
  dimension: profile_picture_url {
    type: string
    sql: ${TABLE}.profile_picture_url ;;
  }
  dimension: tag_name {
    type: string
    sql: ${TABLE}.tag_name ;;
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
