package middlewares

import (
	echojwt "github.com/labstack/echo-jwt"
	"github.com/labstack/echo/v4"
)

func SetJWTMiddlewares(g *echo.Group) {
	g.Use(
		echojwt.WithConfig(echojwt.Config{
			SigningKey:    []byte("mySecret"),
			SigningMethod: "HS512",
			ContextKey:    "user",
			TokenLookup:   "cookie:JWTcookie",
		}),
	)
}
