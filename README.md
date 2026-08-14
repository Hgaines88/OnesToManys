## Collection Archive

### What this product does:

A public-facing archive that helps people discover which individual designers created collections for different fashion labels throughout their careers.
Users can add/edit designer/collection records (think Wiki)
Visitors can view archived designers to discover who created certain fashion collections, view collections credited to a designer across different labels and seasons.

### Data relationship

One designer may have many collections across many labels/seasons. (OneToMany) Eventually I think I should include a junction table to represent collections credited to multiple designers. (ManyToMany)

### Technology

- SQLite
- Python
- FastAPI
- Vanilla HTML, CSS, and JavaScript
- Pytest

### Run locally

```bash
python3 -m venv .venv
source .venv/bin/activate
python3 -m pip install -r requirements.txt
python3 scripts/init_db.py
uvicorn app.main:app --reload
```

`init_db.py` creates and seeds `data/archive.db` only when the database does
not already exist. It never overwrites live archive records.

### Application Structure

sql/schema.sql
    #schema.sql defines the database tables, fields, constraints, foreign key, and index.
sql/seed.sql
    #seed.sql contains repeatable sample records.
scripts/init_db.py
    #init_db.py creates and seeds the database only when it does not exist.
app/database.py
    #database.py opens and configures connections used during normal API reads and writes.
app/schemas.py
    #schemas.py defines the accepted structure and validation rules for designer and collection data received by the API. The SQL tables remain defined separately in schema.sql.
app/main.py
    #main.py defines the middle-tier FastAPI application. Uvicorn receives HTTP requests and passes them to matching FastAPI routes. Those routes validate requests, run SQL through a database connection, and return data or errors to the frontend as HTTP responses.
web/
    #The web/ directory contains the user-facing layer. HTML defines the structure and content of each page, CSS controls its visual presentation, and JavaScript loads archive data, handles forms, and communicates with the API.
tests/
    #The tests verify API functionality by sending predefined input and comparing the response with expected output. Each test uses a temporary database so the real archive data is not changed.

# OnesToManys (ListDetails)

The point of this project is to explore what a 3-tier web application is like.
You can implment it in either Java (and Java frameworks) or Python (and Python frameworks).

Choosing one possible project relations below, you need to create a ListDetails application that allows users to manage their data in a 3-tier architecture.

This means it will have a REST API middle-end, with a relational database backend.

It has three phases.

### Phase 1 (days 1-2)

- build a plan for the project
- design the database schema by building out data objects
- write a SQL file with the schema
- generate another SQL file filled with synthetic generated data that can be loaded into the database
- create a REST server to create, read, update, and delete data objects
  - start with `curl` and doing a GET of your _master_ table
  - continue with `curl` and doing a GET of your _detail_ table
  - add the other CRUD operations for both master and detail tables

### Phase 2 (days 3-4)

- add a one to many relationship between your master and detail tables
- add REST API endpoints for the one to many relationship
- use a GUI based REST API client to test your endpoints
  - you might use Postman or Insomnia, or even Everest.
- add a means to dump and load your data to either SQL and/or JSON files

### Phase 3 (days 5-7)

- create a simple Vanilla JavaScript application to interact with your REST API
- do the same with React
- add web pages for CRUD operations for both master and detail tables
- add web pages for the one to many relationship, designing a UI that shows some dynamic data from the database

### Overall ListDetails Stacks

A basic SQL lab: tables, schema, selects, and crud in SQL repl; simple API access
Java: ListDetail phase 1,2 REST/DB app https://spring.io/guides/gs/accessing-data-rest Spring; Data: ListDetail phase 1,2 REST/DB app (fastapi, flask, sqlite3
https://zcw.guru/kristofer/ae5cb89250b14a6da2903a9cc613390b

## Understanding Master-Detail Relationships in Data Modeling


## What is a Master-Detail Relationship?

A master-detail relationship (sometimes called parent-child relationship) is a fundamental data modeling concept where:

- **Master (Parent) Entity**: Contains primary information and can exist independently
- **Detail (Child) Entity**: Contains secondary information that depends on the master entity and cannot exist without it

## Why Master-Detail Relationships Matter

Understanding master-detail relationships is crucial for several reasons:

1. **Data Integrity**: Ensures related data remains consistent and valid
2. **Efficient Data Organization**: Provides logical structure to complex information
3. **Improved User Experience**: Enables intuitive navigation through hierarchical data
4. **Optimized Queries**: Allows for more efficient database operations
5. **Scalable Application Design**: Creates maintainable, extensible software architecture

## Real-World Examples Across Domains

### E-Commerce
- **Master**: Order
- **Detail**: Order Items

An order can contain multiple items, but each order item belongs to exactly one order.

### Finance
- **Master**: Invoice
- **Detail**: Line Items

An invoice contains multiple line items, but each line item is associated with exactly one invoice.

### Healthcare
- **Master**: Patient
- **Detail**: Medical Records

A patient has multiple medical records, but each record belongs to one patient.

### Education
- **Master**: Course
- **Detail**: Lectures/Assignments

A course consists of multiple lectures and assignments, but each lecture/assignment belongs to one course.

## Database Implementation

In relational databases, master-detail relationships are typically implemented using foreign keys:

```/dev/null/example-schema.sql#L1-10
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE
);

CREATE TABLE order_items (
    item_id INT PRIMARY KEY,
    order_id INT REFERENCES orders(order_id),
    product_id INT,
    quantity INT
);
```

## Implementing in Java and Python

### Java Example (Spring Boot)

```/dev/null/Order.java#L1-15
@Entity
public class Order {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Date orderDate;

    @OneToMany(mappedBy = "order", cascade = CascadeType.ALL)
    private List<OrderItem> items = new ArrayList<>();

    // Getters and setters
}
```

```/dev/null/OrderItem.java#L1-15
@Entity
public class OrderItem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "order_id")
    private Order order;

    private String productName;
    private int quantity;

    // Getters and setters
}
```

### Python Example (SQLAlchemy)

```/dev/null/models.py#L1-20
from sqlalchemy import Column, Integer, String, ForeignKey, Date
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import relationship

Base = declarative_base()

class Order(Base):
    __tablename__ = 'orders'
    id = Column(Integer, primary_key=True)
    order_date = Column(Date)
    items = relationship("OrderItem", back_populates="order")

class OrderItem(Base):
    __tablename__ = 'order_items'
    id = Column(Integer, primary_key=True)
    order_id = Column(Integer, ForeignKey('orders.id'))
    product_name = Column(String)
    quantity = Column(Integer)
    order = relationship("Order", back_populates="items")
```

## REST API Design for Master-Detail

A well-designed REST API should reflect the master-detail relationship in its endpoints:

### Resource Structure
- `/orders` - Get all orders
- `/orders/{id}` - Get a specific order
- `/orders/{id}/items` - Get all items for a specific order
- `/orders/{id}/items/{itemId}` - Get a specific item from a specific order

### Java Example (Spring Boot)

```/dev/null/OrderController.java#L1-22
@RestController
@RequestMapping("/api/orders")
public class OrderController {
    @Autowired
    private OrderService orderService;

    @GetMapping
    public List<Order> getAllOrders() {
        return orderService.findAll();
    }

    @GetMapping("/{id}")
    public Order getOrderById(@PathVariable Long id) {
        return orderService.findById(id);
    }

    @GetMapping("/{id}/items")
    public List<OrderItem> getOrderItems(@PathVariable Long id) {
        Order order = orderService.findById(id);
        return order.getItems();
    }
}
```

### Python Example (Flask)

```/dev/null/app.py#L1-25
from flask import Flask, jsonify
from models import Order, OrderItem
from database import db_session

app = Flask(__name__)

@app.route('/api/orders', methods=['GET'])
def get_all_orders():
    orders = Order.query.all()
    return jsonify([{'id': o.id, 'order_date': o.order_date} for o in orders])

@app.route('/api/orders/<int:order_id>', methods=['GET'])
def get_order(order_id):
    order = Order.query.get_or_404(order_id)
    return jsonify({
        'id': order.id,
        'order_date': order.order_date,
        'items': [{'id': item.id, 'product_name': item.product_name} for item in order.items]
    })

@app.route('/api/orders/<int:order_id>/items', methods=['GET'])
def get_order_items(order_id):
    order = Order.query.get_or_404(order_id)
    return jsonify([{'id': item.id, 'product_name': item.product_name} for item in order.items])
```

## Administration Best Practices

1. **Cascade Operations**: Properly configure delete/update cascades
2. **Indexes**: Create appropriate indexes on foreign keys
3. **Constraints**: Implement referential integrity constraints
4. **Transactions**: Use transactions for operations involving both master and detail records
5. **Pagination**: Implement pagination for large detail collections
6. **Caching**: Consider caching frequently accessed master records

## Conclusion

Master-detail relationships are the backbone of effective data modeling and application development. Understanding these relationships enables beginners to:

1. Design intuitive and efficient data models
2. Create scalable database schemas
3. Develop user-friendly applications
4. Build RESTful APIs that accurately represent business domains

As you progress in your Java or Python development journey, mastering this concept will significantly enhance your ability to model real-world problems and create robust solutions. Whether you're building a simple to-do app or an enterprise-grade system, the master-detail pattern will be a constant companion in your development toolkit.

## But wait...DTO?

What's a DTO? Why? https://zcw.guru/kristofer/dtointro

## Possible project relations

These are some possible projrct relations for your ListDetail app.
You can also propose your own project relations, but it must be approved by an
instructor.

- Customer (master) - Orders (detail)
- Department (master) - Employees (detail)
- Course (master) - Students (detail)
- Author (master) - Books (detail)
- Invoice (master) - Line Items (detail)
- Product Category (master) - Products (detail)
- Blog Post (master) - Comments (detail)
- Playlist (master) - Songs (detail)
- Movie (master) - Actors (detail)
- University (master) - Departments (detail)
- Project (master) - Tasks (detail)
- Manufacturer (master) - Products (detail)
- Warehouse (master) - Inventory Items (detail)
- Email (master) - Attachments (detail)
- Country (master) - States/Provinces (detail)
- Hospital (master) - Patients (detail)
- Album (master) - Photos (detail)
- Survey (master) - Questions (detail)
