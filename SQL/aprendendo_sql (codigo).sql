SELECT *
FROM testedetabela;
INSERT INTO testedetabela (id, primeironome, segundonome, idade)
VALUES (009748, 'jessica', 'torito', 22),
(663521, 'brenda', 'vanessa', 11),
(223543, 'fernanda', 'moteiro', 20);
ALTER TABLE testedetabela
add constraint idade check (idade >= 18);