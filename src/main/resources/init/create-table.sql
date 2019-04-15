CREATE TABLE chmm_property_info (
  property_key varchar(300) NOT NULL,
  property_value varchar(300) NOT NULL,
  property_desc varchar(1000) DEFAULT NULL,
  use_yn char(1) DEFAULT NULL,
  sys_insert_dtm datetime DEFAULT NULL,
  sys_insert_user_id varchar(255) DEFAULT NULL,
  sys_update_dtm datetime DEFAULT NULL,
  sys_update_user_id varchar(255) DEFAULT NULL,
  PRIMARY KEY (property_key)
);

INSERT INTO chmm_property_info  (property_key, property_value) VALUES ('AOPLOGONOFF','0');

CREATE TABLE chmm_method_trace_log (
  method_log_id int(11) NOT NULL AUTO_INCREMENT,
  method_log_session_id varchar(100) DEFAULT NULL,
  method_log_request_id varchar(150) DEFAULT NULL,
  method_log_request_user varchar(100) DEFAULT NULL,
  method_log_request_path varchar(500) DEFAULT NULL,
  method_log_class_name varchar(255) DEFAULT NULL,
  method_log_method_name varchar(255) DEFAULT NULL,
  method_log_ex_time int(11) DEFAULT NULL,
  method_log_level varchar(50) DEFAULT NULL,
  method_log_msg varchar(255) DEFAULT NULL,
  method_log_params varchar(255) DEFAULT NULL,
  method_log_date datetime NOT NULL,
  method_log_hierarchy varchar(500) DEFAULT NULL,
  trans_start_date varchar(30) DEFAULT NULL,
  client_ip varchar(150) DEFAULT NULL,
  PRIMARY KEY (method_log_id)
)

