# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or create_or_find_by alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create_or_find_by([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create_or_find_by(name: 'Luke', movie: movies.first)



#CakeFlavor.destroy_all
CakeFlavor.find_or_create_by(flavor_name: "Vanilla")
CakeFlavor.find_or_create_by(flavor_name: "Chocolate")
CakeFlavor.find_or_create_by(flavor_name: "Marble")
CakeFlavor.find_or_create_by(flavor_name: "Red Velvet")
CakeFlavor.find_or_create_by(flavor_name: "Coffee")
CakeFlavor.find_or_create_by(flavor_name: "Almond")



#Filling.destroy_all
Filling.find_or_create_by(filling_name: "Strawberry Buttercream", filling_description: "Strawberry Buttercream")
Filling.find_or_create_by(filling_name: "Raspberry", filling_description: "Raspberry")
Filling.find_or_create_by(filling_name: "Crunch Buttercream", filling_description: "Crunch Buttercream")
Filling.find_or_create_by(filling_name: "Coffee Buttercream", filling_description: "Coffee Buttercream")
Filling.find_or_create_by(filling_name: "M&Ms", filling_description: "M&Ms")
Filling.find_or_create_by(filling_name: "Chocolate Chips", filling_description: "Chocolate Chips")
Filling.find_or_create_by(filling_name: "Oreos", filling_description: "Oreos")
Filling.find_or_create_by(filling_name: "Ferrero Rocher", filling_description: "Ferrero Rocher")
Filling.find_or_create_by(filling_name: "Almond Buttercream", filling_description: "Almond Buttercream")
Filling.find_or_create_by(filling_name: "Mint Chocolate Chip Buttercream", filling_description: "Mint Chocolate Chip Buttercream")
Filling.find_or_create_by(filling_name: "Nutella Buttercream", filling_description: "Nutella Buttercream")
Filling.find_or_create_by(filling_name: "Vanilla Buttercream", filling_description: "Vanilla Buttercream")
Filling.find_or_create_by(filling_name: "Chocolate Buttercream", filling_description: "Chocolate Buttercream")


#FrostingFlavor.destroy_all
FrostingFlavor.find_or_create_by(frosting_name: "Chocolate Fondant")
FrostingFlavor.find_or_create_by(frosting_name: "Vanilla Fondant")
FrostingFlavor.find_or_create_by(frosting_name: "Chocolate Buttercream")
FrostingFlavor.find_or_create_by(frosting_name: "None")

#DietaryRestriction.destroy_all
DietaryRestriction.find_or_create_by(dietary_restriction_name: "Milk")
DietaryRestriction.find_or_create_by(dietary_restriction_name: "Eggs")
DietaryRestriction.find_or_create_by(dietary_restriction_name: "Gluten")
DietaryRestriction.find_or_create_by(dietary_restriction_name: "Nuts")
DietaryRestriction.find_or_create_by(dietary_restriction_name: "Soy")

#RentalItem.destroy_all
RentalItem.find_or_create_by(rental_item_name: "Gold Wedding Cake Stand", rental_item_description: "Gold cake stand for wedding cakes", rental_item_cost: "40.00")
RentalItem.find_or_create_by(rental_item_name: "Silver Wedding Cake Stand", rental_item_description: "Silver cake stand for wedding cakes", rental_item_cost: "40.00")
RentalItem.find_or_create_by(rental_item_name: "Pedestal Stand Set of Three", rental_item_description: "Three pedestal stands", rental_item_cost: "40.00")


#Product.destroy_all
Product.find_or_create_by(product_name: "Cake", product_description: "Custom cakes")
Product.find_or_create_by(product_name: "Cookies", product_description: "Custom cookies")
Product.find_or_create_by(product_name: "Cupcakes", product_description: "Custom cupcakes")
Product.find_or_create_by(product_name: "Cakesicles", product_description: "Custom cakesicles")
Product.find_or_create_by(product_name: "Cakepops", product_description: "Custom cakepops")
Product.find_or_create_by(product_name: "Dessert Shots", product_description: "Dessert shots")
Product.find_or_create_by(product_name: "Cake Jars", product_description: "Custom cake jars")
Product.find_or_create_by(product_name: "Macarons", product_description: "Custom Macarons")
Product.find_or_create_by(product_name: "Mini Cupcakes", product_description: "Custom mini cupcakes")
Product.find_or_create_by(product_name: "Dipped Oreos", product_description: "Custom dipped Oreos")
Product.find_or_create_by(product_name: "Wedding Cake Tasting", product_description: "Custom wedding cake tasting")
Product.find_or_create_by(product_name: "Cake Flavors", product_description: "Custom cakes flavors")

#EmployeeType.destroy_all
EmployeeType.find_or_create_by(employee_type_description: "Baker")
EmployeeType.find_or_create_by(employee_type_description: "Delivery Driver")

#EmployeeStatus.destroy_all
EmployeeStatus.find_or_create_by(employee_status_name: "Inactive")
EmployeeStatus.find_or_create_by(employee_status_name: "Active")

#Employee.destroy_all
Employee.create_or_find_by(employee_first_name: "Deepali", employee_last_name: "Agrawal", employee_email: "Deepali.agrawal@gmail.com", employee_phone: "315-312-8596", employee_status_id:  '2', employee_type_id: '1')
Employee.create_or_find_by(employee_first_name: "Pricella", employee_last_name: "Raj", employee_email: "pricella.raj@gmail.com", employee_phone: "512-555-0101", employee_status_id: "2", employee_type_id: "2")
Employee.create_or_find_by(employee_first_name: "Helen", employee_last_name: "Thompson", employee_email: "h.thompson@outlook.com", employee_phone: "832-316-9262", employee_status_id: "2", employee_type_id: "1")
Employee.create_or_find_by(employee_first_name: "Casey", employee_last_name: "Wright", employee_email: "wright.casey@outlook.com", employee_phone: "218-312-7316", employee_status_id: "2", employee_type_id: "1")
Employee.create_or_find_by(employee_first_name: "Neeraj", employee_last_name: "Signh", employee_email: "singh.neeraj@hotmail.com", employee_phone: "832-640-6595", employee_status_id: "1", employee_type_id: "1")

#TaskStatus.destroy_allcreate_or_find_byd
TaskStatus.find_or_create_by(task_status_name: "Not Started")
TaskStatus.find_or_create_by(task_status_name: "In Progress")
TaskStatus.find_or_create_by(task_status_name: "Complete")

#OrderType.destroy_all
OrderType.find_or_create_by(order_description: "Residential")
OrderType.find_or_create_by(order_description: "Wedding")
OrderType.find_or_create_by(order_description: "Pick up")
OrderType.find_or_create_by(order_description: "Birthday")
OrderType.find_or_create_by(order_description: "Baby Shower")
OrderType.find_or_create_by(order_description: "Holiday")
OrderType.find_or_create_by(order_description: "Anniversary")
OrderType.find_or_create_by(order_description: "Special Occasion or Event")
OrderType.find_or_create_by(order_description: "Other")

#OrderStatus.destroy_all
OrderStatus.find_or_create_by(order_status_name: "Inquired")
OrderStatus.find_or_create_by(order_status_name: "In Progress")
OrderStatus.find_or_create_by(order_status_name: "Complete")

#OrderLineStatus.destroy_all
OrderLineStatus.find_or_create_by(order_line_status_name: "Incomplete")
OrderLineStatus.find_or_create_by(order_line_status_name: "Complete")

#CustomerStatus.destroy_all
CustomerStatus.find_or_create_by(customer_status_name: "Inactive")
CustomerStatus.find_or_create_by(customer_status_name: "Active")

#Customer.destroy_all
Customer.create_or_find_by(customer_first_name: "Elisha",customer_last_name: "Diaz",customer_email: "ecdiaz2@uh.edu",customer_phone: "832-310-8111",customer_street_address: "8377 Kent Street", customer_city: "Houston", customer_state: "TX",customer_zip_code: "77055",customer_status_id: "2")
Customer.create_or_find_by(customer_first_name: "Hudson",customer_last_name: "La Plant",customer_email: "andale@mac.com", customer_phone: "987-707-9163",customer_street_address: "8377 Kent Street", customer_city: "Houston", customer_state: "TX",customer_zip_code: "77055",customer_status_id: "2")
Customer.create_or_find_by(customer_first_name: "Ivonne",customer_last_name: "Benetiz",customer_email:"sonnen@verizon.net", customer_phone: "908-416-7453",customer_street_address: "8500 South Peachtree Street", customer_city: "Houston", customer_state: "TX",customer_zip_code: "77055",customer_status_id: "2")
Customer.create_or_find_by(customer_first_name: "Daniel",customer_last_name: "Pearsall",customer_email: "parrt@att.net", customer_phone: "789-461-9413",customer_street_address: "61 Van Dyke Road", customer_city: "Houston", customer_state: "TX",customer_zip_code: "77013",customer_status_id: "2")
Customer.create_or_find_by(customer_first_name: "Tyler",customer_last_name: "Niswonger",customer_email: "anicolao@msn.com", customer_phone: "436-360-3599",customer_street_address: "1 Trout Avenue", customer_city: "Houston", customer_state: "TX",customer_zip_code: "77064",customer_status_id: "2")
Customer.create_or_find_by(customer_first_name:"David",customer_last_name:"Nasegawa",customer_email:"linuxhack@verizon.net", customer_phone: "681-922-4039",customer_street_address: "51 Santa Clara Ave",customer_city: "Houston", customer_state: "TX",customer_zip_code: "77023",customer_status_id: "2")
Customer.create_or_find_by(customer_first_name: "Rushil",customer_last_name: "Patel",customer_email: "doche@live.com", customer_phone: "331-786-7216",customer_street_address: "7565 West Carpenter Road",customer_city: "Houston", customer_state: "TX",customer_zip_code: "77021",customer_status_id: "2")
Customer.create_or_find_by(customer_first_name: "Paul",customer_last_name: "Diaz",customer_email: "pdiaz@uh.edu", customer_phone: "670-965-9830",customer_street_address: "581 Sutor Road",customer_city: "Houston", customer_state: "TX",customer_zip_code: "77021",customer_status_id: "2")
Customer.create_or_find_by(customer_first_name: "Jimmy",customer_last_name: "Karter",customer_email: "jk@uh.edu", customer_phone: "567-687-9017",customer_street_address: "481 William St",customer_city: "Houston", customer_state: "TX",customer_zip_code: "77013",customer_status_id: "2")
Customer.create_or_find_by(customer_first_name: "Barracks",customer_last_name: "Llama",customer_email: "ranasta@me.com", customer_phone: "636-924-0522",customer_street_address: "679 Applegate Lane",customer_city: "Houston", customer_state: "TX",customer_zip_code: "77001",customer_status_id: "2")
Customer.create_or_find_by(customer_first_name: "Dan",customer_last_name: "Pears",customer_email: "debest@live.com", customer_phone: "229-538-8416",customer_street_address: "16 Bedford Drive",customer_city: "Houston", customer_state: "TX",customer_zip_code: "77017",customer_status_id: "2")
Customer.create_or_find_by(customer_first_name: "Pablo",customer_last_name: "Deter",customer_email: "isotopian@icloud.com", customer_phone: "83231081238",customer_street_address: "25 Tanglewood Street",customer_city: "Houston", customer_state: "TX",customer_zip_code: "77037",customer_status_id: "2")
Customer.create_or_find_by(customer_first_name: "Jose",customer_last_name: "Altuve",customer_email: "jtuve@yahoo.com", customer_phone: "861-424-6852",customer_street_address: "894 Ramblewood St",customer_city: "Houston", customer_state: "TX",customer_zip_code: "12344",customer_status_id: "2")
Customer.create_or_find_by(customer_first_name: "Renu",customer_last_name: "Khator",customer_email: "chancellor@uh.edu", customer_phone: "802-510-3538",customer_street_address: "215 Westport Road",customer_city: "Houston", customer_state: "TX",customer_zip_code: "77053",customer_status_id: "2")
Customer.create_or_find_by(customer_first_name: "Salvi",customer_last_name: "Sal",customer_email: "ss@icednfrosted.com", customer_phone: "454-426-2062",customer_street_address: "32 Henry Smith St",customer_city: "Houston", customer_state: "TX",customer_zip_code: "77055",customer_status_id: "2")
Customer.create_or_find_by(customer_first_name: "Son",customer_last_name: "Yu",customer_email: "syu@uh.edu", customer_phone: "923-835-3835",customer_street_address: "795 Kent Street",customer_city: "Houston", customer_state: "TX",customer_zip_code: "77001",customer_status_id: "2")
Customer.create_or_find_by(customer_first_name: "Melinda",customer_last_name: "Winters",customer_email: "mwinters@ollusa.edu", customer_phone: "863-308-9155",customer_street_address: "179 Heather Court",customer_city: "Houston", customer_state: "TX",customer_zip_code: "77023",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Gloria",customer_last_name: "Bets",customer_email: "gbets@uh.edu", customer_phone: "270-721-8790",customer_street_address: "104 East Lakeshore Drive",customer_city: "Houston", customer_state: "TX",customer_zip_code: "77033",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "David",customer_last_name: "Wham",customer_email: "whamd@uh.edu", customer_phone: "900-960-5119",customer_street_address: "77 Redwood Street",customer_city: "Houston", customer_state: "TX",customer_zip_code: "77011",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "James",customer_last_name: "Grant",customer_email: "jgrant@uh.edu", customer_phone: "645-380-4500",customer_street_address: "4 Grove St",customer_city: "Houston", customer_state: "TX",customer_zip_code: "77025",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Virgina",customer_last_name: "Merin",customer_email: "vmerin@uh.edu", customer_phone: "955-305-4777",customer_street_address: "757 Manor Station Street",customer_city: "Houston", customer_state: "TX",customer_zip_code: "12344",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Jason",customer_last_name: "Karwack",customer_email: "wax@gmail.com", customer_phone: "612-515-7657",customer_street_address: "30 Chapel Drive",customer_city: "Houston", customer_state: "TX",customer_zip_code: "77060",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Carolina",customer_last_name: "Esca",customer_email: "idk22@uh.edu", customer_phone: "841-710-8432",customer_street_address: "472 Jennings Street",customer_city: "Houston", customer_state: "TX",customer_zip_code: "77064",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Albert",customer_last_name: "Gib",customer_email: "idk23@uh.edu", customer_phone: "303-829-3952",customer_street_address: "8 Illinois Dr",customer_city: "Houston", customer_state: "TX",customer_zip_code: "77020",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Corinna",customer_last_name: "Kompf",customer_email: "pizza@hotmail.com", customer_phone: "957-227-6753",customer_street_address: "7924 Overlook Street",customer_city: "Houston", customer_state: "TX",customer_zip_code: "77035",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "David",customer_last_name: "Dobrik",customer_email: "akoblin@sbcglobal.net", customer_phone: "690-788-7606",customer_street_address: "7 Selby Circle",customer_city: "Houston", customer_state: "TX",customer_zip_code: "77019",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Jim",customer_last_name: "Turner",customer_email: "thassine@yahoo.ca", customer_phone: "328-269-9853",customer_street_address: "30 East Street",customer_city: "Houston", customer_state: "TX",customer_zip_code: "77023",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Von",customer_last_name: "Gib",customer_email: "vgib@uh.edu", customer_phone: "843-477-4814",customer_street_address: "202 Fake Street",customer_city: "Houston", customer_state: "TX",customer_zip_code: "77014",customer_status_id: "1")
Customer.create_or_find_by(customer_first_name: "Bert",customer_last_name: "Roberts",customer_email: "bertw@yahoo.com", customer_phone: "261-315-7017",customer_street_address: "202 Fake Street",customer_city: "Houston", customer_state: "TX",customer_zip_code: "77014",customer_status_id: "1")

#Shape.destroy_all
Shape.find_or_create_by(shape_name: "Round")
Shape.find_or_create_by(shape_name: "Square")
Shape.find_or_create_by(shape_name: "Triangle")
Shape.find_or_create_by(shape_name: "Rectangular")

#TaskStatus.destroy_all
TaskStatus.find_or_create_by(task_status_name: "Not Started")
TaskStatus.find_or_create_by(task_status_name: "In Progress")
TaskStatus.find_or_create_by(task_status_name: "Complete")


#1 OK
Order.create_or_find_by(order_description: "Jimmy Neutron Head Replica", order_cost: 400.00, order_start_date: "2020-01-01 10:00:00", order_due_date: "2020-02-15 18:00:00", order_date_finish: "2020-02-15 10:30:35", order_delivery: 'true', delivery_street_address: "795 Kent Street", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "77001", customer_id: 1, order_type_id: "1", order_status_id: "3")
#2 OK
Order.create_or_find_by(order_description: "League of Legends Cake", order_cost: 245.00, order_start_date: "2020-01-01 11:00:00", order_due_date: "2020-01-10 12:30:00",order_date_finish: "2020-01-10 12:20:51", order_delivery: 'true', delivery_street_address: "179 Heather Court", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "77023", customer_id: 2, order_type_id: "8", order_status_id: "3")
#3 OK
Order.create_or_find_by(order_description: "Pizza Cake", order_cost: 50.00, order_start_date: "2020-01-10 13:57:51", order_due_date: "2020-01-30 15:00:00",order_date_finish: "2020-01-30 14:57:51", order_delivery: 'true', delivery_street_address: "104 East Lakeshore Drive", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "77033", customer_id: 3, order_type_id: "9", order_status_id: "3")
#4 OK
Order.create_or_find_by(order_description: "Wedding cake better than everyone elses", order_cost: 2000.00, order_start_date: "2020-01-15 10:20:51", order_due_date: "2020-01-21 16:00:00",order_date_finish: "2020-01-21 14:00:00", order_delivery: 'true', delivery_street_address: "77 Redwood Street", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "77011", customer_id: 4, order_type_id: "2", order_status_id: "3")
#5 OK
Order.create_or_find_by(order_description: "Small Wedding Cake", order_cost: 500.00, order_start_date: "2020-02-02 12:10:51", order_due_date: "2020-02-03 13:00:00",order_date_finish: "2020-02-03 12:30:00", order_delivery: 'true', delivery_street_address: "4 Grove St", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "77025", customer_id: 5, order_type_id: "2", order_status_id: "3")
#6 OK
Order.create_or_find_by(order_description: "Coronavirus is over celebration cake", order_cost: 1.00, order_start_date: "2020-02-05 12:12:50", order_due_date: "2020-02-06 15:00:00", order_date_finish: "2020-02-06 12:20:51", order_delivery: 'true', delivery_street_address: "757 Manor Station Street", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "12344", customer_id: 6, order_type_id: "8", order_status_id: "3")
#7 OK
Order.create_or_find_by(order_description: "Coronabegone Cake Pops", order_cost: 70.00, order_start_date: "2020-02-16 14:12:51", order_due_date: "2020-02-20 12:00:00", order_date_finish: "2020-02-20 10:57:51", order_delivery: 'true', delivery_street_address: "30 Chapel Drive", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "77060", customer_id: 7, order_type_id: "8", order_status_id: "3")
#8 OK
Order.create_or_find_by(order_description: "Cake inside a cake", order_cost: 300.00, order_start_date: "2020-02-28 09:00:51", order_due_date: "2020-05-01 15:00:00", order_delivery: 'true', delivery_street_address: "472 Jennings Street", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "77064", customer_id: 8, order_type_id: "9", order_status_id: "2")
#9 OK
Order.create_or_find_by(order_description: "Gomez Birthday cake", order_cost: 1400.00, order_start_date: "2020-03-01 10:20:51", order_due_date: "2020-04-26 12:30:00", order_delivery: 'true', delivery_street_address: "8 Illinois Dr", delivery_city: "La Plant Wedding Cake", delivery_state: "TX", delivery_zip_code: "77020", customer_id: 9, order_type_id: "4", order_status_id: "2")
#10 OK
Order.create_or_find_by(order_description: "Benetiz Birthday Cake", order_cost: 600.00, order_start_date: "2020-03-05 12:57:00", order_due_date: "2020-05-05 13:00:00", order_delivery: 'true', delivery_street_address: "7924 Overlook Street", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "77035", customer_id: 10, order_type_id: "4", order_status_id: "2")
#11 OK
Order.create_or_find_by(order_description: "Celebration Cookies", order_cost: 100.00, order_start_date: "2020-03-15 10:00:00", order_due_date: "2020-04-20 12:00:00", order_delivery: 'true', delivery_street_address: "7 Selby Circle", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "77019", customer_id: 11, order_type_id: "6", order_status_id: "2")
#12 OK
Order.create_or_find_by(order_description: "Crazy Cake", order_cost: 400.00, order_start_date: "2020-03-31 09:57:51", order_due_date: "2020-05-30 14:00:00", order_delivery: 'true', delivery_street_address: "30 East Street", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "77023", customer_id: 12, order_type_id: "1", order_status_id: "2")
#13 OK
Order.find_or_create_by(order_description: "Make a cake that looks like Robin from Batman and Robin From Fire Emblem", order_cost: 880.00, order_start_date: "2020-04-01 16:20:00", order_due_date: "2020-05-15 16:20:00", order_delivery: 'true', delivery_street_address: "202 Fake Street", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "77014", customer_id: 13, order_type_id: "9", order_status_id: "2")
#14 OK
Order.find_or_create_by(order_description: "Class of 2020 Wedding Cake", order_cost: 100.00, order_start_date: "2020-04-05 14:50:50", order_due_date: "2020-06-10 18:00:00", order_delivery: 'true', delivery_street_address: "202 Fake Street", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "77014", customer_id: 14, order_type_id: "8", order_status_id: "2")
#15 OK
Order.create_or_find_by(order_description: "Treasure Chest Sculpture Cake", order_cost: 1249.99, order_start_date: "2020-04-10 10:57:51", order_due_date: "2020-06-29 11:00:00", order_delivery: 'false', customer_id: 15, order_type_id: 3, order_status_id: 3)
#16 OK
Order.create_or_find_by(order_description: "32 pc. batch of choclate/vanilla cake pops", order_cost: 69.75, order_start_date: "2020-04-18 10:57:51", order_due_date: "2020-07-01 15:00:00", order_delivery: 'false', customer_id: 16, order_type_id: 3, order_status_id: 3)
#17 OK
Order.create_or_find_by(order_description: "Johnson's Birthday Cake", order_cost: 100.15, order_start_date: "2020-04-30 9:36:51", order_due_date: "2020-08-15 12:00:00", order_delivery: 'false', customer_id: 17, order_type_id: 3, order_status_id: 3)
#18 OK
Order.create_or_find_by(order_description: "M&M sponsor cake", order_cost: 185.15, order_start_date: "2020-05-01 10:20:20", order_due_date: "2020-09-01 12:00:00", order_delivery: 'false', customer_id: 18, order_type_id: 3, order_status_id: 3)
#19 OK
Order.create_or_find_by(order_description: "A dozen choclate chip cookies", order_cost: 37.15, order_start_date: "2020-05-10 12:00:30", order_due_date: "2020-09-02 13:00:00", order_delivery: 'true', delivery_street_address: "5005 North St", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "73215", customer_id: 19, order_type_id: 7, order_status_id: 3)
#20 OK
Order.create_or_find_by(order_description: "Tran's wedding cake", order_cost: 99.99, order_start_date: "2020-05-20 12:30:51", order_due_date: "2020-10-28 15:00:00", order_delivery: 'true', delivery_street_address: "1234 South St", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "73007", customer_id: 20, order_type_id: 2, order_status_id: 3)
#21 OK
Order.create_or_find_by(order_description: "Avdol's Get Well Soon cake", order_cost: 199.99, order_start_date: "2020-05-25 13:00:33", order_due_date: "2020-12-15 14:00:00", order_delivery: 'true', delivery_street_address: "3443 Brother St", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "70023", customer_id: 21, order_type_id: 2, order_status_id: 3)
#22 OK
Order.create_or_find_by(order_description: "Cake is a lie", order_cost: 999.99, order_start_date: "2020-06-01 13:00:21", order_due_date: "2020-12-25 15:00:00", order_delivery: 'true', delivery_street_address: "1337 Santa St", delivery_city: "Houston", delivery_state: "TX", delivery_zip_code: "70077", customer_id: 22, order_type_id: 2, order_status_id: 3)


#Order 1 OL 1 D
OrderLine.find_or_create_by(order_id: "1", product_id: "1", order_line_status_id: "2", order_line_start_date: "2020-01-01 10:00:00", order_line_finish_date: "2020-02-15 10:30:35",order_line_description: "Baking the cake", special_order_notes: "2 Tier Cake w/ Brain Blast")
#Order 2 OL 2 D
OrderLine.find_or_create_by(order_id: "2", product_id: "1", order_line_status_id: "2", order_line_start_date: "2020-01-01 11:00:00", order_line_finish_date: "2020-01-10 12:20:51",order_line_description: "Making Cake", special_order_notes: "Cool looking cake")
#Order 3 OL 3 D
OrderLine.find_or_create_by(order_id: "3", product_id: "1", order_line_status_id: "2", order_line_start_date: "2020-01-10 13:57:51", order_line_finish_date: "2020-01-30 14:57:51",order_line_description: "Making the Pizza Cake", special_order_notes: "Pizza Pizza")
#Order 4 OL 4
OrderLine.find_or_create_by(order_id: "4", product_id: "1", order_line_status_id: "2", order_line_start_date: "2020-01-15 10:20:51", order_line_finish_date: "2020-01-21 14:00:00",order_line_description: "Baking Best Cake", special_order_notes: "Cool looking cake")
#Order 5 OL 5
OrderLine.find_or_create_by(order_id: "5", product_id: "1", order_line_status_id: "2", order_line_start_date: "2020-02-02 12:10:51", order_line_finish_date: "2020-02-03 12:30:00",order_line_description: "Able to freestyle a small beautiful wedding Cake", special_order_notes: "Cool looking cake")
#Order 6 OL 6
OrderLine.find_or_create_by(order_id: "6", product_id: "1", order_line_status_id: "2", order_line_start_date: "2020-02-05 12:12:50", order_line_finish_date: "2020-02-06 12:20:51",order_line_description: "Coronavirus celebration cake", special_order_notes: "Coronavirus is over")
#Order 7 OL 7-9
OrderLine.find_or_create_by(order_id: "7", product_id: "5", order_line_status_id: "2", order_line_start_date: "2020-02-16 14:12:51", order_line_finish_date: "2020-02-20 9:45:51",order_line_description: "Coronavirus cake pops", special_order_notes: "Coronavirus celebration cake pops first batch")
OrderLine.find_or_create_by(order_id: "7", product_id: "5", order_line_status_id: "2", order_line_start_date: "2020-02-16 14:18:25", order_line_finish_date: "2020-02-20 10:20:51",order_line_description: "Coronavirus cake pops", special_order_notes: "Coronavirus celebration cake pops second batch")
OrderLine.find_or_create_by(order_id: "7", product_id: "5", order_line_status_id: "2", order_line_start_date: "2020-02-16 14:25:33", order_line_finish_date: "2020-02-20 10:58:51",order_line_description: "Coronavirus cake pops", special_order_notes: "Coronavirus celebration cake pops third batch")
#Order 8 OL 10
OrderLine.find_or_create_by(order_id: "8", product_id: "1", order_line_status_id: "2", order_line_start_date: "2020-02-28 09:00:51", order_line_description: "Cake inside a Cake", special_order_notes: "Weird cake design")
#Order 9 OL 11
OrderLine.find_or_create_by(order_id: "9", product_id: "1", order_line_status_id: "2", order_line_start_date: "2020-03-01 10:20:51", order_line_description: "Gomez Wedding Cake", special_order_notes: "Deliver ASAP")
#Order 10 OL 12
OrderLine.find_or_create_by(order_id: "10", product_id: "1", order_line_status_id: "2", order_line_start_date: "2020-03-05 12:57:00", order_line_description: "Benetiz Birthday Cake", special_order_notes: "Overcharge them hehe")
#Order 11 OL 13
OrderLine.find_or_create_by(order_id: "11", product_id: "2", order_line_status_id: "2", order_line_start_date: "2020-03-15 10:00:00", order_line_description: "Cookies for April 20th", special_order_notes: "Blaze it")
#Order 12 OL 14
OrderLine.find_or_create_by(order_id: "12", product_id: "1", order_line_status_id: "2", order_line_start_date: "2020-03-31 09:57:51", order_line_description: "Quicky crazy cake", special_order_notes: "What makes crazy crazy?")
#Order 13 OL 15
OrderLine.find_or_create_by(order_id: "13", product_id: "1", order_line_status_id: "2", order_line_start_date: "2020-04-01 16:20:00", order_line_description: "Nanananan batman", special_order_notes: "wt-")
#Order 14 OL 16
OrderLine.find_or_create_by(order_id: "14", product_id: "1", order_line_status_id: "2", order_line_start_date: "2020-04-05 14:50:50", order_line_description: "2020 Graduation Cake", special_order_notes: "Happy Graduation 2020")
#Order 15 OL 17-18
OrderLine.find_or_create_by(order_id: "15", product_id: "1", order_line_status_id: "2", order_line_start_date: "2020-04-10 10:57:51", order_line_description: "Baking inner cake")
OrderLine.find_or_create_by(order_id: "15", product_id: "1", order_line_status_id: "2", order_line_start_date: "2020-04-10 15:43:55", order_line_description: "Baking outer cake around inner cake", special_order_notes: "Be careful to not overcook the inner cake and undercook the outer cake")
#Order 16 OL 19
OrderLine.find_or_create_by(order_id: "16", product_id: "1", order_line_status_id: "2", order_line_start_date: "2020-04-18 10:57:51", order_line_description: "Bake sculpture cake base", special_order_notes: "Can only use white frosting for detailing")
#Order 17 OL 20
OrderLine.find_or_create_by(order_id: "17", product_id: "5", order_line_status_id: "2", order_line_start_date: "2020-04-30 9:36:51", order_line_description: "Bake 16 choclate and 16 vanilla cake pops")
#Order 18 OL 21
OrderLine.find_or_create_by(order_id: "18", product_id: "1", order_line_status_id: "2", order_line_start_date: "2020-05-01 10:20:20", order_line_description: "Bake Chocolate Marble Cake")
#Order 19 OL 22
OrderLine.find_or_create_by(order_id: "19", product_id: "1", order_line_status_id: "2", order_line_start_date: "2020-05-20 12:30:51", order_line_description: "Bake M&M covered vanilla cake", special_order_notes: "M&Ms need to be the regular sized milk chocolate ones")
#Order 20 OL 23
OrderLine.find_or_create_by(order_id: "20", product_id: "2", order_line_status_id: "2", order_line_start_date: "2020-05-20 12:30:51", order_line_description: "Bake 13 milk chocolate chip cookies", special_order_notes: "Throw in an extra cookie to congratulate them on their newborn")
#Order 21 OL 24
OrderLine.find_or_create_by(order_id: "21", product_id: "1", order_line_status_id: "2", order_line_start_date: "2020-05-25 13:00:33", order_line_description: "Strawberry and Vanilla cake")
#Order 22 OL 25
OrderLine.find_or_create_by(order_id: "22", product_id: "1", order_line_status_id: "1", order_line_start_date: "2020-06-01 13:00:21", order_line_description: "Coffee cake w/ Chocolate Buttercream frosting")

#OL 1 T 1-2
Tier.create_or_find_by(position: '1', cake_flavor_id: '1', frosting_flavor_id: '1', shape_id: '4', order_line_id: '1', tier_size: '3', tier_special_notes: "This layer is a JoJo reference")
Tier.create_or_find_by(position: '2', cake_flavor_id: '1', frosting_flavor_id: '2', shape_id: '2', order_line_id: '1', tier_size: '2', tier_special_notes: "This layer is a bad joke")
#OL 2 T 3
Tier.create_or_find_by(position: '1', cake_flavor_id: '2', frosting_flavor_id: '1', shape_id: '4', order_line_id: '2', tier_size: '1')
#OL 3 T 4
Tier.create_or_find_by(position: '1', cake_flavor_id: '3', frosting_flavor_id: '3', shape_id: '1', order_line_id: '3', tier_size: '2', tier_special_notes: "Make flat like a pizza")
#OL 4 T 5
Tier.create_or_find_by(position: '1', cake_flavor_id: '1', frosting_flavor_id: '2', shape_id: '4', order_line_id: '4', tier_size: '3')
#OL 5 T6
Tier.create_or_find_by(position: '1', cake_flavor_id: '4', frosting_flavor_id: '3', shape_id: '4', order_line_id: '5', tier_size: '1')
#OL 6 T7
Tier.create_or_find_by(position: '1', cake_flavor_id: '6', frosting_flavor_id: '4', shape_id: '4', order_line_id: '6', tier_size: '1')
#OL 11 T8
Tier.create_or_find_by(position: '1', cake_flavor_id: '2', frosting_flavor_id: '2', shape_id: '3', order_line_id: '11', tier_size: '4.20')
#OL 12 T 9-11
Tier.create_or_find_by(position: '1', cake_flavor_id: '1', frosting_flavor_id: '2', shape_id: '4', order_line_id: '12', tier_size: '5')
Tier.create_or_find_by(position: '2', cake_flavor_id: '1', frosting_flavor_id: '2', shape_id: '4', order_line_id: '12', tier_size: '3')
Tier.create_or_find_by(position: '3', cake_flavor_id: '1', frosting_flavor_id: '2', shape_id: '4', order_line_id: '12', tier_size: '2')
#Ol 14 T 12
Tier.create_or_find_by(position: '1', cake_flavor_id: '4', frosting_flavor_id: '3', shape_id: '4', order_line_id: '14', tier_size: '1.75')
#OL 15 T 13
Tier.create_or_find_by(position: '1', cake_flavor_id: '2', frosting_flavor_id: '3', shape_id: '4', order_line_id: '15', tier_size: '2')
#OL 16 T 14
Tier.create_or_find_by(position: '1', cake_flavor_id: '2', frosting_flavor_id: '3', shape_id: '4', order_line_id: '16', tier_size: '2')
#OL 17 T 15
Tier.create_or_find_by(position: '1', cake_flavor_id: '1', frosting_flavor_id: '2', shape_id: '1', order_line_id: '17', tier_size: '1')
#OL 18 T 16
Tier.create_or_find_by(position: '1', cake_flavor_id: '2', frosting_flavor_id: '1', shape_id: '1', order_line_id: '18', tier_size: '3')
#OL 19 T 17-18
Tier.create_or_find_by(position: '1', cake_flavor_id: '3', frosting_flavor_id: '4', shape_id: '2', order_line_id: '19', tier_size: '4', tier_special_notes: "Base of the Treasure Chest")
Tier.create_or_find_by(position: '2', cake_flavor_id: '3', frosting_flavor_id: '3', shape_id: '2', order_line_id: '19', tier_size: '4', tier_special_notes: "Lid of the Treasure Chest")
#OL 21 T 19
Tier.create_or_find_by(position: '1', cake_flavor_id: '3', frosting_flavor_id: '1', shape_id: '3', order_line_id: '21', tier_size: '3 x 3 x 3')
#OL 22 T 20
Tier.create_or_find_by(position: '1', cake_flavor_id: '1', frosting_flavor_id: '2', shape_id: '4', order_line_id: '22', tier_size: '4.5 x 6')
#OL 24 T 21
Tier.create_or_find_by(position: '1', cake_flavor_id: '1', frosting_flavor_id: '4', shape_id: '4', order_line_id: '24', tier_size: '4 x 8')
#OL 25 T 22
Tier.create_or_find_by(position: '1', cake_flavor_id: '5', frosting_flavor_id: '3', shape_id: '2', order_line_id: '25', tier_size: '3 x 3')

TierFilling.create_or_find_by(tier_id: 1, filling_id: 1)
TierFilling.create_or_find_by(tier_id: 2, filling_id: 1)
TierFilling.create_or_find_by(tier_id: 3, filling_id: 12)
TierFilling.create_or_find_by(tier_id: 4, filling_id: 13)
TierFilling.create_or_find_by(tier_id: 5, filling_id: 2)
TierFilling.create_or_find_by(tier_id: 6, filling_id: 11)
TierFilling.create_or_find_by(tier_id: 7, filling_id: 7)
TierFilling.create_or_find_by(tier_id: 8, filling_id: 3)
TierFilling.create_or_find_by(tier_id: 9, filling_id: 11)
TierFilling.create_or_find_by(tier_id: 10, filling_id: 11)
TierFilling.create_or_find_by(tier_id: 11, filling_id: 11)
TierFilling.create_or_find_by(tier_id: 12, filling_id: 4)
TierFilling.create_or_find_by(tier_id: 13, filling_id: 8)
TierFilling.create_or_find_by(tier_id: 14, filling_id: 5)
TierFilling.create_or_find_by(tier_id: 15, filling_id: 9)
TierFilling.create_or_find_by(tier_id: 16, filling_id: 6)
TierFilling.create_or_find_by(tier_id: 17, filling_id: 10)
TierFilling.create_or_find_by(tier_id: 18, filling_id: 10)
TierFilling.create_or_find_by(tier_id: 19, filling_id: 12)
TierFilling.create_or_find_by(tier_id: 20, filling_id: 5)
TierFilling.create_or_find_by(tier_id: 21, filling_id: 1)
TierFilling.create_or_find_by(tier_id: 22, filling_id: 4)

Task.create_or_find_by(order_line_id: '1', task_start_date: "2020-03-29 10:57:51", task_due_date: "2020-04-29 09:57:51", task_finish_date: "2020-04-29 10:57:51", task_name: "Advanced Cake Baking 4301", task_description: "An advancment of the cake baking industry", task_status_id: '3')
Task.create_or_find_by(order_line_id: '2', task_start_date: "2020-03-29 10:57:51", task_due_date: "2020-04-29 09:57:51", task_finish_date: "2020-04-29 10:57:51", task_name: "Cake Design", task_description: "Desiging the League of Legends cake", task_status_id: '3')
Task.create_or_find_by(order_line_id: '3', task_start_date: "2020-03-29 10:57:51", task_due_date: "2020-04-29 09:57:51", task_finish_date: "2020-04-29 10:57:51", task_name: "Cake Baking", task_description: "Making the League of Legends cake", task_status_id: '3')
Task.create_or_find_by(order_line_id: '4', task_start_date: "2020-03-29 10:57:51", task_due_date: "2020-04-29 09:57:51", task_finish_date: "2020-04-29 10:57:51", task_name: "Making the Pizza Cake", task_description: "Making the Pizza cake", task_status_id: '3')
Task.create_or_find_by(order_line_id: '5', task_start_date: "2020-03-29 10:57:51", task_due_date: "2020-04-29 09:57:51", task_finish_date: "2020-04-29 10:57:51", task_name: "Designing Best Wedding Cake", task_description: "Design of the best wedding cake", task_status_id: '3')
Task.create_or_find_by(order_line_id: '6', task_start_date: "2020-03-29 10:57:51", task_due_date: "2020-04-29 09:57:51", task_finish_date: "2020-04-29 10:57:51", task_name: "Baking best wedding Cake",task_description: "Baking the best bake", task_status_id: '2')
Task.create_or_find_by(order_line_id: '7', task_start_date: "2020-03-29 10:57:51", task_due_date: "2020-04-29 09:57:51", task_finish_date: "2020-04-29 10:57:51", task_name: "Frosting best wedding Cake",task_description: "Frosting the best bake", task_status_id: '2')
Task.create_or_find_by(order_line_id: '8', task_start_date: "2020-03-29 10:57:51", task_due_date: "2020-04-29 09:57:51", task_finish_date: "2020-04-29 10:57:51", task_name: "Freestyling the small cake", task_description: "Freestyling the small cake", task_status_id: '2')
Task.create_or_find_by(order_line_id: '9', task_start_date: "2020-03-29 10:57:51", task_due_date: "2020-04-29 09:57:51", task_finish_date: "2020-04-29 10:57:51", task_name: "Coronavirus celebration", task_description: "Celebrating virus going away with cake", task_status_id: '1')
Task.create_or_find_by(order_line_id: '10', task_start_date: "2020-03-29 10:57:51", task_due_date: "2020-04-29 09:57:51", task_finish_date: "2020-04-29 10:57:51", task_name: "Coronavirus Cake Pops", task_description: "Coronavirus Cake pops making each batch 1", task_status_id: '1')
Task.create_or_find_by(order_line_id: '11', task_start_date: "2020-03-29 10:57:51", task_due_date: "2020-04-29 09:57:51", task_finish_date: "2020-04-29 10:57:51", task_name: "Coronavirus Cake Pops", task_description: "Coronavirus Cake pops making each batch 2", task_status_id: '1')
Task.create_or_find_by(order_line_id: '12', task_start_date: "2020-03-29 10:57:51", task_due_date: "2020-04-29 09:57:51", task_finish_date: "2020-04-29 10:57:51", task_name: "Coronavirus Cake Pops", task_description: "Coronavirus Cake pops making each batch 3", task_status_id: '1')
Task.create_or_find_by(order_line_id: '13', task_start_date: "2020-03-29 10:57:51", task_due_date: "2020-04-29 09:57:51", task_finish_date: "2020-04-29 10:57:51", task_name: "Cake inside Cake", task_description: "Putting a cake in a cake", task_status_id: '1')
Task.create_or_find_by(order_line_id: '14', task_start_date: "2020-03-29 10:57:51", task_due_date: "2020-04-29 09:57:51", task_finish_date: "2020-04-29 10:57:51", task_name: "Baking best wedding Cake", task_description: "Baking the best bake", task_status_id: '1')
Task.create_or_find_by(order_line_id: '15', task_start_date: "2020-03-29 10:57:51", task_due_date: "2020-04-29 09:57:51", task_finish_date: "2020-04-29 10:57:51", task_name: "Gomez wedding Cake", task_description: "Gomez wedding cake steps", task_status_id: '1')
Task.create_or_find_by(order_line_id: '16', task_start_date: "2020-03-29 10:57:51", task_due_date: "2020-04-29 09:57:51", task_finish_date: "2020-04-29 10:57:51", task_name: "Bake cookies", task_description: "Bake special cookies", task_status_id: '1')
Task.create_or_find_by(order_line_id: '17', task_start_date: "2020-03-29 10:57:51", task_due_date: "2020-04-29 09:57:51", task_finish_date: "2020-04-29 10:57:51", task_name: "Quick crazy cake", task_description: "Quick crazy cake baking", task_status_id: '1')
Task.create_or_find_by(order_line_id: '18', task_start_date: "2020-03-29 10:57:51", task_due_date: "2020-04-29 09:57:51", task_finish_date: "2020-04-29 10:57:51", task_name: "Batman cake making", task_description: "Making the batman cake", task_status_id: '1')
Task.create_or_find_by(order_line_id: '19', task_start_date: "2020-03-29 10:57:51", task_due_date: "2020-04-29 09:57:51", task_finish_date: "2020-04-29 10:57:51", task_name: "Bake wedding cake", task_description: "Baking graduation cake", task_status_id: '1')

RentalLine.create_or_find_by(order_id: 5, rental_item_id: 1)
RentalLine.create_or_find_by(order_id: 4, rental_item_id: 1)
RentalLine.create_or_find_by(order_id: 14, rental_item_id: 2)
RentalLine.create_or_find_by(order_id: 20, rental_item_id: 2)

TaskAssignment.create_or_find_by(task_id: 1, employee_id: 1)
TaskAssignment.create_or_find_by(task_id: 2, employee_id: 5)
TaskAssignment.create_or_find_by(task_id: 2, employee_id: 4)
TaskAssignment.create_or_find_by(task_id: 2, employee_id: 3)
TaskAssignment.create_or_find_by(task_id: 3, employee_id: 3)
TaskAssignment.create_or_find_by(task_id: 3, employee_id: 2)
TaskAssignment.create_or_find_by(task_id: 3, employee_id: 1)
TaskAssignment.create_or_find_by(task_id: 4, employee_id: 2)
TaskAssignment.create_or_find_by(task_id: 5, employee_id: 5)
TaskAssignment.create_or_find_by(task_id: 6, employee_id: 5)
TaskAssignment.create_or_find_by(task_id: 7, employee_id: 2)
TaskAssignment.create_or_find_by(task_id: 8, employee_id: 1)
TaskAssignment.create_or_find_by(task_id: 9, employee_id: 1)
TaskAssignment.create_or_find_by(task_id: 10, employee_id: 3)
TaskAssignment.create_or_find_by(task_id: 10, employee_id: 4)
TaskAssignment.create_or_find_by(task_id: 11, employee_id: 4)
TaskAssignment.create_or_find_by(task_id: 12, employee_id: 4)
TaskAssignment.create_or_find_by(task_id: 13, employee_id: 5)
TaskAssignment.create_or_find_by(task_id: 14, employee_id: 4)
TaskAssignment.create_or_find_by(task_id: 15, employee_id: 2)
TaskAssignment.create_or_find_by(task_id: 16, employee_id: 2)
TaskAssignment.create_or_find_by(task_id: 17, employee_id: 3)
TaskAssignment.create_or_find_by(task_id: 18, employee_id: 1)
TaskAssignment.create_or_find_by(task_id: 18, employee_id: 1)


# Dietary Restrictions 1-5 Order lines 1-21
OrderLineRestriction.create_or_find_by(order_line_id: 1, dietary_restriction_id: 1)
OrderLineRestriction.create_or_find_by(order_line_id: 1, dietary_restriction_id: 4)
OrderLineRestriction.create_or_find_by(order_line_id: 2, dietary_restriction_id: 2)
OrderLineRestriction.create_or_find_by(order_line_id: 3, dietary_restriction_id: 1)
OrderLineRestriction.create_or_find_by(order_line_id: 4, dietary_restriction_id: 5)
OrderLineRestriction.create_or_find_by(order_line_id: 5, dietary_restriction_id: 3)
OrderLineRestriction.create_or_find_by(order_line_id: 6, dietary_restriction_id: 1)
OrderLineRestriction.create_or_find_by(order_line_id: 7, dietary_restriction_id: 1)
OrderLineRestriction.create_or_find_by(order_line_id: 8, dietary_restriction_id: 2)
OrderLineRestriction.create_or_find_by(order_line_id: 9, dietary_restriction_id: 4)
OrderLineRestriction.create_or_find_by(order_line_id: 10, dietary_restriction_id: 4)
OrderLineRestriction.create_or_find_by(order_line_id: 11, dietary_restriction_id: 4)
OrderLineRestriction.create_or_find_by(order_line_id: 12, dietary_restriction_id: 1)
OrderLineRestriction.create_or_find_by(order_line_id: 13, dietary_restriction_id: 1)
OrderLineRestriction.create_or_find_by(order_line_id: 14, dietary_restriction_id: 3)
OrderLineRestriction.create_or_find_by(order_line_id: 15, dietary_restriction_id: 1)
OrderLineRestriction.create_or_find_by(order_line_id: 16, dietary_restriction_id: 2)
OrderLineRestriction.create_or_find_by(order_line_id: 17, dietary_restriction_id: 4)
OrderLineRestriction.create_or_find_by(order_line_id: 18, dietary_restriction_id: 5)
OrderLineRestriction.create_or_find_by(order_line_id: 19, dietary_restriction_id: 1)
OrderLineRestriction.create_or_find_by(order_line_id: 20, dietary_restriction_id: 1)
