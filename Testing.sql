id;                         NEW.id
data;                       new_data
product;                    NEW.data->'level3ProductsList'->0
base_category_id;           NEW.data->'baseCategory'->'id'
base_category_value;        NEW.data->'baseCategory'->'value'
storetype;                  NEW.data->'storeType'
productlevel1_id;           NEW.data->'productLevel1Id'  
productlevel1_title;        NEW.data->'productLevel1Title'
productlevel2_id;           NEW.data->'productLevel2Id'
productlevel2_title;        NEW.data->'productLevel2Title'
productlevel3_id;           product_data->'productLevel3Id'
productlevel3_title;        product_data->'productLevel3Title'
stores;                     NEW.data->'stores'
domain;                     COALESCE(NEW.data->'domain','')
hsncode;                    COALESCE(product_data->'hsncode','') 
main_category_id;           NEW.data->'categories'->0->'mainCategory'->'id'
main_category_value;        NEW.data->'categories'->0->'mainCategory'->'value'
sub_category1_id;           COALESCE(NEW.data->'categories'->0->'subCategory1'->'id','')
sub_category1_value;        COALESCE(NEW.data->'categories'->0->'subCategory1'->'value','')
sub_category2_id;           COALESCE(NEW.data->'categories'->0->'subCategory2'->'id','')
sub_category2_value;        COALESCE(NEW.data->'categories'->0->'subCategory2'->'value',''),
sub_category3_id;           COALESCE(NEW.data->'categories'->0->'subCategory3'->'id',''),
sub_category3_value;        COALESCE(NEW.data->'categories'->0->'subCategory3'->'value',''),
manufacturer_profilekey;      NEW.data->'manufacturerDetails'->'profileKey'
manufacturer_firstname;       NEW.data->'manufacturerDetails'->'firstName'
manufacturer_businesskey;     NEW.data->'manufacturerDetails'->'businessKey'
manufacturer_business_typename;      NEW.data->'manufacturerDetails'->'businessTypeName'
manufacturer_profile_pic_url;       NEW.data->'manufacturerDetails'->'profilePicURL'
manufacturer_lat_long;          NEW.data->'manufacturerDetails'->'latLong'
manufacturer_location;          NEW.data->'manufacturerDetails'->'location'
manufacturer_contact_info;       NEW.data->'manufacturerDetails'->'contactInfo'
manufacturer_district;          NEW.data->'manufacturerDetails'->'district'
manufacturer_state;             NEW.data->'manufacturerDetails'->'state'
manufacturer_country;           NEW.data->'manufacturerDetails'->'country'
manufacturer_memberof;          NEW.data->'manufacturerDetails'->'memberOf'
reseller_profilekey;            COALESCE(NEW.data->'resellerDetails'->'profileKey','')
reseller_firstname;             COALESCE(NEW.data->'resellerDetails'->'firstName','')
reseller_businesskey;           COALESCE(NEW.data->'resellerDetails'->'firstName','')
reseller_businesstype_name;     COALESCE(NEW.data->'resellerDetails'->'firstName','')
reseller_profilepic_url;        COALESCE(NEW.data->'resellerDetails'->'firstName','')
reseller_lat_long;               COALESCE(NEW.data->'resellerDetails'->'firstName','')
reseller_location;               COALESCE(NEW.data->'resellerDetails'->'firstName','')
reseller_contactinfo;            COALESCE(NEW.data->'resellerDetails'->'firstName','')
reseller_district;                 COALESCE(NEW.data->'resellerDetails'->'firstName','')
reseller_state;                    COALESCE(NEW.data->'resellerDetails'->'firstName','')
reseller_country;                    COALESCE(NEW.data->'resellerDetails'->'firstName','')
reseller_memberof;                 COALESCE(NEW.data->'resellerDetails'->'firstName','')
parentof;                           COALESCE(NEW.data->'parentOf','')
attachments;                        COALESCE(product_data->'attachments'->'attachments','')
sellertype;                         NEW.data->'sellerType'
tenure;                             ''
loanamount;                         ''
presanction;                        ''
postsanction;                       ''
otherdocuments;                     ''
specialtags;                        ''
revolvingtypes;                     ''
shareholdermembers;                 ''
isonline;                           ''
isoffline;                          ''
shipping;                           product_data->'shipping'
shipping_details;                   product_data->'shippingDetails'
sku_createdts;                      product_data->'createdTS'
sku_lut;                            product_data->'LUT'
mrp;                                product_data->'mrp'
price_per_unit;                     producr_data->'pricePerUnit'
smart_elements;                     product_data->'smartElements'
tax_details;                        product_data->'taxDetails'
isbulkorder;                        product_data->'isBulkOrder'
selected_trade_specifications;      product_data->'selectedTrSpecsQuery'
master_product_type;                NEW.data->'productType'
base_product_id;                    NEW.data->'baseProduct'->'productId'
base_product_name;                  NEW.data->'baseProduct'->'productName'
variety_id;                         NEW.data->'variety'->'productId'
variety_name;                       NEW.data->'variety'->'productName'
derivative_id;                      COALESCE(NEW.data->'derivative'->'productId')
derivative_name;                     COALESCE(NEW.data->'derivative'->'productName')
varietyof_id;                       NEW.data->'varietyOf'->'VProductId'
varietyof_name;                     NEW.data->'varietyOf'->'VProductName'
derivativeof_id;                    COALESCE(NEW.data->'derivativeOf'->'vproductId','')
derivativeof_name;                  COALESCE(NEW.data->'derivativeof'->'vproductName','')
variant_createdby_profilekey;       NEW.data->'createdBy'->'profileKey'
variant_createdby_firstname;        NEW.data->'createdBy'->'firstName'
variant_updatedby_profilekey;       NEW.data->'updatedBy'->'profileKey'
variant_updatedby_firstname;        NEW.data->'updatedBy'->'firstName'
variant_ispublished;                NEW.data->'isPublished'
variant_isreviewaccepted;           NEW.data->'isReviewAccepted'
variant_isreviewinprogress;         NEW.data->'isReviewInProgress'
variant_isforreview;                NEW.data->'isForReview'
variant_createdts;                  NEW.data->'createdTS'    
variant_lut;                        NEW.data->'LUT'
sku_createdby_profilekey;           product_data->'createdBy'->'profileKey'
sku_createdby_firstname;            product_data->'createdBy'->'firstName'
sku_updatedby_profilekey;           product_data->'updatedBy'->'profileKey'
sku_updatedby_firstname;            product_data->'updatedBy'->'firstName'
sku_isforreview;                    product_data->'isForReview'
sku_ispublished;                    product_data->'isPublished'
sku_isreviewinprogress;             product_data->'isReviewInProgress'
sku_isreviewaccepted;               product_data->'isReviewAccepted' 
appname;                            NEW.data->'appName'
isunifiedstoreproduct;              NEW.data->'isUnifiedStoreProduct'