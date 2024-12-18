package middlewares

import (
	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
)

func SetMainMiddlewares(e *echo.Echo) {
	e.Use(middleware.Static("static"))

	e.Use(ServerHeader)
}

// Middleware to set custom server headers
func ServerHeader(next echo.HandlerFunc) echo.HandlerFunc {
	return func(c echo.Context) error {
		c.Response().Header().Set(echo.HeaderServer, "BlueBot/1.0")
		c.Response().Header().Set("NotReallyHeader", "ThisHeaderDoesNothing")
		return next(c)
	}
}
