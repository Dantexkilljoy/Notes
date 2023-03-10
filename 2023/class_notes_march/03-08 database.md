# time
*915-930 stand up


# tasks
* id
* task_name
* task_status_id


# task_statuses
id | status
1  | not yet started
2  | in progress
3  | completed



# users
* id
* email
* password

-----


# tasks
* id
* not yet started
* in progress
* completed
* description


# users
* id 
* password
* email

# user_tasks
* id
* user_id
* task id


# very important
* EVERY TABLE HAS AN ID


------

# users
* id
* email
* password

# tasks
* id
* content
* user_id
* status (completed, In progress, Not yet started)
* created_at
* updated_at