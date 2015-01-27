package cgotest

// void hello(void);
import "C"
import "testing"

func test9699(t *testing.T) {
	// Get the Hello, world! to Stdout
	C.hello()
}
