package api

import (
	"echo-jwt-example/api/handlers"

	"github.com/labstack/echo/v4"
)

func CookieGroup(g *echo.Group) {
	g.GET("/main", handlers.Maincookie)
}
