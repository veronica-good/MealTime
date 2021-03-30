import React from 'react';
import Card from 'react-bootstrap/Card'
import RecipeDetails from './RecipeDetails'

const FoodDetails = ({
    id,
    name, 
    image_url, 
    description,
    recipes}) => {
        return(
            <>
                <Card border="info">
                    <Card.Image variant="top" src={image_url}/>
                    <Card.Body>
                        <Card.Title>{name}</Card.Title>
                        <Card.Text>{description}</Card.Text>
                    </Card.Body>
                    <RecipeDetails recipes={recipes}/>                
                </Card>
            </>
        )
}

export default FoodDetails;