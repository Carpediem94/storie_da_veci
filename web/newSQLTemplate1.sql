SELECT U.NOME FROM carpediem.Utente AS U
                        JOIN carpediem.Post AS P
                        ON U.id_utente = P.utente
                       WHERE P.id_post = 114;
UNION
SELECT U.COGNOME FROM carpediem.Utente AS U
                        JOIN carpediem.Post AS P
                        ON U.id_utente = P.utente
                       WHERE P.id_post = 114;
