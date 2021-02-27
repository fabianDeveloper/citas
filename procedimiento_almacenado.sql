/*
    PROCEDIMIENTO ALMACENADO:
    INGRESAR UN NOMBRE Y QUE DEVUELVA LAS CITAS QUE HA TENIDO
*/
CREATE OR REPLACE FUNCTION citas_usuario(varchar)
    RETURNS TABLE(persona_uno varchar, persona_dos varchar, fecha date)
	LANGUAGE PLPGSQL
    AS
$$
DECLARE
	nombre ALIAS FOR $1;
BEGIN
    RETURN query SELECT usuario_nombre, usuario_dos, cita_fecha
	FROM USUARIOCITA
	INNER JOIN USUARIO ON usuario.usuario_id = usuariocita.usuariocita_uno
	INNER JOIN PAREJA ON usuariocita.usuariocita_dos = pareja.id_dos
	WHERE usuario_nombre = initcap(nombre) OR usuario_dos = initcap(nombre);
END;
$$

-- COMPROBACIÓN
SELECT * FROM citas_usuario('iAn')
