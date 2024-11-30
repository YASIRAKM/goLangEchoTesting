package handlers

import (
	"fmt"
	"log"
	"net/http"

	"github.com/labstack/echo/v4"
)

// Define structs for Cat, Dog, Hamster, and JWT claims
type Cat struct {
	Name string `json:"name"`
	Type string `json:"type"`
}

func GetCats(c echo.Context) error {
	catName := c.QueryParam("name")
	catType := c.QueryParam("type")
	dataType := c.Param("data") // Path param

	if dataType == "string" {
		return c.String(http.StatusOK, fmt.Sprintf("Your cat's name is: %s\nand their type is: %s", catName, catType))
	} else if dataType == "json" {
		return c.JSON(http.StatusOK, map[string]string{
			"name": catName,
			"type": catType,
		})
	}

	return c.JSON(http.StatusBadRequest, map[string]string{"error": "Invalid data type. Use 'string' or 'json'"})
}

func AddCat(c echo.Context) error {
	cat := Cat{}
	if err := c.Bind(&cat); err != nil {
		log.Printf("Failed to bind Cat data: %v", err)
		return c.String(http.StatusBadRequest, "Failed to process cat data")
	}

	log.Printf("Received Cat: %#v", cat)
	return c.String(http.StatusOK, "Cat added successfully!")
}
