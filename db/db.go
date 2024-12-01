package db

import (
	"database/sql"
	"fmt"
	"log"
)

var DB *sql.DB

func InitDb() {
	dsn := "eccommerce:yasir@11@unix(/cloudsql/fluid-shoreline-443405-p8:us-central1:ecommerce)/test"

	var err error
	DB, err = sql.Open("mysql", dsn)
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
