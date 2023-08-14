-- migrate:up
CREATE TABLE users(
  id INT NOT NULL AUTO_INCREMENT,
  nickname VARCHAR(50) NULL,
  email VARCHAR(200) NOT NULL,
  password VARCHAR(200) NOT NULL,
  phone_number VARCHAR(200) NOT NULL,
  birth_day DATE NULL,
  profile_image VARCHAR(1000) NULL,
  created_at TIMESTAMP NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMP NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id)
)
-- migrate:down
DROP TABLE users;