import React from 'react';
import Pokemon from './Pokemon'

class PokemonContainer extends React.Component {
    makePokemon = () => {
        return this.props.pokemon.map(pokemon => <Pokemon key={pokemon.id} pokemon={pokemon} />)
    }

    render() {
        return (
            <div className="pokemon-container">
                {this.makePokemon()}
            </div>
        )
    }

}

export default PokemonContainer;
