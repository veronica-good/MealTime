import {Carousel} from 'react-bootstrap'
import React, {Component} from 'react';
import { Image} from 'semantic-ui-react'


export default class CarouselHome extends Component {
    render(){
        return(
            <Carousel>
            <Carousel.Item interval={2000}>
                <Image
                className="w-100"
                src="https://images.freeimages.com/images/large-previews/7b8/mexican-food-1534948.jpg"
                alt="First slide"
                rounded/>
            </Carousel.Item>
            <Carousel.Item interval={2000}>
                <Image
                className="w-100"
                src="https://images.freeimages.com/images/large-previews/8c6/asian-food-4-1323206.jpg"
                alt="Second slide"
                rounded/>
            </Carousel.Item>
            <Carousel.Item interval={2000}>
                <Image
                className="w-100"
                src="https://images.freeimages.com/images/large-previews/9ff/fine-dining-food-presentation-1327945.jpg"
                alt="Third slide"
                rounded/>
            </Carousel.Item>
            
            <Carousel.Item interval={2000}>
                <Image
                className="w-100"
                src="https://images.freeimages.com/images/large-previews/b0b/fine-dining-food-presentation-1327952.jpg"
                alt="Fourth slide"
                rounded/>
            </Carousel.Item>
            <Carousel.Item interval={2000}>
                <Image
                className="w-100"
                src="https://images.freeimages.com/images/large-previews/51f/healthy-food-1328279.jpg"
                alt="Fifth slide"
                rounded/>
            </Carousel.Item>
        </Carousel>
        )
    }
}

