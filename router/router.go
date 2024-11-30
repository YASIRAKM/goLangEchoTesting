package router

import (
	"echo-jwt-example/api"
	"echo-jwt-example/api/middlewares"
	
	_ "github.com/go-sql-driver/mysql"
	"github.com/labstack/echo/v4"
)

func New() *echo.Echo {
	

	e := echo.New()
	// Groups
	adminGroup := e.Group("/admin")
	cookieGroup := e.Group("/cookie")
	jwtGroup := e.Group("/jwt")

	// Define routes
	// defer DB.Close()

	//set
	middlewares.SetMainMiddlewares(e)
	middlewares.SetAdminMiddlewares(adminGroup)
	middlewares.SetCookieMiddleWares(cookieGroup)
	middlewares.SetJWTMiddlewares(jwtGroup)
	//set main groups
	api.MainGroup(e)
	api.AdminGroup(adminGroup)
	api.CookieGroup(cookieGroup)
	api.JwtGroup(jwtGroup)

	return e

}
