-- 定时任务分组表
CREATE TABLE IF NOT EXISTS `tpl_quartz_group_t` (
  `tenant_id` VARCHAR(100) NOT NULL COMMENT '租户ID',
  `enterprise_id` VARCHAR(100) NOT NULL COMMENT '企业（商户）ID',
  `QUARTZ_GROUP_ID` VARCHAR(100) NOT NULL COMMENT '任务组ID',
  `QUARTZ_GROUP_CODE` VARCHAR(100) NOT NULL COMMENT '任务组编码',
  `QUARTZ_GROUP_NAME` VARCHAR(200) NOT NULL COMMENT '任务组名称',
  `IS_AUTHORIZED` VARCHAR(10) NOT NULL COMMENT '是否认证',
  `AUTH_KEY` VARCHAR(100) NOT NULL COMMENT '认证KEY',
  `REQUEST_TYPE` VARCHAR(10) NOT NULL COMMENT '请求类型',
  `REQUEST_PATH` VARCHAR(1000) NOT NULL COMMENT '请求地址',
  `REQUEST_PARAMS` VARCHAR(1000) NOT NULL COMMENT '请求参数',
  `REQUEST_HEADER` VARCHAR(1000) NOT NULL COMMENT '请求头参数',
  `CREATED_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(100) NOT NULL DEFAULT 'SYSTEM',
  `UPDATED_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(100) NOT NULL DEFAULT 'SYSTEM',
  PRIMARY KEY (`QUARTZ_GROUP_ID`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;


-- 定时任务表
CREATE TABLE IF NOT EXISTS `tpl_quartz_t` (
  `tenant_id` VARCHAR(100) NOT NULL COMMENT '租户ID',
  `enterprise_id` VARCHAR(100) NOT NULL COMMENT '企业（商户）ID',
  `QUARTZ_GROUP_CODE` VARCHAR(100) NOT NULL COMMENT '任务组编码',
  `QUARTZ_ID` VARCHAR(100) NOT NULL COMMENT '任务ID',
  `QUARTZ_NAME` VARCHAR(500) NOT NULL COMMENT '任务名称',
  `QUARTZ_DESC` VARCHAR(1000) NOT NULL COMMENT '任务描述',
  `QUARTZ_CRON` VARCHAR(200) NOT NULL COMMENT '任务表达式',
  `QUARTZ_CRON_ZH` VARCHAR(200) NOT NULL COMMENT '任务表达式中文',
  `ENABLED_FLAG` VARCHAR(50) NOT NULL COMMENT '任务状态',
  `QUARTZ_STATUS` VARCHAR(50) NOT NULL COMMENT '任务执行状态',
  `NEXT_EXEC_TIME` VARCHAR(100) NOT NULL COMMENT '下次执行时间',
  `AUTH_KEY` VARCHAR(100) NOT NULL COMMENT '认证KEY',
  `REQUEST_TYPE` VARCHAR(10) NOT NULL COMMENT '请求类型',
  `REQUEST_PATH` VARCHAR(1000) NOT NULL COMMENT '请求地址',
  `REQUEST_PARAMS` VARCHAR(1000) NOT NULL COMMENT '请求参数',
  `REQUEST_HEADER` VARCHAR(1000) NOT NULL COMMENT '请求头参数',
  `CREATED_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(100) NOT NULL DEFAULT 'SYSTEM',
  `UPDATED_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(100) NOT NULL DEFAULT 'SYSTEM',
  PRIMARY KEY (`QUARTZ_ID`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;


-- 定时任务执行记录表
CREATE TABLE IF NOT EXISTS `tpl_quartz_job_t` (
  `tenant_id` VARCHAR(100) NOT NULL COMMENT '租户ID',
  `enterprise_id` VARCHAR(100) NOT NULL COMMENT '企业（商户）ID',
  `QUARTZ_ID` VARCHAR(100) NOT NULL COMMENT '任务ID',
  `QUARTZ_NAME` VARCHAR(500) NOT NULL COMMENT '任务名称',
  `JOB_ID` VARCHAR(100) NOT NULL COMMENT '任务执行ID',
  `JOB_STATUS` VARCHAR(50) NOT NULL COMMENT '任务执行状态',
  `RESPONSE_CODE` VARCHAR(1000) NOT NULL COMMENT '请求参数编码',
  `RESPONSE_BODY` VARCHAR(1000) NOT NULL COMMENT '请求响应内容',
  `START_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `END_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY` varchar(100) NOT NULL DEFAULT 'SYSTEM',
  `UPDATED_TIME` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(100) NOT NULL DEFAULT 'SYSTEM',
  PRIMARY KEY (`QUARTZ_ID`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;