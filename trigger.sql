CREATE OR REPLACE TRIGGER sku_insert_trigger
AFTER UPDATE
ON gopi_table
FOR EACH ROW
EXECUTE FUNCTION data_insert_trigger_fun();

UPDATE gopi_table SET data = jsonb_set(data, '{actionPerformed}','"UPDATE"');

UPDATE gopi_table SET data=jsonb_insert(data,'{nutrients,0}','20cal') where id='3wrl';

UPDATE gopi_table SET data = jsonb_set(data, '{nutrients}', (data->'nutrients')::jsonb || '["20 cal"]') WHERE id = '3wrl';

UPDATE gopi_table SET data = jsonb_set(data, '{category}','"Plant Protection"') WHERE id = '090x';

UPDATE gopi_table SET data = jsonb_set(data, '{dosage}', (data->'dosage')::jsonb || '["2mg"]') WHERE id = '091n';

UPDATE gopi_table SET data=jsonb_delete_path(data,'{level3ProductsList,4}') WHERE id='091n';

UPDATE gopi_table SET data = jsonb_set(data, '{level3ProductsList,4}', '{
"LUT":"2019-06-07T10:04:05.794Z",
"mrp":425,
"cgst":0,
"sgst":0,
"size":"",
"color":"",
"shape":"",
"s3Path":"data/storeProducts/farmer/productLevel2/",
"weight":"",
"shortId":"p0004f5",
"createdBy":{
"location":"Jamnagar, Gujarat IND",
"firstName":"Sulfozyme Agro India Pvt. Ltd.",
"profileKey":"M01mgis0PRFREG2019060323744584UNH001",
"profilePicURL":"https://kalgudi.com/data/profilepics/M01mgis0PRFREG2019060323744584UNH001.png"
},
"createdTS":"2019-06-03T09:02:05.873Z",
"orderType":"",
"updatedBy":{
"location":"Jamnagar, Gujarat IND",
"firstName":"Sulfozyme Agro India Pvt. Ltd.",
"profileKey":"M01mgis0PRFREG2019060323744584UNH001",
"profilePicURL":"https://kalgudi.com/data/profilepics/M01mgis0PRFREG2019060323744584UNH001.png"
},
"languageId":"1",
"reviewedBy":{
"location":"Ranga Reddy, Telangana IND",
"firstName":"Ambadas Kulkarni",
"profileKey":"M00j48o0PRFREG2017020640673778UNH001",
"profilePicURL":"https://www.kalgudi.com/data/profilepics/M00j48o0PRFREG2017020640673778UNH001.png?1519119679507"
},
"reviewedOn":"2019-06-07T10:04:05.794Z",
"taxDetails":{
"cgst":0,
"sgst":0
},
"attachments":{
"attachments":[
{
"url":"/data/p_images/O01mgis0CTLGPROLEVEL32019060332525873UNH001_1559552525958.jpg",
"context":"",
"msgType":"IMAGE"
}
]
},
"isBulkOrder":false,
"isForReview":true,
"isPublished":true,
"selectedSKU":[
"weight"
],
"handlingCost":"0",
"languageName":"English",
"pricePerUnit":"425",
"shippingCost":"0",
"level3ShortId":"091p",
"packagingCost":"0",
"smartElements":{
"color":{
"type":"text",
"units":[
],
"enabled":false
},
"shape":{
"type":"text_option",
"units":[
],
"enabled":false
},
"weight":{
"type":"text_option",
"unit":"kg",
"units":[
],
"value":5,
"enabled":true
},
"diameter":{
"type":"text_option",
"units":[
],
"enabled":false
},
"setCount":{
"type":"text_option",
"units":[
],
"enabled":false
},
"dimensions":{
"type":"text_option",
"units":[
],
"width":{
"enabled":false
},
"height":{
"enabled":false
},
"length":{
"enabled":false
},
"enabled":false
},
"sizeByName":{
"type":"text_option",
"units":[
],
"enabled":false
},
"smartLabel":{
"type":"text_option",
"units":[
],
"enabled":false
},
"sizeByNumber":{
"type":"text_option",
"units":[
],
"enabled":false
}
},
"resellersCount":0,
"handlingDetails":{
"cost":"0",
"terms":""
},
"productLevel1Id":"O01mgis0CTLGPROLEVEL12019060326091978UNH001",
"productLevel2Id":"091n",
"productLevel3Id":"091p",
"shippingDetails":{
"cost":"0",
"terms":"",
"weight":{
"unit":0,
"value":0
},
"dimension":{
"unit":"",
"width":0,
"height":0,
"length":0
}
},
"isReviewAccepted":true,
"packagingDetails":{
"cost":"0",
"terms":0
},
"skuSpecifications":"Chemical Formula: ZnSO4.H2O\nPhysical Condition: Zinc Sulphate Monohydrate is a granulated/white free-flowing powder.\nFarm Types: Cropping, Dairy, Livestock, Lifestyle\nSpecific Gravity / Density : 3.28 gm/cm3 (205 lbs/ft3)\nMelting Point : Transition at 238oC (460oF)\nSolubility in 100 parts of water\t89.5 at 100oC (212oF)\n\nCereals: rice, wheat, barley, lentils, chickpeas, soya, sunflower, Pistachio.\nDry or water-soluble 2-2,5 kg ZnSO4H2O to declares the land before planting is a homogeneous way.\n\nVegetables: Pepper, Eggplant, Beans, Tomato, cucumber, watermelon, melon, cover, carrot, kale, green leafy like Karnıbaharand others.\n1-1,5 kg dry or water-soluble ZnSO4H2O to declares the land before planting is a homogeneous way. \n\nFruit Trees: Apple, Cherry, Plum, Peach, Pear, kiwi, figs, orange, lemon, Mandelina, Gireyfurt, walnut, hazelnut, olive.\nTrees in early spring, the tree crown to the 250-300 gr ZnSO4H2O dry or water-soluble are applied.\n\nIndustrial plants: sugar beet, potatoes, onion, garlic, cotton.\nDekar dry or water-soluble 2-2,5 kg ZnSO4H2O the land before planting is a homogeneous way.",
"isReviewInProgress":false,
"productLevel1Title":"Zinc Sulphate",
"productLevel2Title":"Zinc Sulphate Monohydrate - Zinc Sulphate",
"productLevel3Title":"Zinc Sulphate Monohydrate",
"freeShippingEligible":false,
"productLevel3ShortTitle":"Zinc Sulphate Monohydrate"
}') WHERE id = '091n';

 091n
 08lb
 08r4
 08s9
 090h
 098t
