
CREATE TABLE bde(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(50) NOT NULL, 
  prenom VARCHAR (50) NOT NULL,
  email VARCHAR (50),
  role VARCHAR (50),
  date_adhesion DATE  
)ENGINE = INNODB; 


CREATE TABLE evnement(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(50) NOT NULL, 
  description  VARCHAR(200) NOT NULL,
  date_event DATE,
  lieu VARCHAR(100),
  budget_prévu DECIMAL,
  bde_id INT ,
  FOREIGN KEY (bde_id) REFERENCES bde(id)
)ENGINE = INNODB; 

CREATE TABLE sponsor(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(50) NOT NULL, 
  telephone VARCHAR(50) NOT NULL,    
  email VARCHAR(50) NOT NULL,
  montant DECIMAL,  
  nom_event VARCHAR(50),
  event_id INT ,
  FOREIGN KEY(event_id) REFERENCES evnement(id)  
)ENGINE = INNODB;

CREATE TABLE activite(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(50) NOT NULL, 
  description VARCHAR (100),
  date_activite DATE,  
  event_id INT ,
  FOREIGN KEY(event_id) REFERENCES evnement(id)  
)ENGINE = INNODB;


CREATE TABLE participant(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nom VARCHAR(50) NOT NULL, 
  prenom VARCHAR (50) NOT NULL,
  email VARCHAR (50),  
  activite_id INT ,
  event_id INT ,
  FOREIGN KEY(activite_id) REFERENCES activite(id), 
  FOREIGN KEY(event_id) REFERENCES evnement(id) 
)ENGINE = INNODB;