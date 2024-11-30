package handlers

import (
	"net/http"

	"github.com/labstack/echo/v4"
)

// Routes
func Hellos(c echo.Context) error {
	return c.String(http.StatusOK, "Hello from the web side!")
}