CREATE TABLE project_mst (
  prj_id INT AUTO_INCREMENT PRIMARY KEY,
  pm_id INT NOT NULL,
  prj_pw TEXT,
  prj_ctg_id INT NOT NULL
);

CREATE TABLE project_dtl (
  prj_dtl_id INT AUTO_INCREMENT PRIMARY KEY,
  prj_id INT NOT NULL,
  prj_name VARCHAR(60) NOT NULL,
  prj_desc TEXT NOT NULL,
  create_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  update_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE project_user (
  prj_user_id INT AUTO_INCREMENT PRIMARY KEY,
  prj_id INT NOT NULL,
  user_id INT NOT NULL,
  prj_role_id INT NOT NULL,
  create_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE project_group (
  prj_grp_id INT AUTO_INCREMENT PRIMARY KEY,
  prj_id INT NOT NULL,
  grp_id INT NOT NULL
);

CREATE TABLE project_task (
  prj_task_id INT AUTO_INCREMENT PRIMARY KEY,
  prj_id INT NOT NULL,
  task_id INT NOT NULL
);

CREATE TABLE project_role (
  prj_role_id INT AUTO_INCREMENT PRIMARY KEY,
  prj_id INT NOT NULL,
  role_lvl INT NOT NULL,
  role_name VARCHAR(20)
);

CREATE TABLE project_category (
  prj_ctg_id INT AUTO_INCREMENT PRIMARY KEY,
  ctg_code INT NOT NULL
);
