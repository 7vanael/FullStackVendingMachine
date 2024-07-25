BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

INSERT INTO inventory (slot, name, price, type) VALUES
('A1', 'Potato Crisps', 3.05, 'Chip')
('A2', 'Stackers', 2.75, 'Chip')
('A3', 'Grain Waves', 3.50, 'Chip')
('A4', 'Intelligent Corn', 1.85, 'Chip')
('B1', 'Moonpie', 2.15, 'Candy')
('B2', 'Wonka Bar', 1.80, 'Candy')
('B3', 'Crunchie', 1.50, 'Candy')
('B4', 'Brownie Bites', 2.15, 'Candy')

COMMIT TRANSACTION;
