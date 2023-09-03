- dashboard: luxurybrands_part2crossfiltering
  title: LuxuryBrands_part2(crossfiltering)
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: uwRSxHE1pMfNDGkNhgg7jm
  elements:
  - title: Instagram Post Upload Time Distribution
    name: Instagram Post Upload Time Distribution
    model: luxurybrands_looker
    explore: brand_information
    type: looker_grid
    fields: [brand_information.day_of_week, brand_information.post_day_of_week, _,
      brand_information.post_time]
    pivots: [brand_information.post_time]
    filters:
      brand_information.post_time: ">4"
    sorts: [brand_information.post_time, brand_information.day_of_week]
    limit: 5000
    column_limit: 5000
    dynamic_fields:
    - category: measure
      expression: ''
      label: "-"
      based_on: brand_information.media_id
      _kind_hint: measure
      measure: _
      type: count_distinct
      _type_hint: number
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: true
    hide_row_totals: false
    size_to_fit: true
    table_theme: transparent
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '20'
    rows_font_size: '20'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      brand_information.post_day_of_week: 요일
      brand_information.post_time: 시간
    series_column_widths:
      brand_information.post_day_of_week: 140
    series_cell_visualizations:
      _:
        is_active: false
        value_display: true
      brand_information.post_time:
        is_active: false
        value_display: false
    series_text_format:
      brand_information.post_time:
        fg_color: "#6C7787"
        align: center
      brand_information.post_day_of_week:
        align: left
        fg_color: "#d62976"
      _:
        align: center
        fg_color: "#fa7e1e"
    limit_displayed_rows_values:
      show_hide: show
      first_last: last
      num_rows: '10'
    header_font_color: "#000000"
    header_background_color: ''
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#FCCF41",
        font_color: !!null '', color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          custom: {id: 1bdd3e04-367d-e494-1965-e8694db7dac5, label: Custom, type: continuous,
            stops: [{color: "#fce6f4", offset: 0}, {color: "#e9cced", offset: 25},
              {color: "#d6b8e6", offset: 50}, {color: "#b19cd9", offset: 75}, {color: "#6d469c",
                offset: 100}]}, options: {steps: 10, stepped: false, reverse: false,
            mirror: false, constraints: {mid: {type: average}}}}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: 'null', value: !!null '',
        background_color: '', font_color: "#ecf2f2", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    truncate_column_names: false
    hidden_pivots:
      '0':
        measure_names: []
    defaults_version: 1
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    hidden_fields: [brand_information.day_of_week]
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    show_null_points: true
    interpolation: linear
    hidden_points_if_no: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen: {}
    row: 20
    col: 1
    width: 22
    height: 8
  - title: Untitled
    name: Untitled
    model: luxurybrands_looker
    explore: brand_information
    type: looker_wordcloud
    fields: [brand_information.tag_name, max_of_followers_count]
    sorts: [max_of_followers_count desc]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - measure: sum_of_followers_count
      based_on: brand_information.followers_count
      expression: ''
      label: Sum of Followers Count
      type: sum
      _kind_hint: measure
      _type_hint: number
    - measure: max_of_followers_count
      based_on: brand_information.followers_count
      expression: ''
      label: Max of Followers Count
      type: max
      _kind_hint: measure
      _type_hint: number
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
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
    show_null_points: true
    interpolation: linear
    value_labels: legend
    label_type: labPer
    hidden_fields: []
    hidden_points_if_no: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    font_size: 12
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
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map: usa
    map_projection: ''
    groupBars: true
    labelSize: 10pt
    showLegend: true
    up_color: false
    down_color: false
    total_color: false
    hidden_pivots: {}
    title_hidden: true
    listen: {}
    row: 0
    col: 1
    width: 22
    height: 4
  - title: Most Frequent Post Types
    name: Most Frequent Post Types
    model: luxurybrands_looker
    explore: brand_information
    type: looker_pie
    fields: [brand_information.media_type, count_of_media_id]
    sorts: [count_of_media_id desc 0]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - measure: count_of_media_id
      based_on: brand_information.media_id
      expression: ''
      label: Count of Media ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    value_labels: legend
    label_type: labPer
    inner_radius: 60
    series_colors:
      CAROUSEL_ALBUM: "#4f5bd5"
      VIDEO: "#fa7e1e"
      IMAGE: "#feda75"
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
    hidden_pivots: {}
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    hidden_points_if_no: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen: {}
    row: 4
    col: 3
    width: 7
    height: 6
  - title: Post Engagement Rate
    name: Post Engagement Rate
    model: luxurybrands_looker
    explore: brand_information
    type: looker_scatter
    fields: [brand_information.ts_date, sum_of_engagement_rate, brand_information.tag_name]
    pivots: [brand_information.tag_name]
    fill_fields: [brand_information.ts_date]
    filters:
      brand_information.tag_name: ''
      brand_information.ts_date: after 2023/07/25
      sum_of_engagement_rate: "[0, 1]"
    sorts: [brand_information.tag_name, brand_information.ts_date]
    limit: 5000
    column_limit: 5000
    dynamic_fields:
    - measure: sum_of_engagement_rate
      based_on: brand_information.engagement_rate
      expression: ''
      label: Sum of Engagement Rate
      type: sum
      _kind_hint: measure
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    y_axes: [{label: Average Engagement(%), orientation: left, series: [{axisId: sum_of_engagement_rate,
            id: celine - sum_of_engagement_rate, name: celine}, {axisId: sum_of_engagement_rate,
            id: chanel - sum_of_engagement_rate, name: chanel}, {axisId: sum_of_engagement_rate,
            id: dior - sum_of_engagement_rate, name: dior}, {axisId: sum_of_engagement_rate,
            id: fendi - sum_of_engagement_rate, name: fendi}, {axisId: sum_of_engagement_rate,
            id: gucci - sum_of_engagement_rate, name: gucci}, {axisId: sum_of_engagement_rate,
            id: hermes - sum_of_engagement_rate, name: hermes}, {axisId: sum_of_engagement_rate,
            id: louisvuitton - sum_of_engagement_rate, name: louisvuitton}, {axisId: sum_of_engagement_rate,
            id: miumiu - sum_of_engagement_rate, name: miumiu}, {axisId: sum_of_engagement_rate,
            id: prada - sum_of_engagement_rate, name: prada}, {axisId: sum_of_engagement_rate,
            id: valentino - sum_of_engagement_rate, name: valentino}, {axisId: sum_of_engagement_rate,
            id: ysl - sum_of_engagement_rate, name: ysl}], showLabels: true, showValues: true,
        maxValue: 1.2, valueFormat: '', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: log}]
    x_axis_label: ''
    size_by_field: sum_of_engagement_rate
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: ''
    hide_legend: false
    font_size: '12'
    series_colors: {}
    trend_lines: []
    swap_axes: false
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
    custom_value_label_column: ''
    hidden_pivots: {}
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
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map: auto
    map_projection: ''
    quantize_colors: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    listen: {}
    row: 28
    col: 1
    width: 22
    height: 10
  - title: Most Engaging Post Types
    name: Most Engaging Post Types
    model: luxurybrands_looker
    explore: brand_information
    type: looker_column
    fields: [brand_information.media_type, sum_of_engagement]
    pivots: [brand_information.media_type]
    sorts: [brand_information.media_type, sum_of_engagement desc 0]
    limit: 5000
    column_limit: 5000
    dynamic_fields:
    - measure: count_of_media_id
      based_on: brand_information.media_id
      expression: ''
      label: Count of Media ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - measure: sum_of_engagement
      based_on: brand_information.engagement
      expression: ''
      label: Sum of Engagement
      type: sum
      _kind_hint: measure
      _type_hint: number
    - category: dimension
      description: ''
      label: brands
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: brands
      args:
      - brand_information.tag_name
      - - label: brands
          filter: ''
      -
      _kind_hint: dimension
      _type_hint: string
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Total Engagement, orientation: left, series: [{axisId: sum_of_engagement,
            id: CAROUSEL_ALBUM - sum_of_engagement, name: CAROUSEL_ALBUM}, {axisId: sum_of_engagement,
            id: IMAGE - sum_of_engagement, name: IMAGE}, {axisId: sum_of_engagement,
            id: VIDEO - sum_of_engagement, name: VIDEO}], showLabels: true, showValues: true,
        valueFormat: '', unpinAxis: false, tickDensity: default, tickDensityCustom: 15,
        type: linear}]
    x_axis_label: ''
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      CAROUSEL_ALBUM - sum_of_engagement: "#4f5bd5"
      IMAGE - sum_of_engagement: "#feda75"
      VIDEO - sum_of_engagement: "#fa7e1e"
    series_labels:
      sum_of_engagement: Total Engagement
    reference_lines: []
    trend_lines: []
    defaults_version: 1
    hidden_pivots: {}
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
    hidden_fields:
    listen: {}
    row: 4
    col: 10
    width: 7
    height: 6
  - title: Brand Post Upload Activity
    name: Brand Post Upload Activity
    model: luxurybrands_looker
    explore: brand_information
    type: looker_column
    fields: [brand_information.ts_date, brand_information.tag_name, count_of_media_id]
    pivots: [brand_information.tag_name]
    fill_fields: [brand_information.ts_date]
    filters:
      brand_information.tag_name: ''
      brand_information.ts_date: after 2023/07/25
    sorts: [brand_information.tag_name, brand_information.ts_date desc]
    limit: 5000
    column_limit: 5000
    dynamic_fields:
    - measure: count_of_media_id
      based_on: brand_information.media_id
      expression: ''
      label: Count of Media ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: true
    totals_color: "#808080"
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    y_axes: [{label: Uploaded Media Count, orientation: left, series: [{axisId: celine
              - count_of_media_id, id: celine - count_of_media_id, name: celine},
          {axisId: chanel - count_of_media_id, id: chanel - count_of_media_id, name: chanel},
          {axisId: dior - count_of_media_id, id: dior - count_of_media_id, name: dior},
          {axisId: fendi - count_of_media_id, id: fendi - count_of_media_id, name: fendi},
          {axisId: gucci - count_of_media_id, id: gucci - count_of_media_id, name: gucci},
          {axisId: hermes - count_of_media_id, id: hermes - count_of_media_id, name: hermes},
          {axisId: louisvuitton - count_of_media_id, id: louisvuitton - count_of_media_id,
            name: louisvuitton}, {axisId: miumiu - count_of_media_id, id: miumiu -
              count_of_media_id, name: miumiu}, {axisId: prada - count_of_media_id,
            id: prada - count_of_media_id, name: prada}, {axisId: valentino - count_of_media_id,
            id: valentino - count_of_media_id, name: valentino}, {axisId: ysl - count_of_media_id,
            id: ysl - count_of_media_id, name: ysl}], showLabels: true, showValues: true,
        minValue: !!null '', valueFormat: '', unpinAxis: false, tickDensity: custom,
        tickDensityCustom: 8, type: linear}]
    x_axis_label: Timeline
    x_axis_zoom: true
    y_axis_zoom: false
    hide_legend: false
    font_size: '12'
    series_colors: {}
    reference_lines: []
    trend_lines: []
    column_group_spacing_ratio: 0.4
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 38
    col: 1
    width: 22
    height: 11
  - title: Untitled (Copy)
    name: Untitled (Copy)
    model: luxurybrands_looker
    explore: brand_information
    type: single_value
    fields: [brand_information.followers_count]
    filters:
      brand_information.tag_name: ''
    sorts: [brand_information.followers_count]
    limit: 5000
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
    custom_color: ''
    single_value_title: Followers
    comparison_label: ''
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#962fbf",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: a8099e89-1c44-43dd-a3b4-7b76fdc3e338}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    hidden_fields: []
    listen: {}
    row: 7
    col: 1
    width: 2
    height: 3
  - title: BRAND INFORMATION
    name: BRAND INFORMATION
    model: luxurybrands_looker
    explore: brand_information
    type: looker_grid
    fields: [brand_information.tag_name, followers, posts, calculation, calculation_1,
      calculation_2]
    filters:
      calculation: ''
    sorts: [followers desc]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Average of Engagement Rate
      based_on: brand_information.engagement_rate
      _kind_hint: measure
      measure: average_of_engagement_rate
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: Average of Like Count
      based_on: brand_information.like_count
      _kind_hint: measure
      measure: average_of_like_count
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: Average of Comments Count
      based_on: brand_information.comments_count
      _kind_hint: measure
      measure: average_of_comments_count
      type: sum
      _type_hint: number
    - measure: list_of_tag_name
      based_on: brand_information.tag_name
      expression: ''
      label: List of Tag Name
      type: list
      _kind_hint: measure
      _type_hint: list
    - measure: count_of_tag_name
      based_on: brand_information.tag_name
      expression: ''
      label: Count of Tag Name
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    - category: measure
      expression: ''
      label: 평균 좋아요 수
      based_on: brand_information.like_count
      _kind_hint: measure
      measure: calculation
      type: average
      _type_hint: number
    - category: measure
      expression: ''
      label: Followers
      based_on: brand_information.followers_count
      _kind_hint: measure
      measure: followers
      type: average
      _type_hint: number
    - category: measure
      expression: ''
      label: 평균 댓글 수
      based_on: brand_information.comments_count
      _kind_hint: measure
      measure: calculation_1
      type: average
      _type_hint: number
    - category: measure
      expression: ''
      label: Posts
      based_on: brand_information.media_count
      _kind_hint: measure
      measure: posts
      type: average
      _type_hint: number
    - category: measure
      expression: ''
      label: 평균 참여율(%)
      based_on: brand_information.engagement_rate
      _kind_hint: measure
      measure: calculation_2
      type: average
      _type_hint: number
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: center
    header_font_size: '20'
    rows_font_size: '20'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", brand_information.tag_name, count_of_followers_count_1,
      count_of_media_count, sum_of_like_count, sum_of_comments_count]
    show_totals: false
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 30
    series_labels:
      brand_information.tag_name: 브랜드 명
      followers: 팔로우 수
      posts: 미디어 수
    series_column_widths:
      brand_information.tag_name: 140
    series_cell_visualizations:
      followers:
        is_active: false
        value_display: true
        palette:
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e
          collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      posts:
        is_active: false
        palette:
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e
          collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      calculation:
        is_active: false
        palette:
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e
          collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
    series_text_format:
      brand_information.tag_name:
        align: right
        bold: true
        fg_color: "#962fbf"
      followers:
        align: center
      posts:
        align: center
      calculation:
        align: center
      calculation_1:
        align: center
      calculation_2:
        align: center
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    header_font_color: ''
    header_background_color: ''
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#FCCF41",
        font_color: "#f56776", color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          custom: {id: c5d79d10-0281-7686-4295-510bd95fe332, label: Custom, type: continuous,
            stops: [{color: "#ffffff", offset: 0}, {color: "#fce6f4", offset: 50},
              {color: "#e9cced", offset: 100}]}, options: {steps: 10, constraints: {
              min: {type: minimum}, mid: {type: average}, max: {type: maximum}}, mirror: false,
            reverse: false, stepped: false}}, bold: false, italic: false, strikethrough: false,
        fields: [followers]}, {type: along a scale..., value: !!null '', background_color: "#FCCF41",
        font_color: !!null '', color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          custom: {id: d1feb71b-1cb7-8022-908f-7cbbae7b3e44, label: Custom, type: continuous,
            stops: [{color: "#ffffff", offset: 0}, {color: "#fce6f4", offset: 50},
              {color: "#e9cced", offset: 100}]}, options: {steps: 2, reverse: false,
            constraints: {mid: {type: average}}, stepped: false}}, bold: false, italic: false,
        strikethrough: false, fields: [posts]}, {type: along a scale..., value: !!null '',
        background_color: "#FCCF41", font_color: !!null '', color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          custom: {id: 3e692dcd-76c2-aa3e-b73d-0bff22de9fc6, label: Custom, type: continuous,
            stops: [{color: "#ffffff", offset: 0}, {color: "#fce6f4", offset: 50},
              {color: "#e9cced", offset: 100}]}, options: {steps: 5, reverse: false,
            mirror: false, constraints: {min: {type: minimum}, mid: {type: average}},
            stepped: false}}, bold: false, italic: false, strikethrough: false, fields: [
          calculation]}, {type: along a scale..., value: !!null '', background_color: "#FCCF41",
        font_color: !!null '', color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          custom: {id: e8741a0c-c531-9fc8-7b8c-0cad3318331b, label: Custom, type: continuous,
            stops: [{color: "#ffffff", offset: 0}, {color: "#fce6f4", offset: 50},
              {color: "#e9cced", offset: 100}]}, options: {steps: 5, reverse: false,
            constraints: {mid: {type: average}}}}, bold: false, italic: false, strikethrough: false,
        fields: [calculation_1]}, {type: along a scale..., value: !!null '', background_color: "#FCCF41",
        font_color: !!null '', color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          custom: {id: 81f76a9d-4408-971b-9381-80ace82e287f, label: Custom, type: continuous,
            stops: [{color: "#ffffff", offset: 0}, {color: "#fce6f4", offset: 50},
              {color: "#e9cced", offset: 100}]}, options: {steps: 5, reverse: false,
            constraints: {mid: {type: average}}}}, bold: false, italic: false, strikethrough: false,
        fields: [calculation_2]}]
    series_value_format:
      posts: ''
      calculation: '0'
      calculation_1: '0'
      calculation_2: '0.00'
    defaults_version: 1
    hidden_pivots: {}
    value_labels: legend
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 10
    col: 1
    width: 22
    height: 10
  - title: Untitled
    name: Untitled (2)
    model: luxurybrands_looker
    explore: brand_information
    type: single_value
    fields: [posts, brand_information.tag_name]
    sorts: [posts desc 0]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: POSTS
      based_on: brand_information.media_count
      _kind_hint: measure
      measure: posts
      type: sum
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    single_value_title: POSTS
    comparison_label: POSTS
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#d62976",
        font_color: !!null '', color_application: {collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a,
          palette_id: b6d19921-b2be-4bb1-88be-73eb21d3861e}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    listen: {}
    row: 4
    col: 1
    width: 2
    height: 3
  - title: Most Frequency Video Post Types
    name: Most Frequency Video Post Types
    model: luxurybrands_looker
    explore: brand_information
    type: looker_pie
    fields: [brand_information.media_product_type, count_of_media_id]
    sorts: [count_of_media_id desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - measure: count_of_media_id
      based_on: brand_information.media_id
      expression: ''
      label: Count of Media ID
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    value_labels: legend
    label_type: labPer
    series_colors:
      REELS: "#962fbf"
      FEED: "#d62976"
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
    row: 4
    col: 17
    width: 6
    height: 6
