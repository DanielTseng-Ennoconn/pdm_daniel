view: approval_rate_information {
  sql_table_name: dbo.ApprovalRate_Information ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }
  dimension: module {
    description: "EE / SYSTEM"
    type: string
    sql: ${TABLE}.Module ;;
  }
  dimension: stage {
    label: "Stage"
    description: "NPI / RESPIN / NEWSKU"
    type: string
    sql: ${TABLE}.Stage ;;
  }
  dimension: bomoid {
    hidden: yes
    type: string
    sql: ${TABLE}.BOMOid ;;
  }
  dimension: bompn {
    label: "BOM料號"
    type: string
    sql: ${TABLE}.BOMPN ;;
  }
  dimension: bomphase {
    label: "Phase"
    type: string
    sql: ${TABLE}.BOMPhase ;;
  }
  dimension: bomproduct {
    label: "產品"
    type: string
    sql: ${TABLE}.BOMProduct ;;
  }
  dimension: bom_creator_role {
    hidden: yes
    type: string
    sql: ${TABLE}.BOM_Creator_Role ;;
  }
  dimension: bom_creator {
    label: "bom建立者"
    type: string
    sql: ${TABLE}.BOM_Creator ;;
  }
  dimension: description {
    label: "料號規格"
    type: string
    sql: ${TABLE}.Description ;;
  }
  dimension: part_type {
    label: "料號類型"
    type: string
    sql: ${TABLE}.PartType ;;
  }
  dimension: part_oid {
    label: "料號ID"
    hidden: yes
    type: string
    sql: ${TABLE}.PartOid ;;
  }
  dimension: pn {
    label: "料號"
    type: string
    sql: ${TABLE}.PN ;;
  }
  dimension: mfg {
    label: "製造商"
    type: string
    sql: ${TABLE}.MFG ;;
  }
  dimension: mfgpn {
    label: "製造商料號"
    type: string
    sql: ${TABLE}.MFGPN ;;
  }
  dimension: owner {
    label: "Owner"
    type: string
    sql: ${TABLE}.Owner ;;
  }
  dimension: ver {
    label: "料號版本"
    type: string
    sql: ${TABLE}.Ver ;;
  }
  dimension: approval_status {
    label: "承認狀態"
    type: string
    sql: ${TABLE}.ApprovalStatus ;;
  }
  dimension: function_type {
    label: "資料來源種類"
    type: string
    sql: ${TABLE}.FunctionType ;;
  }
  dimension: ecnno {
    label: "ECN No"
    type: string
    sql: ${TABLE}.ECNNo ;;
  }
  dimension_group: issued {
    label: "ECN發行日期"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.IssuedDate ;;
  }
  dimension: werk {
    label: "SAP_工廠"
    type: string
    sql: ${TABLE}.WERK ;;
  }
  dimension: vbeln {
    label: "訂單號碼"
    type: string
    sql: ${TABLE}.VBELN ;;
  }
  dimension_group: wadat_ist {
    label: "SAP_最新交易日期"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.WADAT_IST ;;
  }
  dimension_group: close {
    label: "Close Date"
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CloseDate ;;
  }
  dimension_group: system {
    label: "系統日期"
    hidden: yes
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.SystemDate ;;
  }
  dimension: status {
    label: "追蹤狀態"
    type: string
    sql: ${TABLE}.Status ;;
  }
  measure: approval_rate_with_pcb {
    label: "承認率(含PCB)"
    type: number
    sql: ${TABLE}.ApprovalRateWithPCB ;;
  }
  measure: approval_rate {
    label: "承認率"
    type: number
    sql: ${TABLE}.ApprovalRate ;;
  }
  measure: datasheet_rate {
    label: "Datasheet %"
    type: number
    sql: ${TABLE}.DataSheetRate ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
