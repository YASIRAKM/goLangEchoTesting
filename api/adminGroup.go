package api

import (
	"echo-jwt-example/api/handlers"

	"github.com/labstack/echo/v4"
)

func AdminGroup(g *echo.Group) {
	g.GET("/main", handlers.MainAdmin)
}
