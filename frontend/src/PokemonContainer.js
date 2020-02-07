import React from 'react';
import Pokemon from './Pokemon'

class PokemonContainer extends React.Component {
    makePokemon = () => {
        return this.props.pokemon.map(pokemon => <Pokemon key={pokemon.id} pokemon={pokemon} />)
    }

    render() {
        return (
            <div>
                <h1>Pokemon Container</h1>
                {this.makePokemon()}
            </div>
        )
    }

}

export default PokemonContainer;
