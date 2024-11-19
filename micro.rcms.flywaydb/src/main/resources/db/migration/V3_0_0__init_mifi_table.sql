-- 卡商表 tpl_mifi_merchant_t
CREATE TABLE IF NOT EXISTS `tpl_mifi_merchant_t`(
  `merchant_code`    VARCHAR(100) NOT NULL COMMENT '卡商编码',
  `merchant_name`    VARCHAR(100) NOT NULL COMMENT '卡商名称',
  `remark`    VARCHAR(100)  COMMENT '备注',
  `CREATED_TIME` datetime     NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY`   varchar(100) NOT NULL DEFAULT 'UNKNOWN',
  `UPDATED_TIME` datetime     NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY`   varchar(100) NOT NULL DEFAULT 'UNKNOWN',
  PRIMARY KEY (`code`)
  ) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

-- 卡商-运营商 tpl_mifi_merchant_carrier_t
CREATE TABLE IF NOT EXISTS `tpl_mifi_merchant_carrier_t`(
  `merchant_code`    VARCHAR(100) NOT NULL COMMENT '卡商编码',
  `carrier_code`    VARCHAR(100) NOT NULL COMMENT '运营商编码',
  `disable_area`    VARCHAR(100)  COMMENT '禁用区域',
  `remark`    VARCHAR(100)  COMMENT '备注',
  `CREATED_TIME` datetime     NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CREATED_BY`   varchar(100) NOT NULL DEFAULT 'UNKNOWN',
  `UPDATED_TIME` datetime     NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UPDATED_BY`   varchar(100) NOT NULL DEFAULT 'UNKNOWN',
  PRIMARY KEY (`code`)
  ) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
