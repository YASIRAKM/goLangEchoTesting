package handlers

import (
	"log"
	"net/http"

	"github.com/labstack/echo/v4"
)

type Hamster struct {
	Name string `json:"name"`
	Type string `json:"type"`
}

func AddHamster(c echo.Context) error {
	hamster := Hamster{}
	if err := c.Bind(&hamster); err != nil {
		log.Printf("Failed to bind Hamster data: %v", err)
		return c.String(http.StatusBadRequest, "Failed to process hamster data")
	}

	log.Printf("Received Hamster: %#v", hamster)
	return c.String(http.StatusOK, "Hamster added successfully!")
}
