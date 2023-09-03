view: aggregated_hashtag_search {
  sql_table_name: analytics.aggregated_hashtag_search ;;

  dimension: hashtaged_media_cnt {
    type: number
    sql: ${TABLE}.hashtaged_media_cnt ;;
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
