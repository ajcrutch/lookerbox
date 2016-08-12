- view: lookerboxdata
  sql_table_name: public.lookerboxdata
  fields:

  - dimension_group: birthday
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.birthday

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - measure: count
    type: count
    drill_fields: [name]

