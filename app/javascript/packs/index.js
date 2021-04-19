import React from 'react';
import { render } from 'react-dom';
import Provider from '../components/Provider';
import Main from '../components/Main';

render(
  <Provider>
    <Main />
  </Provider>,
  document.querySelector('#root')
);
