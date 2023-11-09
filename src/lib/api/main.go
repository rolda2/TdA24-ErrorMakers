package main

import (
	"log"

	"net/http"

	"os"

	"github.com/gin-gonic/gin"

	"github.com/joho/godotenv"
)

type Secret struct {
	Secret string `json:"secret"`
}

func goDotEnvVariable(key string) string {
	err := godotenv.Load("../../../.env")
	if err != nil {
		log.Fatalf("Error loading .env file")
	}
	return os.Getenv(key)
}

func getSecret(context *gin.Context) {
	godotenv.Load(".env")
	var secret Secret
	secret.Secret = goDotEnvVariable("SECRET")
	context.IndentedJSON(http.StatusOK, secret)
}

func main() {
	router := gin.Default()
	router.GET("/api", getSecret)
	router.Run("0.0.0.0:5174")
}