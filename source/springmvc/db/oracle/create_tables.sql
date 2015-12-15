-- Create table
create table STORE_USER
(
  user_id     VARCHAR2(16) not null,
  username    VARCHAR2(32),
  password    VARCHAR2(32),
  nickname    VARCHAR2(128),
  create_time DATE,
  update_time DATE
)
tablespace UUC
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table STORE_USER
  is '�û���';
-- Add comments to the columns 
comment on column STORE_USER.user_id
  is '�û�id';
comment on column STORE_USER.username
  is '�û���';
comment on column STORE_USER.password
  is '����';
comment on column STORE_USER.nickname
  is '�ǳ�';
comment on column STORE_USER.create_time
  is '����ʱ��';
comment on column STORE_USER.update_time
  is '�޸�ʱ��';


-- Create table
create table STORE_PRICE_CHANGE_LOG
(
  price_change_log_id VARCHAR2(16) not null,
  goods_id            VARCHAR2(16),
  price               NUMBER,
  create_time         DATE,
  update_time         DATE,
  remark              VARCHAR2(1024)
)
tablespace UUC
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table STORE_PRICE_CHANGE_LOG
  is '�۸�䶯��¼��';
-- Add comments to the columns 
comment on column STORE_PRICE_CHANGE_LOG.price_change_log_id
  is '�۸�䶯��¼id';
comment on column STORE_PRICE_CHANGE_LOG.goods_id
  is '��Ʒid';
comment on column STORE_PRICE_CHANGE_LOG.price
  is '�۸�';
comment on column STORE_PRICE_CHANGE_LOG.create_time
  is '����ʱ��';
comment on column STORE_PRICE_CHANGE_LOG.update_time
  is '�޸�ʱ��';
comment on column STORE_PRICE_CHANGE_LOG.remark
  is '��ע';


-- Create table
create table STORE_INCOME_LOG
(
  income_log_id   VARCHAR2(16) not null,
  goods_id        VARCHAR2(16),
  income_time     DATE,
  income_quantity NUMBER,
  quantity_unit   VARCHAR2(16),
  product_time    DATE,
  expire_time     DATE,
  suplier_id      VARCHAR2(16),
  create_time     DATE,
  update_time     DATE,
  remark          VARCHAR2(1024)
)
tablespace UUC
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table STORE_INCOME_LOG
  is '������¼��';
-- Add comments to the columns 
comment on column STORE_INCOME_LOG.income_log_id
  is 'id';
comment on column STORE_INCOME_LOG.goods_id
  is '��Ʒ���';
comment on column STORE_INCOME_LOG.income_time
  is '����ʱ��';
comment on column STORE_INCOME_LOG.income_quantity
  is '��������';
comment on column STORE_INCOME_LOG.quantity_unit
  is '������λ';
comment on column STORE_INCOME_LOG.product_time
  is '����ʱ��';
comment on column STORE_INCOME_LOG.expire_time
  is '����ʱ��';
comment on column STORE_INCOME_LOG.suplier_id
  is '��Ӧ��id';
comment on column STORE_INCOME_LOG.create_time
  is '����ʱ��';
comment on column STORE_INCOME_LOG.update_time
  is '�޸�ʱ��';
comment on column STORE_INCOME_LOG.remark
  is '��ע';

-- Create table
create table STORE_GOODS
(
  goods_id    VARCHAR2(16) not null,
  price       NUMBER,
  goods_no    VARCHAR2(16),
  goods_name  VARCHAR2(16),
  brand       VARCHAR2(64),
  remark      VARCHAR2(1024),
  create_time DATE,
  update_time DATE
)
tablespace UUC
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table STORE_GOODS
  is '��Ʒ��';
-- Add comments to the columns 
comment on column STORE_GOODS.goods_id
  is '��Ʒid';
comment on column STORE_GOODS.price
  is '���¼۸�';
comment on column STORE_GOODS.goods_no
  is '��Ʒ���';
comment on column STORE_GOODS.goods_name
  is '��Ʒ����';
comment on column STORE_GOODS.brand
  is 'Ʒ��';
comment on column STORE_GOODS.create_time
  is '����ʱ��';
comment on column STORE_GOODS.update_time
  is '�޸�ʱ��';
comment on column STORE_GOODS.remark
  is '��ע';

-- Create sequence 
create sequence SEQ_STORE_GOODS_ID
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

-- Create sequence 
create sequence SEQ_STORE_USER_ID
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

-- Create sequence 
create sequence SEQ_STORE_INCOME_LOG_ID
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;

-- Create sequence 
create sequence SEQ_STORE_PRICE_CHANGE_LOG_ID
minvalue 1
maxvalue 999999999999999999999999999
start with 1
increment by 1
cache 20;
