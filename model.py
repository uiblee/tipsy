import sqlite3
import datetime

def connect_db():
	return sqlite3.connect("tipsy.db")



db = connect_db()
def new_user(db, email, password, name):
	c = db.cursor()
	query = """INSERT INTO Users VALUES (NULL, ?, ?, ?)"""
	result = c.execute(query, (email, password, name))
	db.commit()
	return result.lastrowid

def authenticate(db, email, password):
	c = db.cursor()
	query = """SELECT * FROM Users WHERE email = ? AND password = ?"""
	c.execute(query, (email, password))
	result = c.fetchone()
	if result:
		fields = ["id", "email", "password", "username"]
		return dict(zip(fields, result))
	return None
	
def new_task(db, title, user_id):
	c = db.cursor()
	now = datetime.datetime.now()
	query = """INSERT INTO Tasks VALUES (NULL, ?, ?)"""
	result = c.execute(query, (title, user_id), now.strftime("%Y-%m-%d %H:%M:%S"))
	db.commit()
	return result.lastrowid

def get_user(db, user_id):
	c = db.cursor()
	query = """SELECT * FROM Users WHERE user_id = ?"""
	c.execute(query, (user_id))
	result = c.fetchone()

