view: hashtag_count {
  sql_table_name: analytics.hashtag_count ;;

  dimension: hashtag_frequency {
    type: number
    sql: ${TABLE}.hashtag_frequency ;;
  }
  dimension: related_hashtag {
    type: string
    sql: ${TABLE}.related_hashtag ;;
  }
  measure: count {
    type: count
  }
}
