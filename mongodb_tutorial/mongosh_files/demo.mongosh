// ========================= Insert and update queries =========================
// Insert one records into the Items collection
db.items.insertOne(
    {
        order_number : 2023171,
        date : ISODate("2023-03-17"),
        total_sum : 600.0,
        customer : {
            name : "Denys",
            surname : "Herasymuk",
            phones : [1440189],
            address : "Bandery 1, Lviv, UA"
        },
        payment : {
            card_owner : "Denys Herasymuk",
            cardId : 18273645
        },
        items_id : ["640e5b70d147285c7d6a2ede"]
    }
);

// Analog of the following query:
// UPDATE items
// SET price = price + 50,
//     color = "blue",
//     case_size = 45
// WHERE category = "Smart Watch" AND producer = "Samsung"
db.items.updateMany(
    {category: "Smart Watch", producer: "Samsung"},
    {
        $inc: {price: 50},
        $set: {
            color: "blue",
            case_size: 45
        }
    }
 );


// ========================= Select queries =========================
// Analog of SELECT * FROM items
db.items.find({});

// Analog of SELECT _id, order_number FROM items
db.orders.find({}, {order_number: 1});

// Analog of SELECT order_number FROM items
db.orders.find({}, {order_number: 1, _id: 0});

// Analog of the following RDBMS query:
// SELECT _id, order_number, total_sum, "payment.card_owner"
// FROM items
// WHERE total_sum > 2400
db.orders.find({total_sum: {$gt: 2400}}, {order_number: 1, total_sum: 1, "payment.card_owner": 1});

// Analog of SELECT DISTINCT producer FROM items
db.items.distinct("producer");

// Analog of SELECT * FROM items WHERE category = "Smart Watch" AND price >= 350 AND price < 500
db.items.find({category: "Smart Watch", price: {$gte: 350, $lt: 500}});

// Analog of SELECT * FROM items WHERE model = "Apple Watch Series 8" OR model = "Galaxy Watch 5"
db.items.find({$or: [{model: "Apple Watch Series 8"}, {model: "Galaxy Watch 5"}]});


// ========================= Aggregations =========================
// Analog of SELECT count(category) FROM items
db.items.find({ category: "Smart Watch" }).count();
