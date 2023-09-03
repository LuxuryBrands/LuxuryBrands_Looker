view: popularity_factor {
  sql_table_name: analytics.popularity_factor ;;

  dimension: avg_engagement_rate {
    type: number
    sql: ${TABLE}.avg_engagement_rate ;;
  }
  dimension: followers_count {
    type: number
    sql: ${TABLE}.followers_count ;;
  }
  dimension: hashtaged_media_cnt {
    type: number
    sql: ${TABLE}.hashtaged_media_cnt ;;
  }
  dimension: rank_avg_engagement_rate {
    type: number
    sql: ${TABLE}.rank_avg_engagement_rate ;;
  }
  dimension: rank_followers_count {
    type: number
    sql: ${TABLE}.rank_followers_count ;;
  }
  dimension: rank_hashtaged_media_cnt {
    type: number
    sql: ${TABLE}.rank_hashtaged_media_cnt ;;
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
