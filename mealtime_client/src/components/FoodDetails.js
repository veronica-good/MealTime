import React from 'react';
import { List, Container, Divider, Card, Image } from 'semantic-ui-react'
import RecipeDetails from './RecipeDetails'

export default function FoodDetails({
    id,
    name, 
    image_url, 
    description,
    recipes,
    preparations}){
        return(
            <>
            <Container textAlign='center'>
                <Card fluid color="teal">
                    <Image src={image_url} wrapped ui={false}/>
                    <Card.Content>
                        <Card.Header>{name}</Card.Header>
                        <Card.Description>{description}</Card.Description>
                    </Card.Content>
                    <RecipeDetails recipes={recipes}/> 
                     <List>
                        <h2>Cooking Steps</h2>
                     {preparations ? preparations.map(prep=>{
                         let {step}=prep;
                         return(
                        <Container>
                            <List.Item>{step}</List.Item> 
                            <Divider/>
                        </Container>
                            )
                     }):""}              
                     </List>
                </Card>
            </Container>
            </>
        )
};
