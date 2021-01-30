package main

import (
	"github.com/billyct/open-directory"
	"log"
)

func main() {
	path := open_directory.OpenDirectory()
	log.Println(path)
}
