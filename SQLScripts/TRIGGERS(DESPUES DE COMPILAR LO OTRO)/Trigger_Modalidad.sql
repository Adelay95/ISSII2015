create or replace TRIGGER MODALIDAD

BEFORE

  INSERT OR UPDATE ON MATRICULAS

FOR EACH ROW
DECLARE

BEGIN
     
     IF MODALIDADPROFESOR(:NEW.OID_P)!=MODALIDADASIGNATURA(:NEW.OID_ASIG)
     THEN 
     RAISE_APPLICATION_ERROR(1, 'La modalidad no tiene relacion con la asignatura');
     end if;
END;