insert into carpediem.Utente (email, password, data, nome, cognome, telefono, indirizzo, path_foto) 
values 	('mariella@gmail.com', 'mari', '1935-12-22', 'Mariella', 'Mantovani', '0468389761', 'Vicolo chiuso', null),
		('orazio@gmail.com', 'oraz', '1939-04-11', 'Orazio', 'Segantini', '046149711', 'Via 28 Giugno', null)
		('leonardo@gmail.com', 'leon', '1942-04-11', 'Leonardo', 'Giannini', '046449711', 'Viale Martiri', null);


		
insert into carpediem.Post (titolo, categoria, utente, testo, media)
values ('Rimedio per il rafreddore', 4, 5, 'Sciroppo alle cipolle. - Questo rimedio viene considerato adatto per il raffreddore accompagnato da tosse. Sfrutta le proprietà antibatteriche e antinfiammatorie della cipolla e la capacità del miele di calmare la tosse. Può aiutare a disciogliere ed eliminare il muco. Potrete anche sostituire il miele con lo zucchero di canna integrale.', 'https://www.youtube.com/watch?v=jJtZ1nRo9wQ'),
	   ('Il caffe della Peppina', 3, 1, 'Non si beve alla mattina ne col latte ne col te', 'https://www.youtube.com/watch?v=-xL2Y2HKEI8'),
       ('Le Tagliatelle di Nonna Pina', 3, 2, 'Son molto più efficaci di  ogni vitamina', 'https://www.youtube.com/watch?v=HAzbZbjztbc');
