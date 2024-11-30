package handlers

import (
	"log"
	"net/http"

	"github.com/labstack/echo/v4"
)

type Dog struct {
	Name string `json:"name"`
	Type string `json:"type"`
}

func AddDog(c echo.Context) error {
	dog := Dog{}
	if err := c.Bind(&dog); err != nil {
		log.Printf("Failed to bind Dog data: %v", err)
		return c.String(http.StatusBadRequest, "Failed to process dog data")
	}

	log.Printf("Received Dog: %#v", dog)
	return c.String(http.StatusOK, "Dog added successfully!")
}
