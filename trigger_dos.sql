/*
    TRIGGER:
    IMPEDIR QUE UN USUARIO SE REGISTRE CON EL MISMO CORREO
*/
CREATE OR REPLACE FUNCTION impedir_registro()
    RETURNS TRIGGER 
    LANGUAGE PLPGSQL
    AS
$$
DECLARE
	-- Cursor EXPLICITO
	cur_correo CURSOR FOR SELECT usuario_correo FROM USUARIO;
    reg RECORD;
BEGIN
    FOR reg IN cur_correo
    LOOP
        IF NEW.usuario_correo = reg.usuario_correo THEN
            RAISE EXCEPTION 'El correo: % ya está en uso.', reg.usuario_correo;
        END IF;
    END LOOP;
    RETURN NEW;
END;
$$

CREATE TRIGGER impedir_registro
  BEFORE INSERT
  ON USUARIO
  FOR EACH ROW
  EXECUTE PROCEDURE impedir_registro();
  
-- COMPROBACIÓN
SELECT * FROM USUARIO
-- MUESTRA QUE EL CORREO YA ESTÁ EN USO
INSERT INTO USUARIO VALUES (6, 'Paulo', 'Gonu', '2020-11-15', '18:00:00',1, 1, 'jhon@gmail.com');
