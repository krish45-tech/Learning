SELECT count(*) from bizstore where doctype='VARIANT' AND data->'languageId'='"1"';

SELECT COUNT(*) FROM bizstore WHERE doctype='VARIANT' AND data->'languageId'='"1"' AND data->'parentOf'='"M01na730PRFREG2019103031312545UNH001"';

-- update query
SELECT new_level3 AS updated_sku, new_level3->>'productLevel3Id' AS updated_sku_id
                FROM jsonb_array_elements(NEW.data->'level3ProductsList') AS new_level3
                WHERE new_level3->>'productLevel3Id' NOT IN (
                    SELECT old_level3->>'productLevel3Id' 
                    FROM jsonb_array_elements(OLD.data->'level3ProductsList') AS old_level3
                    WHERE old_level3->'LUT' < new_level3->'LUT'
                )            