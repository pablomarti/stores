import React from 'react';
import { Query } from 'react-apollo';
import gql from 'graphql-tag';

const LibraryQuery = gql`
  {
    productsConnection(first: 10) {
      totalCount
      pageInfo {
        endCursor
        startCursor
        hasNextPage
        hasPreviousPage
      }
      edges {
        node {
          id
          name
          price
          description
          store {
            id
            name
          }
          active
        }
      }
    }
  }
`;

export default () => (
  <Query query={LibraryQuery}>
    {({ data, loading }) => (
      <div>
        {loading
          ? 'loading...'
          : data.productsConnection.edges.map(edge => (
              <div key={edge.node.id}>
                {edge.node.name}
              </div>
            ))}
      </div>
    )}
  </Query>
);
