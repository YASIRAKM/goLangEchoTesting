package handlers

import (
	"log"
	"net/http"
	"time"

	"github.com/golang-jwt/jwt/v4"
	"github.com/labstack/echo/v4"
)

type JwtClaims struct {
	Name string `json:"name"`
	jwt.StandardClaims
}

// Login route that generates a JWT token
func Login(c echo.Context) error {
	username := c.QueryParam("username")
	password := c.QueryParam("password")
	if username == "jack" && password == "1234" {
		// Set a session cookie
		cookie := &http.Cookie{
			Name:     "sessionId",
			Value:    "some_string",
			Expires:  time.Now().Add(48 * time.Hour),
			HttpOnly: true, // Ensure cookie is not accessible via JS
		}
		c.SetCookie(cookie)

		// // Generate JWT token
		token, err := createJwtToken()
		if err != nil {
			log.Println("Error creating JWT token:", err)
			return c.String(http.StatusInternalServerError, "Something went wrong")
		}
		jwtCookie := &http.Cookie{
			Name:     "JWTcookie",
			Value:    token,
			Expires:  time.Now().Add(48 * time.Hour),
			HttpOnly: true, // Ensure cookie is not accessible via JS
		}
		c.SetCookie(jwtCookie)

		return c.JSON(http.StatusOK, map[string]string{
			"message": "You are logged in!",
			"token":   token,
		})
	}
	return c.String(http.StatusUnauthorized, "Invalid username or password")
}

func createJwtToken() (string, error) {
	// privateKey, err := generateECDSAKey()
	// if err != nil {
	// 	return "", err
	// }
	claims := JwtClaims{
		"jack",
		jwt.StandardClaims{Id: "main_user_id",
			ExpiresAt: time.Now().Add(24 * time.Hour).Unix(),
		},
	}
	rawToken := jwt.NewWithClaims(jwt.SigningMethodHS512, claims)
	token, err := rawToken.SignedString([]byte("mySecret"))
	if err != nil {
		return "", err
	}
	return token, nil
}
