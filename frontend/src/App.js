import React from 'react';
import './App.css';
import PokemonContainer from './PokemonContainer';

class App extends React.Component {
  state = {
    pokemon: []
  }
  
  componentDidMount() {
    fetch('http://localhost:3001/pokemons')
    .then(resp => resp.json())
    .then(data => {
      this.setState({
        pokemon: data
      })
    })
  }

  render() {
    console.log(this.state)
    return (
      <div className="App">
        <h1>Welcome to the Pokemon App</h1>
        {this.state.pokemon.length
        ?
        <PokemonContainer pokemon={this.state.pokemon} />
        :
        <h1>Loading...</h1>
        }
      </div>
    )
  }

}

export default App;
