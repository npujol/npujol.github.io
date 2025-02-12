---
tags:
- ready
- online
- reviewed
- summary
- informatic
- data-structure
- data-representation
- advanced
- concurrency
- goroutines
- go
- data-transference
---

# advanced

## Contents

- [[go-interfaces]]
- [[go-types-and-type-assertions]]
- [[go-goroutines]]
- [[go-channels]]
- [[go-buffer]]
- [[go-select]]
- [[go-scheduler]]
- [[go-modules]]
- [[go-working-with-json]]
- [[go-context]]
- [[go-mutex]]
- [[go-generics]]
- [[go-pointers]]

__Roadmap info from [roadmap website](https://roadmap.sh/golang/advanced)__

## Compilling Optimizations

Basic optimizations: `go build -a -gcflags=all="-l -B" -ldflags="-w -s" -o myapp main.go`

Other Optimizations: `RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -gcflags=all="-l -B" -ldflags="-w -s" -v -o /usr/local/bin/app ./...`

[Read more GOOS=linux GOARCH=amd64](https://gist.github.com/asukakenji/f15ba7e588ac42795f421b48b8aede6)
