INSERT INTO main_table(id,data) values(11,'{"isBulk":false
    "level3":[{"level3_id":1,"level3_name":"krish"},{"id":2,"name":"gopi"}]
}');

CREATE OR REPLACE FUNCTION IUD_trigger_fun()
    RETURNS TRIGGER
    LANGUAGE PLPGSQL
AS $$
DECLARE
leve3_count int;
BEGIN
    IF leve3_count>0 THEN
        FOR 0..leve3_count-1 LOOP
            level3_data=NEW.data->'level3'->1
            INSERT INTO trigger_table(id,isBulk,level3Data,level3Id,level3Name)
                                VALUES(NEW.id,COALESCE(NEW.data->'isBulk',''),level3_data,level3_data->>'level3_id',level3_data->>'level3_name')
                                SELECT level3_data FROM jsonb_array_elements(NEW.data->'level3') AS level3_data
                                ON CONFLICT(level3_id)
                                DO UPDATE SET
                                            level3Data=level3_data,
                                            level3Name=level3_data->'level3_name';
        END LOOP;
    END IF;
    RETURN NEW;
END $$;
    