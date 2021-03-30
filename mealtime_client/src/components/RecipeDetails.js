import { Table, TableHeader } from 'semantic-ui-react';

const RecipeDetails = recipes =>{
    return (
        <div>
            <Table color='#35b8be'>

                <Table.Header>
                    <Table.Row>
                        <Table.HeaderCell>Ingredient</Table.HeaderCell>
                        <Table.HeaderCell>Quantity</Table.HeaderCell>
                        <Table.HeaderCell>Measure</Table.HeaderCell>
                    </Table.Row>
                </Table.Header>

                    <Table.Body>
                    {recipes.map(recipe=>{
                        <Table.Row>
                            <Table.Cell>{recipe.ingredients}</Table.Cell>
                            <Table.Cell>{recipe.two}</Table.Cell>
                            <Table.Cell>{recipe.measure}</Table.Cell>
                        </Table.Row>
                        })
                    }
                    </Table.Body>
            </Table>
        </div>
    )
}

export default RecipeDetails;