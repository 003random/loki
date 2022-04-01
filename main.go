package main

import (
	"bufio"
	"fmt"
	"os"
	"os/exec"
)

func main() {
	cmd := exec.Command("./internal/framework.sh", os.Args[1])

	cmdReader, err := cmd.StdoutPipe()
	if err != nil {
		fmt.Fprintln(os.Stderr, "error running loki", err)
		return
	}

	scanner := bufio.NewScanner(cmdReader)
	go func() {
		for scanner.Scan() {
			fmt.Printf("%s\n", scanner.Text())
		}
	}()

	err = cmd.Start()
	if err != nil {
		fmt.Fprintln(os.Stderr, "error running loki", err)
		return
	}

	err = cmd.Wait()
	if err != nil {
		fmt.Fprintln(os.Stderr, "error running loki", err)
		return
	}
}
