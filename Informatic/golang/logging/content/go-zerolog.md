---
tags:
- ready
- online
- reviewed
- summary
- informatic
- database
- packages
- logging
- go
---

# zerolog

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/golang/go-logging/zerolog)__

## Zerolog

The zerolog package provides a fast and simple logger dedicated to JSON output.

Zerolog’s API is designed to provide both a great developer experience and stunning performance. Its unique chaining API allows zerolog to write JSON (or CBOR) log events by avoiding allocations and reflection.

Visit the following resources to learn more:

- [@opensource@GitHub Repository](https://github.com/rs/zerolog)

Here’s a simple example of using __Zerolog__ in a Go application to log structured data:

### Install Zerolog

First, you need to install __Zerolog__ in your Go project:

```bash
go get github.com/rs/zerolog/log
```

### Example Code

```go
package main

import (
 "os"
 "time"

 "github.com/rs/zerolog"
 "github.com/rs/zerolog/log"
)

func main() {
 // Configure Zerolog to pretty-print the logs (for development)
 zerolog.TimeFieldFormat = time.RFC3339
 log.Logger = log.Output(zerolog.ConsoleWriter{Out: os.Stderr})

 // Example of a basic log
 log.Info().Msg("Hello, this is an info log!")

 // Example of structured logging with fields
 log.Info().
  Str("event", "user_signup").
  Str("username", "johndoe").
  Int("age", 28).
  Bool("premium_user", true).
  Msg("New user signup")

 // Log an error with more details
 err := someOperation()
 if err != nil {
  log.Error().
   Err(err).
   Str("operation", "database connection").
   Msg("Failed to connect to the database")
 }

 // Log with different log levels
 log.Debug().Msg("This is a debug message")
 log.Warn().Msg("This is a warning message")
 log.Fatal().Msg("This is a fatal error, the program will exit")
}

func someOperation() error {
 // Simulate an error
 return os.ErrInvalid
}
```

### Explanation

Step 1. __Configure Zerolog Output__:

- We configure the logger to output logs in a pretty-print format using `zerolog.ConsoleWriter`. This is useful for development. In production, you would typically output logs in JSON format (which is the default).

Step 2. __Basic Log__:

- `log.Info().Msg("Hello, this is an info log!")` logs a simple message at the __info__ level.

Step 3. __Structured Logging__:

- You can attach structured fields to logs using chained methods like `Str()`, `Int()`, and `Bool()`. This makes logs much more informative and easier to query later.
- Example:

```go
log.Info().
Str("event", "user_signup").
Str("username", "johndoe").
Int("age", 28).
Bool("premium_user", true).
Msg("New user signup")
```

Step 4. __Error Logging__:

- In case of errors, `Err()` can be used to include the error details in the log.
- Example: `log.Error().Err(err).Str("operation", "database connection").Msg("Failed to connect to the database")`.

Step 5. __Different Log Levels__:

- __Zerolog__ supports multiple log levels like `Info`, `Debug`, `Warn`, `Error`, and `Fatal`.
- __Fatal__ logs the message and then exits the program.

### Sample Output

With `zerolog.ConsoleWriter` for pretty-print logs, the output would look like this:

```plain
INF Hello, this is an info log!
INF New user signup event=user_signup username=johndoe age=28 premium_user=true
ERR Failed to connect to the database operation=database connection error=invalid argument
DBG This is a debug message
WRN This is a warning message
FAT This is a fatal error, the program will exit
```

In production (without the pretty-print), Zerolog outputs the logs in JSON format, which is more suitable for log aggregation systems like ELK (Elasticsearch, Logstash, Kibana) or any log management tool.
