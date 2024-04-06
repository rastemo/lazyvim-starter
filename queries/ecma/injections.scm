((comment) @_gql_comment
  (#eq? @_gql_comment "/* GraphQL */")
  (template_string) @graphql)

((identifier) @_gql_comment
  (#eq? @_gql_comment "gql")
  (template_string) @graphql)
