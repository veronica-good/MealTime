import './App.css';
import { Component } from 'react';
import {
  BrowserRouter,
  Route,
  Switch
} from 'react-router-dom';
import FoodShowPage from './components/FoodShowPage';
import LandingPage from './components/LandingPage';

class App extends Component {
  constructor(props) {
    super(props)
  };

  render(){
    return(
        <BrowserRouter>
          <Switch>
            <Route exact path="/" component={LandingPage}/>
            <Route path='/foods/:id' component={FoodShowPage}/>
          </Switch>
        </BrowserRouter>

    )
  }
}

export default App;
