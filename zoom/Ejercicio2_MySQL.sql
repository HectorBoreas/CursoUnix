CREATE DATABASE IF NOT EXISTS Ejercicio2 CHARACTER SET utf8;
USE Ejercicio2
	CREATE TABLE vehículos {
		id INT AUTO_INCREMENT,
		matricula CHAR(9) UNIQUE NOT NULL,
		modelo VARCHAR(100),
		tipo VARCHAR(100),
		potencia VARCHAR(10),
		PRIMARY KEY(id),
	}
	CREATE TABLE conductores {
		id INT AUTO_INCREMENT,
		dni VARCHAR(9) UNIQUE NOT NULL,
		nombre VARCHAR(100),
		teléfono INT(9),
		dirección VARCHAR(300),
		salario DECIMAL(8,2),
		población VARCHAR(200),
		PRIMARY KEY(id),
	}
	CREATE TABLE vehículos-conductores {
		id INT AUTO_INCREMENT,
		fk_id_vehículos INT,
		fk_id_conductores INT,
		fecha DATE,
		PRIMARY KEY(id),
		FOREIGN KEY(fk_id_vehículos) REFERENCES vehículos(id),
		FOREIGN KEY(fk_id_conductores) REFERENCES conductores(id)
	}
	CREATE TABLE paquetes {
		id INT AUTO_INCREMENT,
		código VARCHAR(12) UNIQUE NOT NULL,
		descripción VARCHAR(100),
		destinatario VARCHAR(300),
		dir_destinatario VARCHAR(300),
		fk_id_provincias INT,
		PRIMARY KEY(id),
		FOREIGN KEY(fk_id_provincias) REFERENCES provincias(id),
	}
	CREATE TABLE provincias {
		id INT AUTO_INCREMENT,
		código_provincia VARCHAR(12) UNIQUE NOT NULL,
		nombre VARCHAR(200),
		PRIMARY KEY(id),
	}

