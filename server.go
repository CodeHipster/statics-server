package main

import (
	"flag"
	"fmt"
	"log"
	"net/http"
	"os"
	"path/filepath"
)

func main() {

	directoryPtr := flag.String("dir", "./", "Directory (relative to the binary) to serve static content from. By default serves from where the application is started.")
	numbPtr := flag.Int("port", 80, "Port to use, ")
	flag.Parse()

	directory := getDirectory(*directoryPtr)

	fs := http.FileServer(http.Dir(directory))
	http.Handle("/", fs)

	log.Println(fmt.Sprintf("Serving content from: %v on localhost:%v", directory, *numbPtr))
	err := http.ListenAndServe(fmt.Sprintf(":%v", *numbPtr), nil)
	if err != nil {
		panic(err)
	}
}

func getDirectory(argument string) string {
	directory := argument
	if !filepath.IsAbs(directory) {
		ex, err := os.Executable()
		if err != nil {
			panic(err)
		}
		exPath := filepath.Dir(ex)
		dir, err := filepath.Abs(exPath + argument)
		if err != nil {
			panic(err)
		}
		return dir
	}
	return directory
}
