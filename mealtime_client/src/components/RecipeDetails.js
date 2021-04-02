import React from 'react';
import { Table, Container } from 'semantic-ui-react';
import { Typography} from '@material-ui/core'

const RecipeDetails = ({recipes}) =>{
    return (
        <Container textAlign='center'>
            <Typography variant="h2" component="h2">
                        Ingredients
            </Typography>
            <Table basic>
                <Table.Header>
                    <Table.Row>
                        <Table.HeaderCell>Ingredient</Table.HeaderCell>
                        <Table.HeaderCell>Quantity</Table.HeaderCell>
                        <Table.HeaderCell>Measure</Table.HeaderCell>
                    </Table.Row>
                </Table.Header>

                    <Table.Body>
                    {recipes ? recipes.map(recipe => {
                        let {ingredients, two, four, measure}=recipe;
                        return (
                        <Table.Row>
                            <Table.Cell>{ingredients}</Table.Cell>
                            <Table.Cell>{two}</Table.Cell>
                            <Table.Cell>{measure}</Table.Cell>
                        </Table.Row>
                        )
                        }):''
                    }
                    </Table.Body>
            </Table>
        </Container>
    )
}

export default RecipeDetails;