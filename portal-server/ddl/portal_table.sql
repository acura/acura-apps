create table portal_account
(
  oid int(10) not null auto_increment,
  account_id varchar(50) not null,
  password varchar(50) not null,
  account_type varchar(50) not null,
  owner_name varchar(100) not null,
  title varchar(100) not null,
  address varchar(400) null default null,
  phone_number varchar(20) null default null,
  mobile_number varchar(20) null default null,
  email_id varchar(100) null default null,
  alternate_email_id varchar(100) null default null,
  subcription_start_date date not null,
  subcription_end_date date not null,
  amount_paid double(13,2) null default null,
  created_by varchar(36) null default null,
  created_date date null default null,
  last_updated_by varchar(36) null default null,
  last_updated_date date null default null,

  primary key pk_portal_account (oid),
  unique key (account_id)

);