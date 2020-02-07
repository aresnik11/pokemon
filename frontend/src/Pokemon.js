import React from 'react';

const Pokemon = (props) => {
    console.log(props)
    return (
        <div className="pokemon">
            <h1>{props.pokemon.name}</h1>
            <img src={props.pokemon.front_img} alt={props.pokemon.name} />
            <h4>Height: {props.pokemon.height}</h4>
            <h4>Weight: {props.pokemon.weight}</h4>
        </div>
    )
}

export default Pokemon
