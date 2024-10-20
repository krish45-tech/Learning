CREATE OR REPLACE FUNCTION insert_Fun()
RETURNS TRIGGER AS
$$
DECLARE 
rec RECORD;
BEGIN
	FOR rec IN 
		SELECT m_id FROM m_id WHERE m_id NOT IN (SELECT T_ID FROM T_ID)
	LOOP
		INSERT INTO T_ID (T_ID) VALUES (rec.m_id ::INT);
	END LOOP;

	RETURN NEW;
END
$$
LANGUAGE PLPGSQL;

CREATE OR REPLACE TRIGGER INSERT_TRIGGER
AFTER INSERT 
ON M_ID
FOR EACH ROW
EXECUTE FUNCTION INSERT_FUN();

--> another way
CREATE OR REPLACE FUNCTION insert_fun()
RETURNS TRIGGER AS
$$
BEGIN
    -- Bulk insert all missing m_id values into T_ID
    INSERT INTO T_ID (t_id)
    SELECT m_id 
    FROM m_id 
    WHERE m_id NOT IN (SELECT t_id FROM T_ID);

    -- Return the row being processed (required for triggers)
    RETURN NEW;
END;
$$
LANGUAGE plpgsql;
