create or replace TRIGGER alumnoMenor18InscripcionTutor
BEFORE 
INSERT OR UPDATE ON MATRICULAS
FOR EACH ROW

 BEGIN
  IF(EdadAlumno(:NEW.OID_A)<18 AND :NEW.OID_T=-1)
  
  THEN
   raise_application_error(-20970, 'Se debe de inscribir un tutor ya que el alumno es menor de edad');
  END IF;
  
  END;