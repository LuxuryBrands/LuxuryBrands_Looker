connection: "aws_redshift"

include: "/views/*.view.lkml"
include: "/dashboards/*.dashboard.lookml"


datagroup: luxurybrands_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: luxurybrands_default_datagroup

explore: aggregated_brand_information {}

explore: aggregated_hashtag_search {}

explore: brand_basic_info {}

explore: brand_information {}

explore: brand_media_post_time {}

explore: followers_growth {}

explore: hashtag_count {}

explore: popularity_calculation {}

explore: popularity_factor {}
