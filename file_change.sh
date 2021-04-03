#!/bin/sh


#create sequence
# sed -i '' -e 's/\///g' *.sql
# sed -i '' -e "s/NOMINVALUE/NO MINVALUE/" *.sql
# sed -i '' -e "s/NOCYCLE/NO CYCLE/" *.sql
# sed -i '' -e "s/NOORDER//" *.sql
#sed -i '' -e "s/NCLOB/text/" *.sql

# バックスラッシュを削除
sed -i '' -e 's/\\//' *.sql

# 置換
#sed -i '' -e "s/NUMBER(/numeric(/" *.sql
#sed -i '' -e "s/NVARCHAR2(/varchar(/" *.sql
#sed -i '' -e "s/DATE NOT NULL/timestamp NOT NULL/" *.sql
#sed -i '' -e "s/ DATE,/timestamp,/" *.sql
#sed -i '' -e "s/USING INDEX//" *.sql
#sed -i '' -e "s/TABLESPACE TSP_IDX//" *.sql
#sed -i '' -e "s/TABLESPACE TSP_TBL//" *.sql
#sed -i '' -e "s/(ORM_ROWID)/(ORM_ROWID);/" *.sql
#sed -i '' -e "s/(MAIL_TYPE, MAIL_SEND_STATUS)/(MAIL_TYPE, MAIL_SEND_STATUS);/" *.sql
#sed -i '' -e "s/(CAMPAIGN_START_DATE, CAMPAIGN_END_DATE)/(CAMPAIGN_START_DATE, CAMPAIGN_END_DATE);/" *.sql
#sed -i '' -e "s/(CAMPAIGN_NAME)/(CAMPAIGN_NAME);/" *.sql
#sed -i '' -e "s/(PARENT_CATEGORY_CODE)/(PARENT_CATEGORY_CODE);/" *.sql
#sed -i '' -e "s/(SHOP_CODE, COMMODITY_CODE, CATEGORY_CODE, CATEGORY_SEARCH_PATH)/(SHOP_CODE, COMMODITY_CODE, CATEGORY_CODE, CATEGORY_SEARCH_PATH);/" *.sql
#sed -i '' -e "s/(MAIL_TYPE, MAIL_SEND_STATUS)/(MAIL_TYPE, MAIL_SEND_STATUS);/" *.sql
#sed -i '' -e "s/(MAIL_TYPE, MAIL_SEND_STATUS)/(MAIL_TYPE, MAIL_SEND_STATUS);/" *.sql
#sed -i '' -e "s/(MAIL_TYPE, MAIL_SEND_STATUS)/(MAIL_TYPE, MAIL_SEND_STATUS);/" *.sql
#sed -i '' -e "s/(MAIL_TYPE, MAIL_SEND_STATUS)/(MAIL_TYPE, MAIL_SEND_STATUS);/" *.sql
#sed -i '' -e "s/(MAIL_TYPE, MAIL_SEND_STATUS)/(MAIL_TYPE, MAIL_SEND_STATUS);/" *.sql
#sed -i '' -e "s/(MAIL_TYPE, MAIL_SEND_STATUS)/(MAIL_TYPE, MAIL_SEND_STATUS);/" *.sql
#sed -i '' -e "s/(MAIL_TYPE, MAIL_SEND_STATUS)/(MAIL_TYPE, MAIL_SEND_STATUS);/" *.sql
#sed -i '' -e "s/(MAIL_TYPE, MAIL_SEND_STATUS)/(MAIL_TYPE, MAIL_SEND_STATUS);/" *.sql
#sed -i '' -e "s/(MAIL_TYPE, MAIL_SEND_STATUS)/(MAIL_TYPE, MAIL_SEND_STATUS);/" *.sql

# COMMNT ON という文字列がある行の末尾に;を追加する
#sed -i '' -e "/^COMMENT ON/s/\$/;/" *.sql
# 空白行以外の末尾に;を追加する
#sed -i '' -e "/^./s/\$/;/" *.sql


3zr0y2nkhjsg1
statement.setInt(++index, 0);
statement.registerOutParameter(index, Types.INTEGER);