package main

import (
	"time"

	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()
	r.GET("/index", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "hello world, go first " + time.Now().Format(time.RFC3339),
		})
	})

	r.Run(":8010")
}
