package api

import (
	"echo-jwt-example/api/handlers"

	"github.com/labstack/echo/v4"
)

func MainGroup(e *echo.Echo) {
	// Public routes
	e.GET("/", handlers.Hellos)
	e.GET("/cats/:data", handlers.GetCats)
	e.POST("/cats", handlers.AddCat)
	e.POST("/dogs", handlers.AddDog)
	e.POST("/hamsters", handlers.AddHamster)

	e.GET("/users", handlers.GetUsers)
	e.POST("/addUser", handlers.AddUser)

	// Login route for generating JWT token
	e.GET("/login", handlers.Login)
}
