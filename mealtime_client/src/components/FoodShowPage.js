import { React, Component } from 'react';
import {Food} from '../requests';
import FoodDetails from './FoodDetails';

class FoodShowPage extends Component{
    constructor(props){
        super(props);
        this.state={
            food:{}
        }
    };

    componentDidMount(){
        Food.show(this.props.match.params.id)
            .then(food=>{
                this.setState(state=>{
                    return{
                        food: food
                    }
                })
            })
    };

    render(){
        const {id, name, image_url, description,recipes, preparations}=this.state.food;
        console.log({recipes})
        return(
            <FoodDetails 
                id={id}
                name={name}
                image_url={image_url}
                description={description}
                recipes={recipes}
                preparations={preparations}
            />

        )
    }
}

export default FoodShowPage;