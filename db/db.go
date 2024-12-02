package db

import (
	"database/sql"
	"fmt"
	"log"

	_ "github.com/mattn/go-sqlite3"
)

var DB *sql.DB

func InitDb() {
	// Turso DB connection details
	dbURL := "libsql://ecommerce-yasirakm.aws-us-east-1.turso.io"
	dbAuthToken := "eyJhbGciOiJFZERTQSIsInR5cCI6IkpXVCJ9.eyJhIjoicnciLCJpYXQiOjE3MzMxMTQ4MjQsImlkIjoiMmQwZjBiMTgtY2RlZi00ODliLTk1OGMtZTRlOTQ0NGQwOTU3In0.twr2xpQd57h2xaEtVOjdx8AgDSMBb-M1nPXLS6nzkIbMeq5RjKhUzFUNbw8FPXe3zzLgfiTJH_--TQDm4Jo9Dw"

	// Construct the connection string
	connStr := fmt.Sprintf("%s?_auth_token=%s", dbURL, dbAuthToken)

	// Connect to Turso DB
	DB, err := sql.Open("sqlite3", connStr)
	if err != nil {
		log.Fatal("Failed to connect to database:", err)
	}

	// Check if the connection is successful
	if err := DB.Ping(); err != nil {
		log.Fatal("Failed to ping database:", err)
	}
	fmt.Println("Connected to MySQL database!")
}

// CloseDB closes the database connection
func CloseDB() error {
	if err := DB.Close(); err != nil {
		log.Printf("Error closing DB: %v", err)
		return err
	}
	fmt.Println("Database connection closed.")
	return nil
}
