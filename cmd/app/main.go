package main

import (
	"fmt"
	"log"
	"net/http"
)

const webPort = "2727"

type Config struct{}

func main() {
	app := Config{}

	log.Println("Starting broker serivce...", webPort)

	srv := &http.Server{
		Addr:    fmt.Sprintf(":%s", webPort),
		Handler: app.routes(),
	}

	err := srv.ListenAndServe()
	if err != nil {
		log.Panic(err)
	}
}
