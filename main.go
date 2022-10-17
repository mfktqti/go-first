package main

import (
	"time"

	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()
	r.GET("/index", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "qiozu,qiozu deploy success!! " + time.Now().Format(time.RFC3339),
		})
	})

	r.Run(":8010")
}
