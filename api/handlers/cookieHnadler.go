package handlers

import (
	"net/http"

	"github.com/labstack/echo/v4"
)

func Maincookie(c echo.Context) error {
	// Check for the session cookie
	cookie, err := c.Cookie("sessionId")
	if err != nil || cookie.Value != "some_string" {
		return c.String(http.StatusUnauthorized, "Invalid or missing cookie")
	}

	return c.String(http.StatusOK, "You are on the cookie-protected page!")
}
