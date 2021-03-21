import './App.css';
import { Component } from 'react';
import {
  BrowserRouter,
  Route,
  Switch
} from 'react-router-dom'

class App extends Component {
  constructor(props) {
    super(props)
  };

  render(){
    return(
      <div className="App">
        <BrowserRouter>
          <Switch>
            
          </Switch>
        </BrowserRouter>
      </div>
    )
  }
}

export default App;
