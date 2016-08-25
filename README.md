# TODO

* users
id
name
email
password
created_at
updated_at

* pics
id
filename
camera_number
validated
created_at
updated_at

* cameras
id
number
experiment_id
created_at
updated_at

* experiments
id
name
description
created_at
updated_at

camera has many pics
camera belongs to experiment
pic belongs to camera
experiment has many cameras
