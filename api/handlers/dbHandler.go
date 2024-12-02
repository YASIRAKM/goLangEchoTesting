package handlers

import (
	"echo-jwt-example/db"
	"net/http"

	"github.com/labstack/echo/v4"
)

// getUsers handler to retrieve all users
func GetUsers(c echo.Context) error {

	// Check if DB is initialized
	if db.DB == nil {
		return c.String(500, "Database connection is not initialized.")
	}

	// Query to select all users
	rows, err := db.DB.Query("SELECT id, name, email FROM users")
	if err != nil {
		return c.String(500, "Error querying users: "+err.Error())
	}
	defer rows.Close()

	var users []User
	// Iterate over rows and append each user to the slice
	for rows.Next() {
		var user User
		if err := rows.Scan(&user.ID, &user.Name, &user.Email); err != nil {
			return c.String(500, "Error scanning row: "+err.Error())
		}
		users = append(users, user)
	}

	// Check if there were any errors iterating over rows
	if err := rows.Err(); err != nil {
		return c.String(500, "Error with rows iteration: "+err.Error())
	}

	// Return the list of users as JSON
	return c.JSON(200, users)
}

// User struct to map user data
type User struct {
	ID    int    `json:"id"`
	Name  string `json:"name"`
	Email string `json:"email"`
}

func AddUser(c echo.Context) error {
	var user User

	// Check if DB is initialized
	if db.DB == nil {
		return c.String(500, "Database connection is not initialized.")
	}

	if err := c.Bind(&user); err != nil {
		return c.String(400, "Invalid input: "+err.Error())
	}

	_, err := db.DB.Exec("INSERT INTO users (name,email) VALUES (?,?)", user.Name, user.Email)

	if err != nil {
		return c.String(http.StatusUnauthorized, "Error adding user : "+err.Error())
	}
	return c.JSON(http.StatusOK, user)

}
