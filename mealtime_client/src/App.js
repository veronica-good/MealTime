import './App.css';
import { Component } from 'react';
import {
  BrowserRouter,
  Route,
  Switch
} from 'react-router-dom';
import FoodShowPage from './components/FoodShowPage';
import LandingPage from './components/LandingPage';
import SignInPage from './components/SignInPage';
import SignUpPage from './components/SignUpPage';
import Navbar from './components/Navbar';
import { Session } from './requests';


class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      user:null
    }
    this.handleSubmit=this.handleSessionSubmit.bind(this)
    this.destroySession=this.destroySession.bind(this)
    this.handleSignUp=this.handleSignUp.bind(this)
  };

  componentDidMount() {
    Session.currentUser()
    .then(user=>{
      console.log('user', user);
      this.setState((state)=>{
        return {user:user}
      })
    })
  }

  handleSessionSubmit(params){
    Session.create(params).then(()=>{
      return Session.currentUser()}
      ).then(user=>{
        console.log('user', user);
        this.setState((state)=>{
          return {user:user}
        })
      })
  }

  destroySession(){
    Session.destroy()
    .then(res=>{
      this.setState(
          (
          state=>{return {user:null}}
          )
        )
      })
  }

handleSignUp(){
  Session.currentUser().then(user=>{
    this.setState((state)=>{
      return {user:user}
    })
  })
}

  render(){
    return(
        <BrowserRouter>
        
          <Switch>
            <Route exact path="/" component={LandingPage}/>
            <Route path='/foods/:id' component={FoodShowPage}/>
            <Route path='/sign_in' render={(routeProps)=><SignInPage handleSubmit={this.handleSessionSubmit} {...routeProps}/>} />
            <Route path='/sign_up' render={(routeProps)=><SignUpPage handleSignUp={this.handleSignUp} {...routeProps}/>}/> 
          </Switch>
        </BrowserRouter>

    )
  }
}

export default App;
