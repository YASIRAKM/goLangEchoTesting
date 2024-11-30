package middlewares

import (
	"net/http"

	"github.com/labstack/echo/v4"
)

func SetCookieMiddleWares(g *echo.Group) {
	// Cookie Authentication Middleware
	g.Use(checkCookie)
}

func checkCookie(next echo.HandlerFunc) echo.HandlerFunc {
	return func(c echo.Context) error {
		cookie, err := c.Cookie("sessionId")
		if err != nil || cookie.Value != "some_string" {
			return c.String(http.StatusUnauthorized, "You don't have the correct cookie")
		}
		return next(c)
	}
}
