CREATE TABLE todo_mst (
  todo_id INT AUTO_INCREMENT PRIMARY KEY,
  task_id INT NOT NULL,
  su_id INT NOT NULL,
  ru_id INT NOT NULL,
  title VARCHAR(60) NOT NULL,
  todo_desc TEXT NOT NULL,
  priority INT NOT NULL DEFAULT 1,
  todo_att TEXT,
  todo_state INT NOT NULL DEFAULT 0,
  start_date TIMESTAMP NOT NULL,
  end_date TIMESTAMP NOT NULL,
  cmplt_date TIMESTAMP,
  create_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  update_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

SELECT
  tm.todo_id,
  sud.user_id,
  sud.display_name,
  sud.user_info,
  sud.image_url,
  sud.contact,
  sud.create_at,
  sud.update_at,
  rud.user_id,
  rud.display_name,
  rud.user_info,
  rud.image_url,
  rud.contact,
  rud.create_at,
  rud.update_at,
  tm.title,
  tm.todo_desc,
  tm.priority,
  tm.todo_att,
  tm.todo_state,
  tm.start_date,
  tm.end_date,
  tm.cmplt_date,
  tm.create_at,
  tm.update_at
FROM todo_mst tm
LEFT JOIN user_dtl sud ON sud.user_id = tm.su_id
LEFT JOIN user_dtl rud ON rud.user_id = tm.ru_id;