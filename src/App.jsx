import React from 'react';
import { render } from 'react-dom';
import {Tabs} from './Tabs';

const tabObj= [
  {"key": "1", "label": "tab1", "actionItems": "2", selected:true},
  {"key": "2", "label": "tab2", "actionItems": "1", selected:false},
  {"key": "3", "label": "tab3", "actionItems": "2", selected:false},
  {"key": "4", "label": "tab4", "actionItems": "4", selected:false}
];


class App extends React.Component {
  render() {
    return (
      <Tabs items={tabObj}/>
    );
  }
}

render(<App/>, document.getElementById('root'))
