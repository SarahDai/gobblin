CREATE EXTERNAL TABLE IF NOT EXISTS `default.testRecordWithinRecordWithinRecordDDL` (
  `parentFieldRecord__nestedFieldRecord__superNestedFieldString` string,
  `parentFieldRecord__nestedFieldRecord__superNestedFieldInt` int,
  `parentFieldRecord__nestedFieldString` string,
  `parentFieldRecord__nestedFieldInt` int,
  `parentFieldInt` int)
ROW FORMAT SERDE
  'org.apache.hadoop.hive.ql.io.orc.OrcSerde'
STORED AS INPUTFORMAT
  'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat'
OUTPUTFORMAT
  'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat'
LOCATION
  'file:/user/hive/warehouse/testRecordWithinRecordWithinRecordDDL'
TBLPROPERTIES (
  'orc.compress'='SNAPPY',
  'orc.row.index.stride'='268435456')