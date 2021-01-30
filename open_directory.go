//+build darwin

package open_directory

/*
#cgo darwin CFLAGS: -DDARWIN -x objective-c
#cgo darwin LDFLAGS: -framework Cocoa
#include "open_directory.h"
*/
import "C"

func OpenDirectory() string {
	s := C.open_directory()
	return C.GoString(s)
}


