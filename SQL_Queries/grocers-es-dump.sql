PRAGMA foreign_keys = OFF;
BEGIN TRANSACTION;
DROP TABLE IF EXISTS category_model;
CREATE TABLE category_model (
  "id" INTEGER PRIMARY KEY,
  "name" TEXT
);
INSERT INTO category_model ("id", "name") VALUES (1, 'Bebida');
INSERT INTO category_model ("id", "name") VALUES (2, 'Panadería');
INSERT INTO category_model ("id", "name") VALUES (3, 'Snacks');
INSERT INTO category_model ("id", "name") VALUES (4, 'Salami y salchichas');
INSERT INTO category_model ("id", "name") VALUES (5, 'Cuidado Personal');
INSERT INTO category_model ("id", "name") VALUES (6, 'Fruta y frutos rojos');
INSERT INTO category_model ("id", "name") VALUES (7, 'Salsas');
INSERT INTO category_model ("id", "name") VALUES (8, 'Palomitas');
INSERT INTO category_model ("id", "name") VALUES (9, 'Dulces');
INSERT INTO category_model ("id", "name") VALUES (10, 'Queso');
INSERT INTO category_model ("id", "name") VALUES (11, 'Lácteos y huevos');
INSERT INTO category_model ("id", "name") VALUES (12, 'Verduras y hierbas');
DROP TABLE IF EXISTS product_model;
CREATE TABLE product_model (
  "id" INTEGER PRIMARY KEY,
  "name" TEXT,
  "price" INTEGER,
  "weight" INTEGER,
  "units" TEXT,
  "categoryId" INTEGER,
  FOREIGN KEY ("categoryId") REFERENCES category_model("id")
);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (1, 'Orange Juice - Cold-Pressed, No Added Sugar, Preservative Free', 2, 473, 'ml', 1);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (2, 'Refresco Mountain Dew', 1, 1, 'l', 1);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (3, 'Refresco Pepsi', 2, 1, 'l', 1);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (4, 'Refresco Sprite', 1, 900, 'ml', 1);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (5, 'Jugo Fruit Power: Lichi', 5, 900, 'ml', 1);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (6, 'Baguette', 1, 160, 'g', 2);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (7, 'Papas fritas: Saladas Clásicas', 2, 150, 'g', 3);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (8, 'Papas fritas: Paprika', 3, 150, 'g', 3);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (9, 'Papas Fritas: Chile', 2, 100, 'g', 3);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (10, 'Pita', 1, 300, 'g', 2);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (11, 'Pan multigrano', 2, 400, 'g', 2);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (12, 'Pan de ajo', 1, 225, 'g', 2);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (13, 'Mini chapata', 1, 107, 'g', 2);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (14, 'Brioche', 1, 79, 'g', 2);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (15, 'Salchichas vienesas', 3, 350, 'g', 4);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (16, 'Salchichas de pollo', 3, 200, 'g', 4);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (17, 'Chorizo', 4, 420, 'g', 4);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (18, 'Salchichón', 3, 464, 'g', 4);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (19, 'Salami', 1, 190, 'g', 4);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (20, 'Bacon', 4, 500, 'g', 4);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (21, 'Pastrami', 2, 200, 'g', 4);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (22, 'Pepperoni', 5, 500, 'g', 4);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (23, 'Anti-Bacterial Hand Sanitizer', 2, 50, 'ml', 5);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (24, 'Paper Napkin - Large', 1, 60, 'pzas', 5);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (25, 'Anti Bacterial Disinfectant Sanitising Wipes - Alcohol Free', 3, 48, 'pzas', 5);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (26, 'SMART Mosquito Repellent', 5, 100, 'ml', 5);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (27, 'Manzana verde', 2, 500, 'g', 6);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (28, 'Orange', 2, 500, 'g', 6);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (29, 'Cherry', 4, 500, 'g', 6);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (30, 'Raspberry', 4, 250, 'g', 6);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (31, 'Blackberry', 2, 200, 'g', 6);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (32, 'Lima', 1, 1, 'pzas', 6);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (33, 'Red Grapes', 4, 500, 'g', 6);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (34, 'Green Grapes', 3, 500, 'g', 6);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (35, 'Banana', 2, 1000, 'g', 6);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (36, 'Pear', 3, 650, 'g', 6);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (37, 'Blueberry', 3, 125, 'g', 6);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (38, 'Pineapple', 6, 1, 'pzas', 6);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (39, 'Melon', 2, 800, 'g', 6);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (40, 'Nacho Chips - Classic Salt', 2, 150, 'g', 3);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (41, 'Nacho Chips - Queso', 2, 60, 'g', 3);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (42, 'Nacho Chips - Cebolla', 1, 150, 'g', 3);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (43, 'Classic Hummus Dip & Spread', 4, 250, 'g', 7);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (44, 'Gourmet Palomitas Kernels', 3, 60, 'g', 8);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (45, 'Caramel Palomitas', 1, 45, 'g', 8);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (46, 'Fruit Beer Non-Alcoholic', 1, 450, 'ml', 1);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (47, 'Stella Artois Beer Non-Alcoholic', 2, 450, 'ml', 1);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (48, '100% Belgian Dark Chocolate - with Apricot', 2, 100, 'g', 9);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (49, '100% Belgian Dark Chocolate - Raisins', 2, 97, 'g', 9);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (50, '100% Belgian Milk Chocolate - Sea Salt', 1, 85, 'g', 9);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (51, '64% Mild Dark Chocolate', 3, 160, 'g', 9);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (52, 'Crunchy Dark Chocolate Peanut Butter', 4, 100, 'g', 9);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (53, 'Pure Chocolate - Creamy White', 2, 100, 'g', 9);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (54, 'Dairy Rich Chocolate Bar - Fruit & Nut', 2, 80, 'g', 9);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (55, 'Peanut Butter Nutty Cookies', 3, 171, 'g', 9);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (56, 'Cookies - Orange Splash', 2, 50, 'g', 9);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (57, 'Choco Nut Cookies', 2, 228, 'g', 9);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (58, 'Milk Cookies', 2, 168, 'g', 9);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (59, 'Sandwich Biscuits', 1, 100, 'g', 9);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (60, 'Chocobakes Choc Filled Cookies', 3, 250, 'g', 9);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (61, 'Baguette French Recipe', 3, 350, 'g', 4);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (62, 'Queso Croissant', 3, 200, 'g', 4);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (63, 'French Almond Croissant', 4, 420, 'g', 4);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (64, 'Chocolate Croissant', 2, 464, 'g', 4);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (65, 'Smoked Salmon Croissant', 2, 190, 'g', 4);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (66, 'Belgian Chocolate Cake Mix', 4, 500, 'g', 4);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (67, 'Queso para untar: Queso crema', 2, 200, 'g', 4);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (68, 'Queso Slices', 5, 500, 'g', 4);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (69, 'Queso Spread - Roasted Garlic', 1, 1, 'pzas', 6);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (70, 'Spicy Queso Straw', 1, 130, 'g', 10);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (71, 'Rebanadas de queso procesado', 6, 200, 'g', 10);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (72, 'Cubos de queso procesado', 2, 180, 'g', 11);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (73, 'Soyabean Tempeh Cubes', 1, 250, 'g', 4);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (74, 'Center Filled Dark Chocolate Cookies', 2, 100, 'g', 9);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (75, 'Enrobed Cinnamon Milk Chocolate Dipped Cookies', 3, 100, 'g', 9);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (76, 'Oreo & Crème Frozen Dessert', 5, 300, 'g', 9);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (77, 'Chocorich Eclairs Chocolate - Assorted', 6, 200, 'g', 9);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (78, 'Huevos: Medianos', 1, 10, 'pzas', 11);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (79, 'Huevos: Normales', 1, 6, 'pzas', 11);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (80, 'Harina de trigo integral', 1, 1, 'кg', 2);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (81, 'Huevos de granja', 1, 8, 'pzas', 11);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (82, 'Cebolla', 1, 1, 'кg', 12);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (83, 'Pechuga de pollo', 7, 500, 'g', 12);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (84, 'Papa', 1, 1, 'кg', 12);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (85, 'Salsa Kétchup', 1, 250, 'g', 4);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (86, 'Salsa clásica de tomate con chile', 2, 500, 'g', 7);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (87, 'Mantequilla pasteurizada', 2, 180, 'g', 11);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (88, 'Ajo: Pelado', 1, 2, 'pzas', 12);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (89, 'Azúcar morena', 2, 750, 'g', 9);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (90, 'Miel', 2, 280, 'g', 9);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (91, 'Mantequilla con sal: sin conservantes ni productos químicos añadidos', 2, 200, 'g', 11);
INSERT INTO product_model ("id", "name", "price", "weight", "units", "categoryId") VALUES (92, 'Almendra salada', 5, 150, 'g', 6);
DROP TABLE IF EXISTS grocery_collection_model;
CREATE TABLE grocery_collection_model (
  "id" INTEGER PRIMARY KEY,
  "name" TEXT
);
INSERT INTO grocery_collection_model ("id", "name") VALUES (1, 'Compra para cada ocasión');
INSERT INTO grocery_collection_model ("id", "name") VALUES (2, 'Compra por receta');
INSERT INTO grocery_collection_model ("id", "name") VALUES (3, 'Crea tu propio paquete');
DROP TABLE IF EXISTS user_model;
CREATE TABLE user_model (
  "id" INTEGER PRIMARY KEY,
  "firstName" TEXT,
  "phone" TEXT,
  "address" TEXT,
  "email" TEXT,
  "comment" TEXT,
  "authToken" TEXT
);
INSERT INTO user_model ("id", "firstName", "phone", "address", "email", "comment", "authToken") VALUES (256, 'Sadoc', '+12312345645', 'Ave. Ever Green 50, Zapopan. Jal. MX.', '', '', '00c97df2-aa70-483e-83b9-b00bebcc4707');
DROP TABLE IF EXISTS grocery_bundle_model;
CREATE TABLE grocery_bundle_model (
  "id" INTEGER PRIMARY KEY,
  "name" TEXT,
  "productsList" TEXT,
  "productsCount" INTEGER,
  "groceryCollectionId" INTEGER,
  "userId" INTEGER,
  "isSeed" INTEGER,
  FOREIGN KEY ("groceryCollectionId") REFERENCES grocery_collection_model("id"),
  FOREIGN KEY ("userId") REFERENCES user_model("id")
);
INSERT INTO grocery_bundle_model ("id", "name", "productsList", "productsCount", "groceryCollectionId", "userId", "isSeed") VALUES (1, 'Paquete para picnic', '[{"quantity":1,"productId":1},{"quantity":1,"productId":2},{"quantity":1,"productId":3},{"quantity":1,"productId":4},{"quantity":1,"productId":5},{"quantity":1,"productId":6},{"quantity":1,"productId":7},{"quantity":1,"productId":8},{"quantity":1,"productId":9},{"quantity":1,"productId":10},{"quantity":1,"productId":11},{"quantity":1,"productId":12},{"quantity":1,"productId":13},{"quantity":1,"productId":14},{"quantity":1,"productId":15},{"quantity":1,"productId":16},{"quantity":1,"productId":17},{"quantity":1,"productId":18},{"quantity":1,"productId":19},{"quantity":1,"productId":20},{"quantity":1,"productId":21},{"quantity":1,"productId":22},{"quantity":1,"productId":23},{"quantity":1,"productId":24},{"quantity":1,"productId":25},{"quantity":1,"productId":26},{"quantity":1,"productId":27},{"quantity":1,"productId":28},{"quantity":1,"productId":29},{"quantity":1,"productId":30},{"quantity":1,"productId":31},{"quantity":1,"productId":32},{"quantity":1,"productId":33},{"quantity":1,"productId":34},{"quantity":1,"productId":35},{"quantity":1,"productId":36},{"quantity":1,"productId":37},{"quantity":1,"productId":38},{"quantity":1,"productId":39}]', 39, 1, NULL, 1);
INSERT INTO grocery_bundle_model ("id", "name", "productsList", "productsCount", "groceryCollectionId", "userId", "isSeed") VALUES (2, 'Paquete para ver películas', '[{"quantity":1,"productId":7},{"quantity":1,"productId":8},{"quantity":1,"productId":9},{"quantity":1,"productId":40},{"quantity":1,"productId":41},{"quantity":1,"productId":42},{"quantity":1,"productId":43},{"quantity":1,"productId":44},{"quantity":1,"productId":45},{"quantity":1,"productId":46},{"quantity":1,"productId":47},{"quantity":1,"productId":2},{"quantity":1,"productId":3},{"quantity":1,"productId":4},{"quantity":1,"productId":48},{"quantity":1,"productId":49},{"quantity":1,"productId":50},{"quantity":1,"productId":51},{"quantity":1,"productId":52},{"quantity":1,"productId":53},{"quantity":1,"productId":54},{"quantity":1,"productId":55},{"quantity":1,"productId":56},{"quantity":1,"productId":57},{"quantity":1,"productId":58},{"quantity":1,"productId":59},{"quantity":1,"productId":60}]', 27, 1, NULL, 1);
INSERT INTO grocery_bundle_model ("id", "name", "productsList", "productsCount", "groceryCollectionId", "userId", "isSeed") VALUES (3, 'Paquete Noche en París', '[{"quantity":1,"productId":61},{"quantity":1,"productId":62},{"quantity":1,"productId":63},{"quantity":1,"productId":64},{"quantity":1,"productId":65},{"quantity":1,"productId":66},{"quantity":1,"productId":67},{"quantity":1,"productId":68},{"quantity":1,"productId":69},{"quantity":1,"productId":70},{"quantity":1,"productId":71},{"quantity":1,"productId":72},{"quantity":1,"productId":73},{"quantity":1,"productId":52},{"quantity":1,"productId":48},{"quantity":1,"productId":74},{"quantity":1,"productId":75},{"quantity":1,"productId":76},{"quantity":1,"productId":77}]', 19, 1, NULL, 1);
INSERT INTO grocery_bundle_model ("id", "name", "productsList", "productsCount", "groceryCollectionId", "userId", "isSeed") VALUES (4, 'Pizza', '[{"quantity":1,"productId":19},{"quantity":1,"productId":20},{"quantity":1,"productId":21},{"quantity":1,"productId":22},{"quantity":1,"productId":71},{"quantity":1,"productId":72},{"quantity":1,"productId":78},{"quantity":1,"productId":79},{"quantity":1,"productId":80},{"quantity":1,"productId":81},{"quantity":1,"productId":82},{"quantity":1,"productId":83},{"quantity":1,"productId":84},{"quantity":1,"productId":85},{"quantity":1,"productId":86}]', 15, 2, NULL, 1);
INSERT INTO grocery_bundle_model ("id", "name", "productsList", "productsCount", "groceryCollectionId", "userId", "isSeed") VALUES (5, 'Pasta', '[{"quantity":1,"productId":15},{"quantity":1,"productId":16},{"quantity":1,"productId":17},{"quantity":1,"productId":18},{"quantity":1,"productId":19},{"quantity":1,"productId":20},{"quantity":1,"productId":21},{"quantity":1,"productId":22},{"quantity":1,"productId":32},{"quantity":1,"productId":67},{"quantity":1,"productId":72},{"quantity":1,"productId":87},{"quantity":1,"productId":85},{"quantity":1,"productId":86},{"quantity":1,"productId":88}]', 15, 2, NULL, 1);
INSERT INTO grocery_bundle_model ("id", "name", "productsList", "productsCount", "groceryCollectionId", "userId", "isSeed") VALUES (6, 'Strudel', '[{"quantity":1,"productId":89},{"quantity":1,"productId":80},{"quantity":1,"productId":81},{"quantity":1,"productId":27},{"quantity":1,"productId":90},{"quantity":1,"productId":78},{"quantity":1,"productId":87},{"quantity":1,"productId":91},{"quantity":1,"productId":79},{"quantity":1,"productId":92}]', 10, 2, NULL, 1);
DROP TABLE IF EXISTS grocery_bundle_products;
CREATE TABLE grocery_bundle_products (
  "id" INTEGER PRIMARY KEY,
  "quantity" INTEGER,
  "groceryBundleId" INTEGER,
  "productId" INTEGER,
  FOREIGN KEY ("groceryBundleId") REFERENCES grocery_bundle_model("id"),
  FOREIGN KEY ("productId") REFERENCES product_model("id")
);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (1, 1, 1, 1);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (2, 1, 1, 2);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (3, 1, 1, 3);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (4, 1, 1, 4);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (5, 1, 1, 5);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (6, 1, 1, 6);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (7, 1, 1, 7);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (8, 1, 1, 8);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (9, 1, 1, 9);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (10, 1, 1, 10);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (11, 1, 1, 11);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (12, 1, 1, 12);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (13, 1, 1, 13);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (14, 1, 1, 14);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (15, 1, 1, 15);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (16, 1, 1, 16);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (17, 1, 1, 17);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (18, 1, 1, 18);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (19, 1, 1, 19);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (20, 1, 1, 20);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (21, 1, 1, 21);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (22, 1, 1, 22);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (23, 1, 1, 23);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (24, 1, 1, 24);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (25, 1, 1, 25);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (26, 1, 1, 26);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (27, 1, 1, 27);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (28, 1, 1, 28);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (29, 1, 1, 29);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (30, 1, 1, 30);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (31, 1, 1, 31);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (32, 1, 1, 32);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (33, 1, 1, 33);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (34, 1, 1, 34);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (35, 1, 1, 35);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (36, 1, 1, 36);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (37, 1, 1, 37);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (38, 1, 1, 38);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (39, 1, 1, 39);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (40, 1, 2, 7);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (41, 1, 2, 8);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (42, 1, 2, 9);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (43, 1, 2, 40);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (44, 1, 2, 41);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (45, 1, 2, 42);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (46, 1, 2, 43);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (47, 1, 2, 44);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (48, 1, 2, 45);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (49, 1, 2, 46);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (50, 1, 2, 47);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (51, 1, 2, 2);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (52, 1, 2, 3);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (53, 1, 2, 4);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (54, 1, 2, 48);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (55, 1, 2, 49);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (56, 1, 2, 50);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (57, 1, 2, 51);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (58, 1, 2, 52);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (59, 1, 2, 53);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (60, 1, 2, 54);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (61, 1, 2, 55);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (62, 1, 2, 56);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (63, 1, 2, 57);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (64, 1, 2, 58);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (65, 1, 2, 59);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (66, 1, 2, 60);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (67, 1, 3, 61);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (68, 1, 3, 62);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (69, 1, 3, 63);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (70, 1, 3, 64);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (71, 1, 3, 65);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (72, 1, 3, 66);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (73, 1, 3, 67);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (74, 1, 3, 68);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (75, 1, 3, 69);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (76, 1, 3, 70);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (77, 1, 3, 71);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (78, 1, 3, 72);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (79, 1, 3, 73);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (80, 1, 3, 52);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (81, 1, 3, 48);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (82, 1, 3, 74);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (83, 1, 3, 75);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (84, 1, 3, 76);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (85, 1, 3, 77);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (86, 1, 4, 19);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (87, 1, 4, 20);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (88, 1, 4, 21);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (89, 1, 4, 22);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (90, 1, 4, 71);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (91, 1, 4, 72);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (92, 1, 4, 78);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (93, 1, 4, 79);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (94, 1, 4, 80);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (95, 1, 4, 81);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (96, 1, 4, 82);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (97, 1, 4, 83);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (98, 1, 4, 84);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (99, 1, 4, 85);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (100, 1, 4, 86);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (101, 1, 5, 15);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (102, 1, 5, 16);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (103, 1, 5, 17);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (104, 1, 5, 18);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (105, 1, 5, 19);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (106, 1, 5, 20);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (107, 1, 5, 21);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (108, 1, 5, 22);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (109, 1, 5, 32);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (110, 1, 5, 67);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (111, 1, 5, 72);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (112, 1, 5, 87);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (113, 1, 5, 85);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (114, 1, 5, 86);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (115, 1, 5, 88);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (116, 1, 6, 89);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (117, 1, 6, 80);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (118, 1, 6, 81);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (119, 1, 6, 27);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (120, 1, 6, 90);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (121, 1, 6, 78);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (122, 1, 6, 87);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (123, 1, 6, 91);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (124, 1, 6, 79);
INSERT INTO grocery_bundle_products ("id", "quantity", "groceryBundleId", "productId") VALUES (125, 1, 6, 92);
DROP TABLE IF EXISTS order_model;
CREATE TABLE order_model (
  "id" INTEGER PRIMARY KEY,
  "userId" INTEGER,
  "deliveryPrice" INTEGER,
  "deliveryPriceOur" INTEGER,
  "deliveryTime" TEXT,
  "wareHouse" TEXT,
  "courierService" TEXT,
  "status" INTEGER,
  "productsList" TEXT,
  FOREIGN KEY ("userId") REFERENCES user_model("id")
);
COMMIT;
PRAGMA foreign_keys = ON;