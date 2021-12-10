view: order_items {
  derived_table: {
    sql: SELECT * FROM ${order_items.SQL_TABLE_NAME} LIMIT 10
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: delivered_at {
    type: date
    datatype: date
    sql: ${TABLE}.delivered_at ;;
  }

  dimension: shipped_at {
    type: date
    datatype: date
    sql: ${TABLE}.shipped_at ;;
  }

  dimension_group: created_at {
    type: time
    sql: ${TABLE}.created_at ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: inventory_item_id {
    type: number
    sql: ${TABLE}.inventory_item_id ;;
  }

  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension_group: returned_at {
    type: time
    sql: ${TABLE}.returned_at ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  set: detail {
    fields: [
      delivered_at,
      shipped_at,
      created_at_time,
      status,
      inventory_item_id,
      sale_price,
      user_id,
      order_id,
      returned_at_time,
      id
    ]
  }
}
