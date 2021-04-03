import React, {Component} from 'react';
import CarouselHome from './CarouselHome';
import { Typography, Container } from '@material-ui/core'
import { List, Divider, Image, Grid } from 'semantic-ui-react'

export default class LandingPage extends Component{
    render(){
        return(
            <Container className="text-center">
                <Typography variant="h2" >
                        Welcome to MealTime
                </Typography>
                <Typography variant="h5">
                Simple way to plan your weekly meals!
                </Typography>
                <CarouselHome/>
                <Typography variant="body1">
                We’ve identified the simplest, most effective system for meal planning and broke it down into three key steps: selecting recipes, shopping for ingredients, and prepping your meals. These steps might seem pretty obvious, and for the most part they are, but there’s critical strategy within each of them. It’s the strategy that makes meal planning worth its weight in gold — or maybe just the money it saves you
                </Typography>
                <Grid>
                    <Grid.Row columns={3}>
                        <Grid.Column>
                            <Image src="/images/olive-oil.svg" size="small" centered/>
                        </Grid.Column>
                        <Grid.Column>
                            <Image src="/images/recipe-book.svg" size="small" centered/>
                        </Grid.Column>
                        <Grid.Column>
                            <Image src="/images/soup.svg" size="small"/>
                        </Grid.Column>
                    </Grid.Row>
                </Grid>
                <Container>
                    <Typography variant="h4">
                    Some meal preparation tips for beginners:
                    </Typography>
                    <List>
                        <List.Item>Select your meals</List.Item> 
                            <Divider/>
                        <List.Item>Shop for ingredients</List.Item> 
                            <Divider/>
                        <List.Item>Prepare those ingredients</List.Item> 
                            <Divider/>
                        <List.Item>Kicking off the planning on Friday, shopping on Saturday morning (or night — less people in the stores), and then using an hour or so on Sunday for meal prep</List.Item> 
                            <Divider/>
                    </List>
                </Container>
            </Container>
        )
    }
}
