# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
%w(AED AFN ALL AMD ANG AOA ARS AUD AWG AZN BAM BBD BDT BGN BHD BIF BMD BND BOB BRL BSD BTN BWP BYR BZD CAD CDF CHF CLP CNY COP CRC CUC CUP CVE CZK DJF DKK DOP DZD EGP ERN ETB EUR FJD FKP GBP GEL GGP GHS GIP GMD GNF GTQ GYD HKD HNL HRK HTG HUF IDR ILS INR IQD IRR ISK JMD JOD JPY KES KGS KHR KMF KPW KRW KWD KYD KZT LAK LBP LKR LRD LSL LYD MAD MDL MGA MKD MMK MNT MOP MRO MUR MVR MWK MXN MYR MZN NAD NGN NIO NOK NPR NZD OMR PAB PEN PGK PHP PKR PLN PYG QAR RON RSD RUB RWF SAR SBD SCR SDG SEK SGD SHP SLL SOS SRD SSP STD SYP SZL THB TJS TMT TND TOP TRY TTD TWD TZS UAH UGX USD UYU UZS VEF VND VUV WST XAF XCD XOF XPF YER ZAR ZMW).each do |code|
  Currency.create(iso_code: code)
end

MeasureUnit.create(name: 'empirical', code: 'emp', system_type: 'generic')
MeasureUnit.create(name: 'pieces', code: 'pcs', system_type: 'generic')
MeasureUnit.create(name: 'teaspoons', code: 'tsp', system_type: 'generic')
MeasureUnit.create(name: 'tablespoons', code: 'tbsp', system_type: 'generic')
MeasureUnit.create(name: 'kilograms', code: 'kg', system_type: 'metric')
MeasureUnit.create(name: 'grams', code: 'gr', system_type: 'metric')
MeasureUnit.create(name: 'liters', code: 'l', system_type: 'metric')
MeasureUnit.create(name: 'milliliters', code: 'ml', system_type: 'metric')
MeasureUnit.create(name: 'pounds', code: 'lb', system_type: 'imperial')
MeasureUnit.create(name: 'ounces', code: 'oz', system_type: 'imperial')
MeasureUnit.create(name: 'pints', code: 'pt', system_type: 'imperial')
MeasureUnit.create(name: 'cups', code: 'cu', system_type: 'imperial')


emp_id = MeasureUnit.find_by_code('emp').id
sgd_id = Currency.find_by_iso_code('SGD').id

RawIngredient.create(name: 'Olive Oil', stock: 2, price: 9.4, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/borges-extra-virgin-olive-oil'])
RawIngredient.create(name: 'Pesto', stock: 2, price: 10.5, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/delmaine-traditional-basil-pesto-50953'])
RawIngredient.create(name: 'Sun dried tomatoes', stock: 1, price: 7.9, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/casa-rinaldi-dried-tomatoes-in-vegetable-oil--97615'])
RawIngredient.create(name: 'Soy milk', stock: 2, price: 5.8, shopping_quantity: 2, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/silk-unsweetened-organic-soymilk-107026'])
RawIngredient.create(name: 'Tortilla whole', stock: 1, price: 4, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/quix-tortilla-wraps-wholemeal-8-per-pack-15101'])
RawIngredient.create(name: 'Potatoes', stock: 2, price: 2.5, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/yuvvo-potato-holland-79366'])
RawIngredient.create(name: 'Lettuce', stock: 0, price: 2.8, shopping_quantity: 2, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/givvo-romaine-lettuce-25666'])
RawIngredient.create(name: 'Baby Spinnach', stock: 0, price: 4.55, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/givvo-italian-baby-spinach-25654'])
RawIngredient.create(name: 'Rocket', stock: 0, price: 4.55, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/givvo-italian-wild-rocket-25656'])
RawIngredient.create(name: 'Spinnach', stock: 0, price: 0.6, shopping_quantity: 2, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/yuvvo-sharp-spinach-79370'])
RawIngredient.create(name: 'Eggplants', stock: 1, price: 1.7, shopping_quantity: 2, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/yuvvo-round-brinjal-79394'])
RawIngredient.create(name: 'Zuchini', stock: 2, price: 4.1, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/bellvo-zucchini-yellow-69112'])
RawIngredient.create(name: 'Avocado', stock: 1, price: 2.5, shopping_quantity: 4, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: [' '])
RawIngredient.create(name: 'Mushrooms', stock: 0, price: 1.4, shopping_quantity: 4, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/mushroom-gourmet-shiitake-mushrooms-19284'])
RawIngredient.create(name: 'Cherry tomatoes', stock: 1, price: 3.15, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/givvo-cherry-grape-tomatoes-21621'])
RawIngredient.create(name: 'Red Onions', stock: 2, price: 1.6, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/yuvvo-red-onion-79377'])
RawIngredient.create(name: 'Celery', stock: 2, price: 3.45, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/givvo-celery-42641'])
RawIngredient.create(name: 'Bellpeppers', stock: 1, price: 2, shopping_quantity: 3, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/search/bell%20pepper'])
RawIngredient.create(name: 'Ginger', stock: 2, price: 2.35, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/givvo-young-ginger-42626'])
RawIngredient.create(name: 'Lemongrass', stock: 2, price: 0.7, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/yuvvo-lemon-grass-79385'])
RawIngredient.create(name: 'Corn', stock: 2, price: 5, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/farmland-sweet-corn-14539'])
RawIngredient.create(name: 'Tofu', stock: 0, price: 2.5, shopping_quantity: 2, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/vitasoy-premium-organic-sprouted-tofu--pressed-47479'])
RawIngredient.create(name: 'Fresh Basil', stock: 0, price: 2, shopping_quantity: 2, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/airflown-basilicum-33585'])
RawIngredient.create(name: 'Lemons & limes', stock: 2, price: 4.7, shopping_quantity: 2, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/lemons-13929'])
RawIngredient.create(name: 'Apples', stock: 2, price: 5, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/granny-smith-apples-13923'])
RawIngredient.create(name: 'Bannanas', stock: 1, price: 2.85, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/bananas-48589'])
RawIngredient.create(name: 'Blueberries', stock: 1, price: 19.5, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/berry-field-blueberry-fruits--frozen-78456'])
RawIngredient.create(name: 'Grapes', stock: 2, price: 4.7, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/generic-green-seedless-grapes-15828'])
RawIngredient.create(name: 'Melon', stock: 0, price: 5.4, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/givvo-honeydew-melon-104830'])
RawIngredient.create(name: 'Dark chocolate', stock: 0, price: 9, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/menakao-100-dark-chocolate--88577'])
RawIngredient.create(name: 'Whole pasta', stock: 2, price: 2.5, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/san-remo-wholemeal-spiral-no-131-21573'])
RawIngredient.create(name: 'Whole Crackers', stock: 0, price: 7.4, shopping_quantity: 2, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/sheridans-rye--linseed-handmade-crackers--108629'])
RawIngredient.create(name: 'Fig Bars', stock: 2, price: 10.8, shopping_quantity: 2, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/natures-bakery-apple-cinnamon-fig-bar-37358'])
RawIngredient.create(name: 'Protein Bars', stock: 2, price: 3, shopping_quantity: 9, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/simply-choices-protein-bar--cocoa-raspberry-31292'])
RawIngredient.create(name: 'Falafel mix', stock: 2, price: 4.2, shopping_quantity: 2, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/al\'fez-falafel-mix-14303'])
RawIngredient.create(name: 'Oats', stock: 2, price: 5.5, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/quaker-whole-rolled-oats'])
RawIngredient.create(name: 'White beans', stock: 0, price: 2.1, shopping_quantity: 2, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/cirio-cannellini-white-beans'])
RawIngredient.create(name: 'Red beans', stock: 2, price: -1, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: [])
RawIngredient.create(name: 'Chickpeas', stock: 0, price: 8.6, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/princ-di-lucedio--chickpeas-51792'])
RawIngredient.create(name: 'Lentils', stock: 0, price: 4, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/origins-organic-green-lentils'])
RawIngredient.create(name: 'Qui0a', stock: 0, price: 10.6, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/nature\'s-superfoods-organic-white-quinoa-seeds-19696'])
RawIngredient.create(name: 'Almonds', stock: 2, price: 10.5, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/camel-natural-almonds-13214'])
RawIngredient.create(name: 'Caju', stock: 2, price: 10.5, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/camel-roasted-cashews-13211'])
RawIngredient.create(name: 'Sesame seeds', stock: 0, price: 4.75, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/origins-organic-white-sesame-seeds'])
RawIngredient.create(name: 'Pumpkin seeds', stock: 2, price: 9, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/hobie-organic-pumpkin-seeds-56219'])
RawIngredient.create(name: 'Dried Currant', stock: 0, price: 8.5, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/hobie-choice-currants-dried-fruit-56212'])
RawIngredient.create(name: 'Garlic', stock: 2, price: 1.6, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: [' '])
RawIngredient.create(name: 'Spices (Orega0, Basil, Thyme)', stock: 2, price: 12, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: ['https://redmart.com/product/givvo-peeled-garlic-42617'])
RawIngredient.create(name: 'Yeast', stock: 2, price: 3.5, shopping_quantity: 2, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: [])
RawIngredient.create(name: 'Whole wheat flour', stock: 2, price: -1, shopping_quantity: 3, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: [])
RawIngredient.create(name: 'White wheat flour', stock: 0, price: -1, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: [])
RawIngredient.create(name: 'Raw sugar', stock: 2, price: -1, shopping_quantity: 1, currency_id: sgd_id, measure_unit_id: emp_id, shop_urls: [])

IntermediateIngredient.create(name: 'Tahini', stock: 0, measure_unit_id: emp_id, price: -1, currency_id: sgd_id, relative_preparation_time: 20, instructions: 'TODO')
IntermediateIngredient.create(name: 'Grilled Mushrooms', stock: 2, measure_unit_id: emp_id, price: -1, currency_id: sgd_id, relative_preparation_time: 40, instructions: 'TODO')
IntermediateIngredient.create(name: 'Grilled Eggplants', stock: 1, measure_unit_id: emp_id, price: -1, currency_id: sgd_id, relative_preparation_time: 40, instructions: 'TODO')
IntermediateIngredient.create(name: 'Grilled Zuchini', stock: 1, measure_unit_id: emp_id, price: -1, currency_id: sgd_id, relative_preparation_time: 40, instructions: 'TODO')
IntermediateIngredient.create(name: 'Grilled Peppers', stock: 1, measure_unit_id: emp_id, price: -1, currency_id: sgd_id, relative_preparation_time: 40, instructions: 'TODO')
IntermediateIngredient.create(name: 'Grilled Tomatoes', stock: 1, measure_unit_id: emp_id, price: -1, currency_id: sgd_id, relative_preparation_time: 40, instructions: 'TODO')
IntermediateIngredient.create(name: 'Grilled Potatoes', stock: 1, measure_unit_id: emp_id, price: -1, currency_id: sgd_id, relative_preparation_time: 40, instructions: 'TODO')
IntermediateIngredient.create(name: 'Guacamole', stock: 0, measure_unit_id: emp_id, price: -1, currency_id: sgd_id, relative_preparation_time: 15, instructions: 'TODO')
IntermediateIngredient.create(name: 'Hummus', stock: 0, measure_unit_id: emp_id, price: -1, currency_id: sgd_id, relative_preparation_time: 40, instructions: 'TODO')
IntermediateIngredient.create(name: 'Mashed Beans', stock: 0, measure_unit_id: emp_id, price: -1, currency_id: sgd_id, relative_preparation_time: 20, instructions: 'TODO')
IntermediateIngredient.create(name: 'Mashed Potatoes', stock: 0, measure_unit_id: emp_id, price: -1, currency_id: sgd_id, relative_preparation_time: 30, instructions: 'TODO')
IntermediateIngredient.create(name: 'Salad Dressing', stock: 0, measure_unit_id: emp_id, price: -1, currency_id: sgd_id, relative_preparation_time: 10, instructions: 'TODO')
IntermediateIngredient.create(name: 'Whole Bread', stock: 2, measure_unit_id: emp_id, price: -1, currency_id: sgd_id, relative_preparation_time: 90, instructions: 'TODO', recipe_urls: ['http://www.jennycancook.com/recipes/easy-honey-wheat-bread/'])
IntermediateIngredient.create(name: 'Boiled Red Beans', stock: 0, measure_unit_id: emp_id, price: -1, currency_id: sgd_id, relative_preparation_time: 30, instructions: 'TODO')
IntermediateIngredient.create(name: 'Boiled White Beans', stock: 0, measure_unit_id: emp_id, price: -1, currency_id: sgd_id, relative_preparation_time: 30, instructions: 'TODO')

IntermediateIngredient.find_by_uid('tahini').raw_ingredients << [
    RawIngredient.find_by_uid('sesame_seeds'),
    RawIngredient.find_by_uid('olive_oil')
]
IntermediateIngredient.find_by_uid('grilled_mushrooms').raw_ingredients << [
    RawIngredient.find_by_uid('mushrooms')
]
IntermediateIngredient.find_by_uid('grilled_eggplants').raw_ingredients << [
    RawIngredient.find_by_uid('eggplants')
]
IntermediateIngredient.find_by_uid('grilled_zuchini').raw_ingredients << [
    RawIngredient.find_by_uid('zuchini')
]
IntermediateIngredient.find_by_uid('grilled_peppers').raw_ingredients << [
    RawIngredient.find_by_uid('bellpeppers')
]
IntermediateIngredient.find_by_uid('grilled_tomatoes').raw_ingredients << [
    RawIngredient.find_by_uid('cherry_tomatoes')
]
IntermediateIngredient.find_by_uid('guacamole').raw_ingredients << [
    RawIngredient.find_by_uid('cherry_tomatoes'),
    RawIngredient.find_by_uid('avocado'),
    RawIngredient.find_by_uid('lemons_&_limes'),
    RawIngredient.find_by_uid('red_onions')
]
IntermediateIngredient.find_by_uid('hummus').raw_ingredients << [
    RawIngredient.find_by_uid('chickpeas'),
    RawIngredient.find_by_uid('lemons_&_limes')
]
IntermediateIngredient.find_by_uid('hummus').intermediate_ingredients << [
    IntermediateIngredient.find_by_uid('tahini')
]
IntermediateIngredient.find_by_uid('mashed_beans').raw_ingredients << [
    RawIngredient.find_by_uid('white_beans'),
    RawIngredient.find_by_uid('red_onions'),
    RawIngredient.find_by_uid('garlic'),
    RawIngredient.find_by_uid('olive_oil')
]
IntermediateIngredient.find_by_uid('mashed_potatoes').raw_ingredients << [
    RawIngredient.find_by_uid('potatoes'),
    RawIngredient.find_by_uid('olive_oil'),
    RawIngredient.find_by_uid('soy_milk'),
    RawIngredient.find_by_uid('red_onions')
]
IntermediateIngredient.find_by_uid('salad_dressing').raw_ingredients << [
    RawIngredient.find_by_uid('lemons_&_limes'),
    RawIngredient.find_by_uid('garlic')
]
IntermediateIngredient.find_by_uid('salad_dressing').intermediate_ingredients << [
    IntermediateIngredient.find_by_uid('tahini')
]
IntermediateIngredient.find_by_uid('whole_bread').raw_ingredients << [
    RawIngredient.find_by_uid('whole_wheat_flour'),
    RawIngredient.find_by_uid('white_wheat_flour'),
    RawIngredient.find_by_uid('yeast'),
    RawIngredient.find_by_uid('olive_oil'),
    RawIngredient.find_by_uid('raw_sugar')
]
IntermediateIngredient.find_by_uid('boiled_red_beans').raw_ingredients << [
    RawIngredient.find_by_uid('red_beans')
]
IntermediateIngredient.find_by_uid('boiled_white_beans').raw_ingredients << [
    RawIngredient.find_by_uid('white_beans')
]