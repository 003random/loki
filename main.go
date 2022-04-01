package main

import (
	"log"
	"os/exec"
)

func main() {
	cmd := exec.Command("./internal/framework.sh")
	if err := cmd.Run(); err != nil {
		log.Fatal(err)
	}
}
