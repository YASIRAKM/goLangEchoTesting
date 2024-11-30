package main

import (
	"echo-jwt-example/db"
	"echo-jwt-example/router"
)

// type JwtClaims struct {
// 	Name string `json:"name"`
// 	jwt.StandardClaims
// }

// // Login route that generates a JWT token
// func login(c echo.Context) error {
// 	username := c.QueryParam("username")
// 	password := c.QueryParam("password")
// 	if username == "jack" && password == "1234" {
// 		// Set a session cookie
// 		cookie := &http.Cookie{
// 			Name:     "sessionId",
// 			Value:    "some_string",
// 			Expires:  time.Now().Add(48 * time.Hour),
// 			HttpOnly: true, // Ensure cookie is not accessible via JS
// 		}
// 		c.SetCookie(cookie)

// 		// // Generate JWT token
// 		token, err := createJwtToken()
// 		if err != nil {
// 			log.Println("Error creating JWT token:", err)
// 			return c.String(http.StatusInternalServerError, "Something went wrong")
// 		}
// 		jwtCookie := &http.Cookie{
// 			Name:     "JWTcookie",
// 			Value:    token,
// 			Expires:  time.Now().Add(48 * time.Hour),
// 			HttpOnly: true, // Ensure cookie is not accessible via JS
// 		}
// 		c.SetCookie(jwtCookie)

// 		return c.JSON(http.StatusOK, map[string]string{
// 			"message": "You are logged in!",
// 			"token":   token,
// 		})
// 	}
// 	return c.String(http.StatusUnauthorized, "Invalid username or password")
// }
// func createJwtToken() (string, error) {
// 	// privateKey, err := generateECDSAKey()
// 	// if err != nil {
// 	// 	return "", err
// 	// }
// 	claims := JwtClaims{
// 		"jack",
// 		jwt.StandardClaims{Id: "main_user_id",
// 			ExpiresAt: time.Now().Add(24 * time.Hour).Unix(),
// 		},
// 	}
// 	rawToken := jwt.NewWithClaims(jwt.SigningMethodHS512, claims)
// 	token, err := rawToken.SignedString([]byte("mySecret"))
// 	if err != nil {
// 		return "", err
// 	}
// 	return token, nil
// }
// func mainJwt(c echo.Context) error {
// 	user := c.Get("user")
// 	log.Println(user)
// 	token, ok := user.(*jwt.Token)
// 	if !ok {
// 		return echo.NewHTTPError(http.StatusUnauthorized, "Invalid JWT token")
// 	}
// 	claims := token.Claims.(jwt.MapClaims)
// 	log.Println("User_name:", claims["name"], "user ID:", claims["jti"])

// 	return c.String(http.StatusOK, "you are on the top secret jwt page !")
// }

func main() {
	db.InitDb()
	defer db.CloseDB()
	e := router.New()

	e.Logger.Fatal(e.Start(":8081"))
}
