CREATE TABLE user_mst (
  user_id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(50) NOT NULL UNIQUE,
  password VARCHAR(100) NOT NULL,
  device_token TEXT
);

CREATE TABLE user_dtl (
  user_dtl_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  display_name VARCHAR(60),
  user_info TEXT,
  image_url TEXT,
  contact VARCHAR(20),
  create_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  update_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE user_group (
  user_grp_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  grp_id INT NOT NULL
);

CREATE TABLE user_project (
  user_prj_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  prj_id INT NOT NULL
);

CREATE TABLE user_task (
  user_task_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  task_id INT NOT NULL
);

CREATE TABLE user_todo (
  user_todo_id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT NOT NULL,
  todo_id INT NOT NULL
);