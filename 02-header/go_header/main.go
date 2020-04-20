package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte(fmt.Sprintf("X-From: %s", r.Header.Get("X-From"))))
	})
	http.ListenAndServe(":10024", nil)
}
