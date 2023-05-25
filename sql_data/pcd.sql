DELIMITER $$
CREATE PROCEDURE assignTask(
  IN p_prj_id INT,
  IN p_task_id INT,
  IN p_task_users JSON
)
BEGIN
  DECLARE EXIT HANDLER FOR SQLEXCEPTION
  BEGIN
    ROLLBACK;
    SELECT 'Error occurred. Changes have been rolled back.' AS message;
  END;
  
  START TRANSACTION;
 
  SET @task_users_json = p_task_users;
  
  INSERT INTO task_user (task_id, user_id, task_user_att_id, task_pnt, task_cmt, task_state, start_date, end_date)
  SELECT task_id, user_id, task_user_att_id, task_pnt, task_cmt, task_state, start_date, end_date
  FROM JSON_TABLE(@task_users_json, '$[*]'
    COLUMNS(
      user_id INT PATH '$.user_id',
      task_user_att_id INT PATH '$.task_user_att_id',
      task_pnt TEXT PATH '$.task_pnt',
      task_cmt TEXT PATH '$.task_cmt',
      task_state INT PATH '$.task_state',
      start_date TIMESTAMP PATH '$.start_date',
      end_date TIMESTAMP PATH '$.end_date'
    )
  ) AS task_users;
  
    INSERT INTO user_task (user_id, task_id)
  SELECT user_id, task_id
  FROM JSON_TABLE(@task_users_json, '$[*]'
	COLUMNS(
      user_id INT PATH '$.user_id'
    )
  ) AS task_users;
  
  COMMIT;

  SELECT task_id;
END $$
DELIMITER ;