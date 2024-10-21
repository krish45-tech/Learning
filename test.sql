CREATE OR REPLACE FUNCTION public.data_insert_trigger_fun()                                                       +
                   |  RETURNS trigger                                                                                                  +
                   |  LANGUAGE plpgsql                                                                                                 +
                   | AS $function$                                                                                                     +
                   | DECLARE                                                                                                           +
                   | level3_count INT;                                                                                                 +
                   | new_data jsonb;                                                                                                   +
                   | product_data jsonb;                                                                                               +
                   | i INT;                                                                                                            +
                   | BEGIN                                                                                                             +
                   |     level3_count := jsonb_array_length(NEW.data->'level3ProductsList');                                           +
                   |     new_data :=NEW.data-'level3ProductsList';                                                                     +
                   |         IF level3_count > 0 THEN                                                                                  +
                   |                                                                                                                   +
                   |         FOR i IN 0..(level3_count-1) LOOP                                                                         +
                   |             product_data := NEW.data->'level3ProductsList'->i;                                                    +
                   |                 INSERT INTO trigger_table ( id,                                                                   +
                   |                                             data,                                                                 +
                   |                                             product,                                                              +
                   |                                             base_category_id,                                                     +
                   |                                             base_category_value,                                                  +
                   |                                             storetype,                                                            +
                   |                                             productlevel1_id,                                                     +
                   |                                             productlevel1_title,                                                  +
                   |                                             productlevel2_id,                                                     +
                   |                                             productlevel2_title,                                                  +
                   |                                             productlevel3_id,                                                     +
                   |                                             productlevel3_title,                                                  +
                   |                                             stores,                                                               +
                   |                                             domain,                                                               +
                   |                                             hsncode,                                                              +
                   |                                             main_category_id,                                                     +
                   |                                             main_category_value,                                                  +
                   |                                             sub_category1_id,                                                     +
                   |                                             sub_category1_value,                                                  +
                   |                                             sub_category2_id,                                                     +
                   |                                             sub_category2_value,                                                  +
                   |                                             sub_category3_id,                                                     +
                   |                                             sub_category3_value,                                                  +
                   |                                             manufacturer_profilekey,                                              +
                   |                                             manufacturer_firstname,                                               +
                   |                                             manufacturer_businesskey,                                             +
                   |                                             manufacturer_business_typename,                                       +
                   |                                             manufacturer_profile_pic_url,                                         +
                   |                                             manufacturer_lat_long,                                                +
                   |                                             manufacturer_location,                                                +
                   |                                             manufacturer_contact_info,                                            +
                   |                                             manufacturer_district,                                                +
                   |                                             manufacturer_state,                                                   +
                   |                                             manufacturer_country,                                                 +
                   |                                             manufacturer_memberof,                                                +
                   |                                             reseller_profilekey,                                                  +
                   |                                             reseller_firstname,                                                   +
                   |                                             reseller_businesskey,                                                 +
                   |                                             reseller_businesstype_name,                                           +
                   |                                             reseller_profilepic_url,                                              +
                   |                                             reseller_lat_long,                                                    +
                   |                                             reseller_location,                                                    +
                   |                                             reseller_contactinfo,                                                 +
                   |                                             reseller_district,                                                    +
                   |                                             reseller_state,                                                       +
                   |                                             reseller_country,                                                     +
                   |                                             reseller_memberof,                                                    +
                   |                                             parentof,                                                             +
                   |                                             attachments,                                                          +
                   |                                             sellertype,                                                           +
                   |                                             tenure,                                                               +
                   |                                             loanamount,                                                           +
                   |                                             presanction,                                                          +
                   |                                             postsanction,                                                         +
                   |                                             otherdocuments,                                                       +
                   |                                             specialtags,                                                          +
                   |                                             revolvingtypes,                                                       +
                   |                                             shareholdermembers,                                                   +
                   |                                             isonline,                                                             +
                   |                                             isoffline,                                                            +
                   |                                             shipping,                                                             +
                   |                                             shipping_details,                                                     +
                   |                                             sku_createdts,                                                        +
                   |                                             sku_lut,                                                              +
                   |                                             mrp,                                                                  +
                   |                                             price_per_unit,                                                       +
                   |                                             smart_elements,                                                       +
                   |                                             tax_details,                                                          +
                   |                                             isbulkorder,                                                          +
                   |                                             selected_trade_specifications,                                        +
                   |                                             master_product_type,                                                  +
                   |                                             base_product_id,                                                      +
                   |                                             base_product_name,                                                    +
                   |                                             variety_id,                                                           +
                   |                                             variety_name,                                                         +
                   |                                             derivative_id,                                                        +
                   |                                             derivative_name,                                                      +
                   |                                             varietyof_id,                                                         +
                   |                                             varietyof_name,                                                       +
                   |                                             derivativeof_id,                                                      +
                   |                                             derivativeof_name,                                                    +
                   |                                             variant_createdby_profilekey,                                         +
                   |                                             variant_createdby_firstname,                                          +
                   |                                             variant_updatedby_profilekey,                                         +
                   |                                             variant_updatedby_firstname,                                          +
                   |                                             variant_ispublished,                                                  +
                   |                                             variant_isreviewaccepted,                                             +
                   |                                             variant_isreviewinprogress,                                           +
                   |                                             variant_isforreview,                                                  +
                   |                                             variant_createdts,                                                    +
                   |                                             variant_lut,                                                          +
                   |                                             sku_createdby_profilekey,                                             +
                   |                                             sku_createdby_firstname,                                              +
                   |                                             sku_updatedby_profilekey,                                             +
                   |                                             sku_updatedby_firstname,                                              +
                   |                                             sku_isforreview,                                                      +
                   |                                             sku_ispublished,                                                      +
                   |                                             sku_isreviewinprogress,                                               +
                   |                                             sku_isreviewaccepted,                                                 +
                   |                                             appname,                                                              +
                   |                                             isunifiedstoreproduct                                                 +
                   |                                             ) VALUES (                                                            +
                   |                                                 OLD.id,                                                           +
                   |                                                 new_data,                                                         +
                   |                                                 product_data,                                                     +
                   |                                                 COALESCE(NEW.data->'baseCategory'->>'id',''),                     +
                   |                                                 COALESCE(NEW.data->'baseCategory'->>'value',''),                  +
                   |                                                 COALESCE(NEW.data->>'storeType',''),                              +
                   |                                                 COALESCE(NEW.data->>'productLevel1Id',''),                        +
                   |                                                 COALESCE(NEW.data->>'productLevel1Title',''),                     +
                   |                                                 COALESCE(NEW.data->>'productLevel2Id',''),                        +
                   |                                                 COALESCE(NEW.data->>'productLevel2Title',''),                     +
                   |                                                 COALESCE(product_data->>'productLevel3Id',''),                    +
                   |                                                 COALESCE(product_data->>'productLevel3Title',''),                 +
                   |                                                 COALESCE(NEW.data->'stores','{}'):: jsonb,                        +
                   |                                                 COALESCE(NEW.data->>'domain',''),                                 +
                   |                                                 COALESCE(product_data->>'hsncode',''),                            +
                   |                                                 COALESCE(NEW.data->'categories'->0->'mainCategory'->>'id',''),    +
                   |                                                 COALESCE(NEW.data->'categories'->0->'mainCategory'->>'value',''), +
                   |                                                 COALESCE(NEW.data->'categories'->0->'subCategory1'->>'id',''),    +
                   |                                                 COALESCE(NEW.data->'categories'->0->'subCategory1'->>'value',''), +
                   |                                                 COALESCE(NEW.data->'categories'->0->'subCategory2'->>'id',''),    +
                   |                                                 COALESCE(NEW.data->'categories'->0->'subCategory2'->>'value',''), +
                   |                                                 COALESCE(NEW.data->'categories'->0->'subCategory3'->>'id',''),    +
                   |                                                 COALESCE(NEW.data->'categories'->0->'subCategory3'->>'value',''), +
                   |                                                 COALESCE(NEW.data->'manufacturerDetails'->>'profileKey',''),      +
                   |                                                 COALESCE(NEW.data->'manufacturerDetails'->>'firstName',''),       +
                   |                                                 COALESCE(NEW.data->'manufacturerDetails'->>'businessKey',''),     +
                   |                                                 COALESCE(NEW.data->'manufacturerDetails'->>'businessTypeName',''),+
                   |                                                 COALESCE(NEW.data->'manufacturerDetails'->>'profilePicURL',''),   +
                   |                                                 COALESCE(NEW.data->'manufacturerDetails'->>'latLong',''),         +
                   |                                                 COALESCE(NEW.data->'manufacturerDetails'->>'location',''),        +
                   |                                                 COALESCE(NEW.data->'manufacturerDetails'->>'contactInfo',''),     +
                   |                                                 COALESCE(NEW.data->'manufacturerDetails'->>'district',''),        +
                   |                                                 COALESCE(NEW.data->'manufacturerDetails'->>'state',''),           +
                   |                                                 COALESCE(NEW.data->'manufacturerDetails'->>'country',''),         +
                   |                                                 COALESCE(NEW.data->'manufacturerDetails'->'memberOf','{}')::jsonb,+
                   |                                                 COALESCE(NEW.data->'resellerDetails'->>'profileKey',''),          +
                   |                                                 COALESCE(NEW.data->'resellerDetails'->>'firstName',''),           +
                   |                                                 COALESCE(NEW.data->'resellerDetails'->>'businessKey',''),         +
                   |                                                 COALESCE(NEW.data->'resellerDetails'->>'businessTypeName',''),    +
                   |                                                 COALESCE(NEW.data->'resellerDetails'->>'profilePicURL',''),       +
                   |                                                 COALESCE(NEW.data->'resellerDetails'->>'latLong',''),             +
                   |                                                 COALESCE(NEW.data->'resellerDetails'->>'location',''),            +
                   |                                                 COALESCE(NEW.data->'resellerDetails'->>'contactInfo',''),         +
                   |                                                 COALESCE(NEW.data->'resellerDetails'->>'district',''),            +
                   |                                                 COALESCE(NEW.data->'resellerDetails'->>'state',''),               +
                   |                                                 COALESCE(NEW.data->'resellerDetails'->>'country',''),             +
                   |                                                 COALESCE(NEW.data->'resellerDetails'->'memberOf','{}')::jsonb,    +
                   |                                                 COALESCE(NEW.data->>'parentOf',''),                               +
                   |                                                 COALESCE(product_data->'attachments'->'attachments','{}')::jsonb, +
                   |                                                 COALESCE(NEW.data->>'sellerType',''),                             +
                   |                                                 null,                                                             +
                   |                                                 null,                                                             +
                   |                                                 null,                                                             +
                   |                                                 null,                                                             +
                   |                                                 null,                                                             +
                   |                                                 null,                                                             +
                   |                                                 null,                                                             +
                   |                                                 null,                                                             +
                   |                                                 null,                                                             +
                   |                                                 null,                                                             +
                   |                                                 COALESCE(product_data->>'shipping',''),                           +
                   |                                                 COALESCE(product_data->'shippingDetails','{}'),                   +
                   |                                                 COALESCE(product_data->>'createdTS',''),                          +
                   |                                                 COALESCE(product_data->>'LUT',''),                                +
                   |                                                 COALESCE(product_data->>'mrp',''),                                +
                   |                                                 COALESCE(product_data->>'pricePerUnit',''),                       +
                   |                                                 COALESCE(product_data->'smartElements','{}'),                     +
                   |                                                 COALESCE(product_data->'taxDetails','{}'),                        +
                   |                                                 (product_data->>'isBulkOrder'):: boolean,                         +
                   |                                                 COALESCE(product_data->'selectedTrSpecsQuery','{}'),              +
                   |                                                 COALESCE(NEW.data->>'productType',''),                            +
                   |                                                 COALESCE(NEW.data->'baseProduct'->>'productId',''),               +
                   |                                                 COALESCE(NEW.data->'baseProduct'->>'productName',''),             +
                   |                                                 COALESCE(NEW.data->'variety'->>'productId',''),                   +
                   |                                                 COALESCE(NEW.data->'variety'->>'productName',''),                 +
                   |                                                 COALESCE(NEW.data->'derivative'->>'productId',''),                +
                   |                                                 COALESCE(NEW.data->'derivative'->>'productName',''),              +
                   |                                                 COALESCE(NEW.data->'varietyOf'->>'VProductId',''),                +
                   |                                                 COALESCE(NEW.data->'varietyOf'->>'VProductName',''),              +
                   |                                                 COALESCE(NEW.data->'derivativeof'->>'productId',''),              +
                   |                                                 COALESCE(NEW.data->'derivativeof'->>'productName',''),            +
                   |                                                 COALESCE(NEW.data->'createdBy'->>'profileKey',''),                +
                   |                                                 COALESCE(NEW.data->'createdBy'->>'firstName',''),                 +
                   |                                                 COALESCE(NEW.data->'updatedBy'->>'profileKey',''),                +
                   |                                                 COALESCE(NEW.data->'updatedBy'->>'firstName',''),                 +
                   |                                                 (NEW.data->>'isPublished')::boolean,                              +
                   |                                                 (NEW.data->>'isReviewAccepted')::boolean,                         +
                   |                                                 (NEW.data->>'isReviewInProgress')::boolean,                       +
                   |                                                 (NEW.data->>'isForReview')::boolean,                              +
                   |                                                 COALESCE(NEW.data->>'createdTS',''),                              +
                   |                                                 COALESCE(NEW.data->>'LUT',''),                                    +
                   |                                                 COALESCE(product_data->'createdBy'->>'profileKey',''),            +
                   |                                                 COALESCE(product_data->'createdBy'->>'firstName',''),             +
                   |                                                 COALESCE(product_data->'updatedBy'->>'profileKey',''),            +
                   |                                                 COALESCE(product_data->'updatedBy'->>'firstName',''),             +
                   |                                                 (product_data->>'isForReview')::boolean,                          +
                   |                                                 (product_data->>'isPublished')::boolean,                          +
                   |                                                 (product_data->>'isReviewInProgress')::boolean,                   +
                   |                                                 (product_data->>'isReviewAccepted')::boolean,                     +
                   |                                                 COALESCE(NEW.data->>'appName',''),                                +
                   |                                                 (NEW.data->>'isUnifiedStoreProduct')::boolean                     +
                   |                                             );                                                                    +
                   |         END LOOP;                                                                                                 +
                   |                                                                                                                   +
                   |         END IF;                                                                                                   +
                   |                                                                                                                   +
                   |         RETURN NEW;                                                                                               +
                   | END