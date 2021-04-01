import {Carousel} from 'react-bootstrap'
import React, {Component} from 'react';


export default class CarouselHome extends Component {
    render(){
        return(
            <Carousel>
            <Carousel.Item interval={2000}>
                <img
                className="d-block w-100"
                src="https://images.freeimages.com/images/large-previews/7b8/mexican-food-1534948.jpg"
                alt="First slide"
                />
            </Carousel.Item>
            <Carousel.Item interval={2000}>
                <img
                className="d-block w-100"
                src="https://images.freeimages.com/images/large-previews/8c6/asian-food-4-1323206.jpg"
                alt="Second slide"
                />
            </Carousel.Item>
            <Carousel.Item interval={2000}>
                <img
                className="d-block w-100"
                src="https://images.freeimages.com/images/large-previews/9ff/fine-dining-food-presentation-1327945.jpg"
                alt="Third slide"
                />
            </Carousel.Item>
            
            <Carousel.Item interval={2000}>
                <img
                className="d-block w-100"
                src="https://images.freeimages.com/images/large-previews/b0b/fine-dining-food-presentation-1327952.jpg"
                alt="Fourth slide"
                />
            </Carousel.Item>
            <Carousel.Item interval={2000}>
                <img
                className="d-block w-100"
                src="https://images.freeimages.com/images/large-previews/51f/healthy-food-1328279.jpg"
                alt="Fifth slide"
                />
            </Carousel.Item>
        </Carousel>
        )
    }
}

