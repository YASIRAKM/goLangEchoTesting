package handlers

import (
	"log"
	"net/http"

	"github.com/golang-jwt/jwt/v4"
	"github.com/labstack/echo/v4"
)

func MainJwt(c echo.Context) error {
	user := c.Get("user")
	log.Println(user)
	token, ok := user.(*jwt.Token)
	if !ok {
		return echo.NewHTTPError(http.StatusUnauthorized, "Invalid JWT token")
	}
	claims := token.Claims.(jwt.MapClaims)
	log.Println("User_name:", claims["name"], "user ID:", claims["jti"])

	return c.String(http.StatusOK, "you are on the top secret jwt page !")
}
