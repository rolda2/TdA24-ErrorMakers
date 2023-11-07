package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

type Secret struct {
	Secret string `json:"secret"`
}

var secrets = []Secret{
	{Secret: "The cake is a lie"},
}

func getSecret(context *gin.Context) {
	context.IndentedJSON(http.StatusOK, secrets)
}

func main() {
	router := gin.Default()
	router.GET("/api", getSecret)
	router.Run("localhost:5174")
}
