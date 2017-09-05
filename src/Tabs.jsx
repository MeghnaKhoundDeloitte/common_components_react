import React from 'react';

export class Tabs extends React.Component {
  render() {
      return <ul className="myTab">
            {this.props.items.map(current => <li key={current.key}>{current.label}</li>)}
        </ul>
  }
}
