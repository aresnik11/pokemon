import React from 'react';
import './App.css';

class App extends React.Component {
  componentDidMount() {
    fetch('http://localhost:3001')
    .then(resp => resp.json())
    .then(data => {
      console.log(data)
    })
  }

  render() {
    return (
      <div className="App">
        <h1>Welcome to the Pokemon App</h1>
      </div>
    )
  }

}

export default App;
