/*
    TRIGGER:
    IMPEDIR QUE UN USUARIO TENGA DOS CITAS EL MISMO DIA
*/
CREATE OR REPLACE FUNCTION impedir_cita()
    RETURNS TRIGGER 
    LANGUAGE PLPGSQL
    AS
$$
DECLARE
    reg RECORD;
BEGIN
    -- Cursor IMPLICITO en el ciclo FOR
    FOR reg IN SELECT usuariocita_uno, usuariocita_dos, cita_fecha
    FROM USUARIOCITA
    INNER JOIN USUARIO on USUARIO.usuario_id = USUARIOCITA.usuariocita_uno
    INNER JOIN PAREJA on USUARIOCITA.usuariocita_dos = PAREJA.id_dos
    LOOP
        IF reg.usuariocita_uno = NEW.usuariocita_uno and new.cita_fecha < reg.cita_fecha + integer '1' THEN
            RAISE EXCEPTION 'Ya tienes una cita hoy.';
        END IF;
        IF reg.usuariocita_dos = NEW.usuariocita_dos and new.cita_fecha < reg.cita_fecha + integer '1' THEN
            RAISE EXCEPTION 'Ya tienes una cita hoy.';
        END IF;
            IF reg.usuariocita_uno = NEW.usuariocita_dos and new.cita_fecha < reg.cita_fecha + integer '1' THEN
            RAISE EXCEPTION 'Ya tienes una cita hoy.';
        END IF;
        IF reg.usuariocita_dos = NEW.usuariocita_uno and new.cita_fecha < reg.cita_fecha + integer '1' THEN
            RAISE EXCEPTION 'Ya tienes una cita hoy.';
        END IF;
    END LOOP;
    RETURN NEW;
END;
$$

CREATE TRIGGER impedir_cita
  BEFORE INSERT
  ON USUARIOCITA
  FOR EACH ROW
  EXECUTE PROCEDURE impedir_cita();

-- COMPROBACIÓN
SELECT * FROM USUARIOCITA
-- NO PERMITE AL USUARIO TENER DOS CITAS EL MISMO DIA
INSERT INTO USUARIOCITA VALUES (4, 1, 4, '2020-11-14', '18:00:00');
-- AL DIA SIGUIENTE SI LO PERMITE
INSERT INTO USUARIOCITA VALUES (4, 1, 4, '2020-11-15', '18:00:00');
