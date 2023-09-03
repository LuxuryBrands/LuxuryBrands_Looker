- dashboard: luxurybrands_part1
  title: LuxuryBrands_part1
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: 2CMkr0VeL9cYqvRfZxyxVR
  elements:
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"p","children":[{"text":"이제 곧 취준생을 벗어나 직장인이 될텐데, 첫 명품 입문을
      어느 브랜드로 하면 좋을까?","bold":true}],"id":1693474974939},{"type":"p","children":[{"text":"Instagram
      Graph API를 통해 인지도 높은 명품 브랜드의 인스타그램 내 인기도 분석 프로젝트!","bold":true}],"id":1693474974939}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 24
    height: 3
  - title: ssss
    name: ssss
    model: luxurybrands_looker
    explore: popularity_calculation
    type: looker_funnel
    fields: [popularity_calculation.tag_name, sum_of_popularity_rank]
    filters:
      popularity_calculation.popularity_rank: ''
    sorts: [sum_of_popularity_rank]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_popularity_rank
      based_on: popularity_calculation.popularity_rank
      expression: ''
      label: Sum of Popularity Rank
      type: sum
      _kind_hint: measure
      _type_hint: number
    leftAxisLabelVisible: true
    leftAxisLabel: ''
    rightAxisLabelVisible: true
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: inline
    percentType: prior
    percentPosition: hidden
    valuePosition: Hidden
    labelColorEnabled: true
    labelColor: "#ffffff"
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      custom:
        id: 8fb0ae98-9491-e7c8-1d0c-540c24dd4b5a
        label: Custom
        type: continuous
        stops:
        - color: "#feda75"
          offset: 0
        - color: "#fa7e1e"
          offset: 25
        - color: "#d62976"
          offset: 50
        - color: "#962fbf"
          offset: 75
        - color: "#4f5bd5"
          offset: 100
      options:
        steps: 5
        reverse: true
    isStepped: true
    labelScale: '0.7'
    labelOverlap: false
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    note_state: collapsed
    note_display: above
    title_hidden: true
    listen: {}
    row: 3
    col: 0
    width: 10
    height: 11
  - title: Untitled
    name: Untitled
    model: luxurybrands_looker
    explore: hashtag_count
    type: looker_wordcloud
    fields: [hashtag_count.related_hashtag, sum_of_hashtag_frequency]
    filters:
      sum_of_hashtag_frequency: "<23000"
    sorts: [sum_of_hashtag_frequency desc]
    limit: 100
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_hashtag_frequency
      based_on: hashtag_count.hashtag_frequency
      expression: ''
      label: Sum of Hashtag Frequency
      type: sum
      _kind_hint: measure
      _type_hint: number
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
        reverse: false
    rotation: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    title_hidden: true
    listen: {}
    row: 14
    col: 0
    width: 23
    height: 5
  - title: 지수 별 랭킹
    name: 지수 별 랭킹
    model: luxurybrands_looker
    explore: popularity_factor
    type: looker_scatter
    fields: [popularity_factor.tag_name, sum_of_rank_avg_engagement_rate, sum_of_rank_followers_count,
      sum_of_rank_hashtaged_media_cnt]
    sorts: [popularity_factor.tag_name]
    limit: 100
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_rank_avg_engagement_rate
      based_on: popularity_factor.rank_avg_engagement_rate
      expression: ''
      label: Sum of Rank Avg Engagement Rate
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_rank_followers_count
      based_on: popularity_factor.rank_followers_count
      expression: ''
      label: Sum of Rank Followers Count
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_rank_hashtaged_media_cnt
      based_on: popularity_factor.rank_hashtaged_media_cnt
      expression: ''
      label: Sum of Rank Hashtaged Media Cnt
      type: sum
      _kind_hint: measure
      _type_hint: number
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: true
    y_axis_reversed: true
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    color_application: undefined
    y_axes: [{label: Ranking, orientation: left, series: [{axisId: sum_of_rank_avg_engagement_rate,
            id: sum_of_rank_avg_engagement_rate, name: 참여율 지수}, {axisId: sum_of_rank_followers_count,
            id: sum_of_rank_followers_count, name: 팔로워 지수}, {axisId: sum_of_rank_hashtaged_media_cnt,
            id: sum_of_rank_hashtaged_media_cnt, name: 커뮤니티 지수}], showLabels: true,
        showValues: false, unpinAxis: true, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: 브랜드 별 지수 랭킹
    size_by_field: ''
    x_axis_zoom: true
    y_axis_zoom: false
    font_size: '12'
    series_colors:
      sum_of_rank_avg_engagement_rate: "#feda75"
      sum_of_rank_followers_count: "#fa7e1e"
      sum_of_rank_hashtaged_media_cnt: "#4f5bd5"
    series_labels:
      sum_of_rank_avg_engagement_rate: 미디어 지수
      sum_of_rank_followers_count: 팔로워 지수
      sum_of_rank_hashtaged_media_cnt: 커뮤니티 지수
    series_point_styles:
      sum_of_rank_hashtaged_media_cnt: diamond
      sum_of_rank_followers_count: diamond
      sum_of_rank_avg_engagement_rate: diamond
    reference_lines: []
    trend_lines: []
    cluster_points: false
    quadrants_enabled: false
    quadrant_properties:
      '0':
        color: ''
        label: Quadrant 1
      '1':
        color: ''
        label: Quadrant 2
      '2':
        color: ''
        label: Quadrant 3
      '3':
        color: ''
        label: Quadrant 4
    custom_quadrant_point_x: 5
    custom_quadrant_point_y: 5
    custom_x_column: ''
    custom_y_column: ''
    custom_value_label_column: default
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    interpolation: linear
    value_labels: legend
    label_type: labPer
    hidden_fields: []
    hidden_points_if_no: []
    hidden_pivots: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    map: usa
    map_projection: ''
    truncate_column_names: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    up_color: false
    down_color: false
    total_color: false
    listen: {}
    row: 3
    col: 10
    width: 13
    height: 11
