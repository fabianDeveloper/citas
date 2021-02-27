/*==============================================================*/
/* Datos: PAIS                                                  */
/*==============================================================*/
INSERT INTO PAIS VALUES (1, 'Ecuador');
INSERT INTO PAIS VALUES (2, 'España');

/*==============================================================*/
/* Datos: CIUDAD                                                */
/*==============================================================*/
INSERT INTO CIUDAD VALUES (1, 'Manta');
INSERT INTO CIUDAD VALUES (2, 'Madrid');

/*==============================================================*/
/* Datos: MÚSICA                                                */
/*==============================================================*/
INSERT INTO MUSICA VALUES (1, 'Pop');
INSERT INTO MUSICA VALUES (2, 'Rock');

/*==============================================================*/
/* Datos: DEPORTE                                               */
/*==============================================================*/
INSERT INTO DEPORTE VALUES (1, 'Basquet');
INSERT INTO DEPORTE VALUES (2, 'Futbol');

/*==============================================================*/
/* Datos: HOBBY                                                 */
/*==============================================================*/
INSERT INTO HOBBY VALUES (1, 'Estudiante');
INSERT INTO HOBBY VALUES (2, 'Blogger');

/*==============================================================*/
/* Datos: USUARIO                                               */
/*==============================================================*/
INSERT INTO USUARIO
VALUES (1, 'Ian', 'Medina', '2020-11-14', '15:00:00', 1, 1, 'ian@gmail.com');
INSERT INTO USUARIO
VALUES (2, 'Mel', 'Santos', '2020-11-14', '14:00:00',1, 1, 'mel@gmail.com');
INSERT INTO USUARIO
VALUES (3, 'Sebas', 'Proaño', '2020-11-14', '08:00:00',2, 2, 'sebas@gmail.com');
INSERT INTO USUARIO
VALUES (4, 'Adri', 'Gilces', '2020-11-14', '10:00:00',2, 2, 'adri@gmail.com');
INSERT INTO USUARIO
VALUES (5, 'Jhon', 'Vera', '2020-11-15', '18:00:00',1, 1, 'jhon@gmail.com');

/*==============================================================*/
/* Datos: HOBBYUSUARIO                                          */
/*==============================================================*/
INSERT INTO HOBBYUSUARIO
VALUES (1, 1, 1);
INSERT INTO HOBBYUSUARIO
VALUES (2, 2, 2);
INSERT INTO HOBBYUSUARIO
VALUES (3, 1, 3);
INSERT INTO HOBBYUSUARIO
VALUES (4, 2, 4);
INSERT INTO HOBBYUSUARIO
VALUES (5, 1, 5);
INSERT INTO HOBBYUSUARIO
VALUES (6, 2, 1);

/*==============================================================*/
/* Datos: DEPORTEUSUARIO                                        */
/*==============================================================*/
INSERT INTO DEPORTEUSUARIO
VALUES (1, 1, 1);
INSERT INTO DEPORTEUSUARIO
VALUES (2, 2, 2);
INSERT INTO DEPORTEUSUARIO
VALUES (3, 1, 3);
INSERT INTO DEPORTEUSUARIO
VALUES (4, 2, 4);
INSERT INTO DEPORTEUSUARIO
VALUES (5, 1, 5);
INSERT INTO DEPORTEUSUARIO
VALUES (6, 2, 1);

/*==============================================================*/
/* Datos: MUSICAUSUARIO                                         */
/*==============================================================*/
INSERT INTO MUSICAUSUARIO
VALUES (1, 1, 1);
INSERT INTO MUSICAUSUARIO
VALUES (2, 2, 2);
INSERT INTO MUSICAUSUARIO
VALUES (3, 1, 3);
INSERT INTO MUSICAUSUARIO
VALUES (4, 2, 4);
INSERT INTO MUSICAUSUARIO
VALUES (5, 1, 5);
INSERT INTO MUSICAUSUARIO
VALUES (6, 2, 1);

/*==============================================================*/
/* Datos: USUARIOCITA                                           */
/*==============================================================*/
INSERT INTO USUARIOCITA
VALUES (1, 1, 2, '2020-11-14', '18:00:00');
INSERT INTO USUARIOCITA
VALUES (2, 3, 4, '2020-11-14', '20:00:00');
INSERT INTO USUARIOCITA
VALUES (3, 1, 4, '2020-11-14', '09:00:00');

/*==============================================================*/
/* Datos: CALIFICACION                                          */
/*==============================================================*/
INSERT INTO CALIFICACION
VALUES (1, 1, 3, 'Llego tarde a la cita');
INSERT INTO CALIFICACION
VALUES (2, 2, 4, 'Es muy amable');
INSERT INTO CALIFICACION
VALUES (3, 3, 3, 'Se fue de la cita');
INSERT INTO CALIFICACION
VALUES (4, 4, 5, 'Es hermosa');
INSERT INTO CALIFICACION
VALUES (5, 1, 2, 'No llego a la cita');
INSERT INTO CALIFICACION
VALUES (6, 4, 4, 'Es respetuosa y cariñosa');
