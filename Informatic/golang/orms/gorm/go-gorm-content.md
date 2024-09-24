---
tags:
- ready
- online
- reviewed
- summary
- informatic
- database
- packages
- orm
- databases
- go
---

# gorm

## Contents

__Roadmap info from [roadmap website](https://roadmap.sh/golang/go-orms/gorm)__

## Gorm

The GORM is fantastic ORM library for Golang, aims to be developer friendly. It is an ORM library for dealing with relational databases. This gorm library is developed on the top of database/sql package. The overview and feature of ORM are: Full-Featured ORM (almost)

Visit the following resources to learn more:

- [@official@Gorm](https://gorm.io/docs/index.html)
- [@article@Gorm Package](https://pkg.go.dev/gorm.io/gorm)
- [@video@GORM And MYSQL](https://youtu.be/1E_YycpCsXw?si=_XeaElLMMChaEZw3)

### Config

| Parameter                                  | Type            | Default | Description                                                                                                                                  |
| ------------------------------------------ | --------------- | ------- | -------------------------------------------------------------------------------------------------------------------------------------------- |
| `SkipDefaultTransaction`                   | `bool`          | `false` | Skip wrapping operations in a transaction by default, can improve performance but may lead to inconsistent data in case of failure.          |
| `NamingStrategy`                           | `struct`        | `nil`   | Customize table, column, and index naming conventions (you can define how names are generated).                                              |
| `FullSaveAssociations`                     | `bool`          | `false` | When saving an object, update its associations even if their foreign keys are already set. May result in unnecessary queries.                |
| `Logger`                                   | `struct`        | `nil`   | Customize the logger to output GORM logs. If `nil`, GORM uses a default logger.                                                              |
| `NowFunc`                                  | `func`          | `nil`   | Define a custom function to get the current time. Useful for overriding the time function used by GORM.                                      |
| `DryRun`                                   | `bool`          | `false` | If `true`, GORM will generate SQL statements without executing them, useful for debugging or testing.                                        |
| `PrepareStmt`                              | `bool`          | `false` | Prepares SQL statements to increase performance, but uses more memory.                                                                       |
| `DisableAutomaticPing`                     | `bool`          | `false` | If `true`, disables automatic `Ping` on the database connection, which is used to check if the connection is alive.                          |
| `DisableForeignKeyConstraintWhenMigrating` | `bool`          | `false` | Disable foreign key constraints in migrations (GORM automatically adds foreign key constraints when migrating).                              |
| `IgnoreRelationshipsWhenMigrating`         | `bool`          | `false` | If `true`, GORM will ignore relationships during migration. Useful for simplifying migrations but at the cost of data integrity enforcement. |
| `DisableNestedTransaction`                 | `bool`          | `false` | Disable nested transactions, as some databases (like SQLite) do not support it well.                                                         |
| `AllowGlobalUpdate`                        | `bool`          | `false` | If `true`, allows global update/delete without a `WHERE` clause. This can be dangerous and should generally be avoided.                      |
| `QueryFields`                              | `bool`          | `false` | When `true`, GORM will use the exact SQL field names when generating queries instead of using aliases.                                       |
| `CreateBatchSize`                          | `int`           | `0`     | Defines the batch size for insert operations. A value of `0` disables batching.                                                              |
| `TranslateError`                           | `bool`          | `false` | If `true`, translates errors to be more meaningful or database-specific.                                                                     |
| `PropagateUnscoped`                        | `bool`          | `false` | If `true`, unscoped operations (e.g., ignoring soft deletes) are propagated to all related models.                                           |
| `ClauseBuilders`                           | `map`           | `nil`   | Custom clause builders for GORM’s query generation. This allows overriding how GORM builds certain SQL clauses.                              |
| `ConnPool`                                 | `struct`        | `nil`   | Provides a custom connection pool for GORM. You can define your own database connection handling.                                            |
| `Dialector`                                | `struct`        | `nil`   | Customizes the database dialect (SQL variant). If `nil`, GORM uses the default dialect (e.g., SQLite, PostgreSQL, etc.).                     |
| `Plugins`                                  | `[]interface{}` | `nil`   | Allows you to register custom plugins for extending GORM’s behavior.                                                                         |
