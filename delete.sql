CREATE OR REPLACE FUNCTION data_insert_trigger_fun()
  RETURNS TRIGGER 
  LANGUAGE PLPGSQL  
AS
$$
DECLARE 
old_level3_count INT;
new_level3_count INT;
rec RECORD;
BEGIN
    old_level3_count :=jsonb_array_length(OLD.data->'level3ProductsList');
    new_level3_count := jsonb_array_length(NEW.data->'level3ProductsList');

    IF old_level3_count < new_level3_count THEN


    END iF;

    RETURN NEW;
END;
$$;