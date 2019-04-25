const { ApolloServer, gql } = require("apollo-server");

// The GraphQL schema
const typeDefs = gql`
  type Query {
    "A simple type for getting started!"
    hello(who: String!): String
  }
`;

// A map of functions which return data for the schema.
const resolvers = {
  Query: {
    hello: (_, { who }) => `world ${who}`
  }
};

const server = new ApolloServer({
  introspection: true,
  playground: true,
  resolvers,
  typeDefs
});

server.listen().then(({ url }) => {
  console.log(`🚀 Server ready at ${url}`);
});
