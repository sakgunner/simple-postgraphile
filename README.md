## Prerequisite
- Docker
- Docker Compose

## How to install
- run
```
make reset
```

- stop
```
make down
```

## Test Graphql API
Navigate to http://0.0.0.0:8008/graphiql to visualize the API GraphiQL documentation. From there you can execute queries and mutations such as the examples below. The API endpoint itself is http://0.0.0.0:8008/graphql.

## Query Example

```
query {
  allLists {
    nodes {
      id
      title
      tasksByParentId(orderBy: [ORDER_NO_ASC]) {
          nodes {
              id
              title
              status
          }
      }
    }
  }
}
```

## Mutation Example

```
mutation {
  createList(
    input: {
      list: {
        title: "Shopping List"
      }
    }
  ) {
    list {
      id
      title
    }
  }
}
```
