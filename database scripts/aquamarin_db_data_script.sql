use Aquamarin
go

insert into Brand values('A-Color')
insert into Brand values('Viva Decor')
insert into Brand values('Creotime')
insert into Brand values('Happy Moments')
insert into Brand values('Hobby Art')
insert into Brand values('Hot Glue')
insert into Brand values('Clear')
insert into Brand values('Gold Line')
insert into Brand values('Creativ')
go

insert into ProductCategory values ('Boje')
insert into ProductCategory values ('Perlice')
insert into ProductCategory values ('Papir i Karton')
insert into ProductCategory values ('Pribor')
insert into ProductCategory values ('Dodaci')
go

insert into Product values (1, 1, 'Boja za staklo - tirkizna', 28.99, 'Prozirna, sjajna, univerzalna boja za staklo, porculan, plastiku i sli�no. Vrijeme su�enja: 15-20 min. ', 1)
insert into Product values (1, 1, 'Boja za staklo - crna', 28.99, 'Prozirna, sjajna, univerzalna boja za staklo, porculan, plastiku i sli�no. Vrijeme su�enja: 15-20 min. ', 1)
insert into Product values (1, 1, 'Boja za staklo - naran�asta', 28.99, 'Prozirna, sjajna, univerzalna boja za staklo, porculan, plastiku i sli�no. Vrijeme su�enja: 15-20 min. ', 1)
insert into Product values (2, 1, 'Window Color - �uta', 29.85, 'Boja za prozore na bazi vode - boca s preciznim otvorom za jednostavnu uporabu. Su�i se za 24 sata i nakon toga se mo�e prenijeti na prozore, staklo, ogledala i sli�ne povr�ine.', 0)
insert into Product values (1, 1, 'Akrilna boja - ljubi�asta', 57.50, 'Akrilna boja na bazi vode, nakon su�enja ostaje visokosjajna. Mo�e se primijeniti na platnu, drvu, kartonu i sli�nim povr�inama. Proizvod je siguran za uporabu sa strane djece i odraslih. Kist nakon uporabe oprati u mlakoj vodi.', 0)
insert into Product values (3, 3, 'Karta s kuvertom 6 kom. - svjetlozelena', 11.20, 'Karta od cvrstog kartona (210 g) s pripadnom kuvertom od papira (120 g). Set od 6 karti i 6 kuverti. Veli�ina karte 10,5x15 cm, veli�ina kuverte 11,5x16,5 cm.', 0)
insert into Product values (4, 3, 'Privjesak 20 kom. - svjetloplavi', 19.90, 'Privjesak s teksturom veli�ine 3x8 cm, 220 g.', 0)
insert into Product values (4, 3, 'Kuverta 10 kom. - tamnoplava', 21.00, 'Kuverte s blagon teksturom veli�ine 11,5x16 cm, 110 g', 0)
insert into Product values (5, 2, 'Perlice mix 350 g - crveni tonovi', 154.99, 'Mix staklenih perlica raznih oblika i veli�ina za izradu nakita ili dekoracija. Veli�ina 5-22 mm, rupa 0,5-1,5 mm', 0)
insert into Product values (5, 2, 'Perlice mix 350 g - �areno', 154.99, 'Mix staklenih perlica raznih oblika i veli�ina za izradu nakita ili dekoracija. Veli�ina 6-17 mm, rupa 0,5-1,5 mm', 1)
insert into Product values (5, 2, 'Perlice mix 350 g - orkugle', 154.99, 'Mix staklenih perlica raznih oblika i veli�ina za izradu nakita ili dekoracija. Veli�ina 6-13 mm, rupa 0,5-1,5 mm', 1)
insert into Product values (6, 4, 'Pi�tolj za vru�e ljepilo', 63.70, 'Pi�tolj topi ljepilo pri 110�C (niska temperatura) - za �tapi�e od 7 mm.', 1)
insert into Product values (6, 4, 'Ljepilo za pi�tolj 10 kom. - 7 mm', 34.99, 'Bezbojni, prozirni �tapi�i za pi�tolj za ljepilo. Prikladno za nisko- i visokotemperaturne pi�tolje.', 0)
insert into Product values (7, 4, 'Vi�enamjensko ljepilo - prozirno', 25.00, 'Prozirno, bezbojno ljepilo visoke izdr�ljivosti. Primjereno za filc, tkaninu, ko�u, stiropor, drvo, staklo, papir i sli�no.', 0)
insert into Product values (8, 4, 'Kistovi br. 0-20, 2-24 mm, 7 kom.', 112.50, 'Kistovi od najlonskih niti s kratkom dr�kom od drveta - primjereno za rijetke i guste boje. Razli�ite veli�ine 0-20, �irine 2-24 mm.', 0)
insert into Product values (9, 5, 'Staklenke 370 ml - 6 kom.', 75.30, 'Bezbojne staklenke s �epom na odvijanje srebrne boje volumena 370 ml', 0)
insert into Product values (9, 5, 'Kuglice staklene - 8 kom.', 77.20, 'Prozirne vise�e kuglice u 6 varijanti. 8 komada u paketu. Du�ine 2,8-3 cm i �irine 3,5-5,1 cm', 0)
insert into Product values (9, 5, 'Ornament od drva - konji�', 19.90, 'Vise�i ornament od svijetlog drva. Visina 6 cm, �irina 8 cm, debljina 8 mm.', 0)
insert into Product values (9, 5, 'Ornament - �i�mi�', 19.90, 'Vise�i ornament od kartona. Visina 10 cm, �irina 22 cm, debljina 3,5 cm', 1)
go

insert into ProductImage values (1, 'boje2.jpg', 1)
insert into ProductImage values (2, 'boje1.jpg', 1)
insert into ProductImage values (3, 'boje3.jpg', 1)
insert into ProductImage values (4, 'boje4.jpg', 1)
insert into ProductImage values (5, 'boje5.jpg', 1)
insert into ProductImage values (6, 'papir3.jpg', 1)
insert into ProductImage values (7, 'papir2.jpg', 1)
insert into ProductImage values (8, 'papir1.jpg', 1)
insert into ProductImage values (9, 'perl1.jpg', 1)
insert into ProductImage values (10, 'perl2.jpg', 1)
insert into ProductImage values (11, 'perl3.jpg', 1)
insert into ProductImage values (12, 'pribor1.jpg', 1)
insert into ProductImage values (13, 'pribor2.jpg', 1)
insert into ProductImage values (14, 'pribor3.jpg', 1)
insert into ProductImage values (15, 'pribor4.jpg', 1)
insert into ProductImage values (16, 'dodaci1.jpg', 1)
insert into ProductImage values (17, 'dodaci2.jpg', 1)
insert into ProductImage values (18, 'dodaci4.jpg', 1)
insert into ProductImage values (19, 'dodaci3.jpg', 1)
go

insert into UserData values ('user', 'user', 'user')
insert into UserData values ('admin', 'admin', 'admin')
insert into UserData values ('amaurov', '123', 'user')
insert into UserData values ('kokica', '12345', 'user')
go

insert into OrderDetails values (1, GETDATE(), 115.96, 'Anton Maurovic,Neka Ulica 1,10000 Zagreb,Hrvatska', '123123', 'gotovina')

select * from OrderDetails