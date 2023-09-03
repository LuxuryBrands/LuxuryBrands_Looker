view: aggregated_brand_information {
  sql_table_name: analytics.aggregated_brand_information ;;

  dimension: avg_engagement_rate {
    type: number
    sql: ${TABLE}.avg_engagement_rate ;;
  }
  dimension: brand_media_cnt {
    type: number
    sql: ${TABLE}.brand_media_cnt ;;
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
