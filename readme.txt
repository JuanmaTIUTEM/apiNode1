Instalación y Configuración

Paso 1: Crear un proyecto Node.js
Ejecuta los siguientes comandos para crear el proyecto:
  - mkdir crud_node_mysql
  - cd crud_node_mysql
  - npm init -y

Paso 2: Instalar dependencias
  - npm install express mysql dotenv cors body-parser

Paso 3: Configurar la Base de Datos
  - Crear una base de datos llamada users
  - Crear un usuario para la base de datos
CREATE TABLE users (
  userId INT AUTO_INCREMENT PRIMARY KEY,
  personId INT NOT NULL,
  user VARCHAR(20) NOT NULL,
  pass VARCHAR(40) NOT NULL,
  userType VARCHAR(20) NOT NULL,
  bActive TINYINT(1) NOT NULL DEFAULT '0',
  dtCreatedAt DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
 - Configurar el archivo .env con las credenciales de usuario de la base de datos creada

Paso 4: 
  - Ejecutar el servidor node server.js
