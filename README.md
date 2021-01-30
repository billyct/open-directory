# Open Directory

a Go package for open a directory select dialog, then only return the directory you selected

## Install

```
go get github.com/billyct/open-directory
```

## Example

```
package main

import (
	"github.com/billyct/open-directory"
	"log"
)

func main() {
	path := open_directory.OpenDirectory()
	log.Println(path)
}

```