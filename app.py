from flask import Flask, render_template, request, redirect
import mysql.connector

app = Flask(__name__)

db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="12345",
    database="hotel_db"
)

cursor = db.cursor()

# -------------------------
# HOME
# -------------------------
@app.route("/")
def index():
    cursor.execute("""
        SELECT r.reservation_id, c.full_name, rm.room_number, r.check_in, r.check_out
        FROM reservations r
        JOIN customers c ON r.customer_id = c.customer_id
        JOIN rooms rm ON r.room_id = rm.room_id
    """)
    reservations = cursor.fetchall()
    return render_template("index.html", reservations=reservations)


# -------------------------
# ADD CUSTOMER
# -------------------------
@app.route("/add_customer", methods=["POST"])
def add_customer():
    name = request.form["name"]
    phone = request.form["phone"]
    email = request.form["email"]

    cursor.execute(
        "INSERT INTO customers (full_name, phone, email) VALUES (%s, %s, %s)",
        (name, phone, email)
    )
    db.commit()

    return redirect("/")


# -------------------------
# ADD RESERVATION
# -------------------------
@app.route("/add_reservation", methods=["POST"])
def add_reservation():
    customer_id = request.form["customer_id"]
    room_id = request.form["room_id"]
    check_in = request.form["check_in"]
    check_out = request.form["check_out"]

    cursor.execute("""
        INSERT INTO reservations (customer_id, room_id, check_in, check_out)
        VALUES (%s, %s, %s, %s)
    """, (customer_id, room_id, check_in, check_out))

    db.commit()
    return redirect("/")


if __name__ == "__main__":
    app.run(debug=True)
