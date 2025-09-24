CREATE TABLE IF NOT EXISTS stollar(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	raqam INTEGER NOT NULL,
	orinlar_soni INTEGER,
	holat VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS menu(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	taom_nomi TEXT NOT NULL,
	narxi INTEGER,
	kategoriya VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS orders(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	stol_id INTEGER,
	menyu_id INTEGER,
	miqdor INTEGER,
	sana TEXT,
	FOREIGN KEY (stol_id) REFERENCES stollar(id) ON DELETE CASCADE,
	FOREIGN KEY (menyu_id) REFERENCES menu(id) ON DELETE CASCADE
);

INSERT INTO stollar (raqam, orinlar_soni, holat)
VALUES
(10, 4, 'Bo`sh'),
(11, 2, 'Band'),
(12, 6, 'Bo`sh'),
(13, 4, 'Ta`mirlash'),
(14, 8, 'VIP');

INSERT INTO menu (taom_nomi, narxi, kategoriya)
VALUES
('Osh', 20000, 'Asosiy'),
('Lag`mon', 18000, 'Asosiy'),
('Choy', 3000, 'Ichimlik'),
('Kola', 8000, 'Ichimlik'),
('Somsa', 5000, 'Yengil');

INSERT INTO orders (stol_id, menyu_id, miqdor, sana)
VALUES
(3, 2, 2, '2024-01-15'),
(1, 4, 1, '2024-01-15'),
(5, 1, 1, '2024-01-16'),
(2, 5, 3, '2024-01-16'),
(4, 3, 2, '2024-01-17');