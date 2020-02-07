import React from 'react';

const Pokemon = (props) => {
    const getMoves = () => {
        return props.pokemon.moves.map(move => move.name).join(", ")
    }

    const getKinds = () => {
        return props.pokemon.kinds.map(kind => kind.name).join(", ")
    }

    return (
        <div className="pokemon">
            <h1>{props.pokemon.name}</h1>
            <img src={props.pokemon.front_img} alt={props.pokemon.name} />
            <h4>Height: {props.pokemon.height}</h4>
            <h4>Weight: {props.pokemon.weight}</h4>
            <h4>Type: {getKinds()}</h4>
            <h4>Moves: {getMoves()}</h4>
        </div>
    )
}

export default Pokemon
