package middlewares

import (
	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
)

func SetAdminMiddlewares(g *echo.Group) {

	g.Use(middleware.LoggerWithConfig(middleware.LoggerConfig{Format: `[$(time_rfc339)]  $(status)  $(host)${path}  ${latency_human}` + "\n"}))
	// Admin route with BasicAuth middleware
	g.Use(middleware.BasicAuth(func(username, password string, ctx echo.Context) (bool, error) {
		if username == "jack" && password == "1234" {
			return true, nil
		}
		return false, nil
	}))

}
