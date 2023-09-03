view: popularity_calculation {
  sql_table_name: analytics.popularity_calculation ;;

  dimension: popularity_rank {
    type: number
    sql: ${TABLE}.popularity_rank ;;
  }
  dimension: sum_rank {
    type: number
    sql: ${TABLE}.sum_rank ;;
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
