CREATE DATABASE IF NOT EXISTS Ejercicio1 CHARACTER SET utf8;

USE Ejercicio1;

	CREATE TABLE proveedores {
		id INT AUTO_INCREMENT,
		nif CHAR(9) UNIQUE NOT NULL,
		nombre VARCHAR(100),
		dirección VARCHAR(300),
		PRIMARY KEY(id),
	};
	INSERT INTO proveedores VALUES(null, "11111111a", "Pepe", "c/central 8 atico A");
	INSERT INTO proveedores VALUES(null, "22222222b", "Juana", "c/ la loca 16 bajo");
	INSERT INTO proveedores VALUES(null, "33333333c", "Carlos", "c/ el hechizado segundo");
	INSERT INTO proveedores VALUES(null, "44444444d", "Felipe", "c/ vive en un palacio");
	INSERT INTO proveedores VALUES(null, "55555555e", "Aliena", "c/ uno de los pilares");
	INSERT INTO proveedores VALUES(null, "66666666f", "Alatriste", "c/ gran capitán");


	CREATE TABLE productos {
		id INT AUTO_INCREMENT,
		código VARCHAR(10) UNIQUE NOT NULL,
		nombre VARCHAR(100),
		precio DECIMAL(8,2),
		fk_id_proveedores INT,
		PRIMARY KEY(id),
		FOREIGN KEY(fk_id_proveedores) REFERENCES proveedores(id),
	};
	INSERT INTO productos VALUES(null, "0123456789", "Vizacaina", "23,20", 1);
	INSERT INTO productos VALUES(null, "1234567890", "Ropera", "52,13", 3);
	INSERT INTO productos VALUES(null, "2345678901", "Arcabuz", "16,00", 2);
	INSERT INTO productos VALUES(null, "3456789012", "Pica", "302,59", 3);
	INSERT INTO productos VALUES(null, "4567890123", "Sombrero", "10,05", 4);
	INSERT INTO productos VALUES(null, "5678901234", "Lima", "00,06", 6);
	INSERT INTO productos VALUES(null, "6789012345", "Capa", "13,13", 5);
	INSERT INTO productos VALUES(null, "6789012345", "Chisquero", "1,11", 1);

	CREATE TABLE clientes {
		id INT AUTO_INCREMENT,
		dni CHAR(9) UNIQUE NOT NULL,
		nombre VARCHAR(100),
		apellidos VARCHAR(200),
		dirección VARCHAR(300),
		fecha_nacimiento DATE,
		PRIMARY KEY(id),
	};
	INSERT INTO clientes VALUES(null, "01234567g", "Frodo", "Bolson", "Bolsón cerrado", "1953/01/13");
	INSERT INTO clientes VALUES(null, "12345678h", "Sam", "Va_lentín", "La comarca", "1959/02/01");
	INSERT INTO clientes VALUES(null, "23456789i", "Pergrin", "Tuk", "Los Gamso", "1961/03/31");
	INSERT INTO clientes VALUES(null, "34567890j", "Meriadoc", "Brandigamo", "Los Gamos", "1961/02/12");
	INSERT INTO clientes VALUES(null, "45678901k", "Gandalf", "El gris", "Casas ajenas", "0053/12/25");
	INSERT INTO clientes VALUES(null, "56789012l", "Aragorn", "Hijo de Arathorn", "En la nauraleza", "1767/05/08");
	INSERT INTO clientes VALUES(null, "67890123m", "Gimli", "El enano", "Montaña solitaria", "1682/04/19");
	INSERT INTO clientes VALUES(null, "67890123n", "Legolas", "Curtis", "Bosque Negro", "0499/07/04");
	INSERT INTO clientes VALUES(null, "67890123n", "Boromir", "Fijo que sobrevivie", "Minas Tirith", "1973/06/09");

	CREATE TABLE clientes-productos {
		id INT AUTO_INCREMENT,
		fk_id_clientes INT,
		fk_id_productos INT,
		PRIMARY KEY(id),
		FOREIGN KEY(fk_id_clientes) REFERENCES clientes(id),
		FOREIGN KEY(fk_id_productos) REFERENCES productos(id),
	};
	INSERT INTO clientes-productos VALUES(null, 1, 1);
	INSERT INTO clientes-productos VALUES(null, 1, 2);
	INSERT INTO clientes-productos VALUES(null, 2, 3);
	INSERT INTO clientes-productos VALUES(null, 3, 5);
	INSERT INTO clientes-productos VALUES(null, 4, 6);
	INSERT INTO clientes-productos VALUES(null, 5, 6);
	INSERT INTO clientes-productos VALUES(null, 5, 5);
	INSERT INTO clientes-productos VALUES(null, 6, 9);
	INSERT INTO clientes-productos VALUES(null, 6, 5);
	INSERT INTO clientes-productos VALUES(null, 7, 7);
	INSERT INTO clientes-productos VALUES(null, 7, 8);
