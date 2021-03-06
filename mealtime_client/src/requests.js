const BASE_URL = 'http://localhost:3000/api/v1';

export const Session = {

    create(params) {
      return fetch(`${BASE_URL}/session`, {
        headers: {
          'Content-Type': 'application/json'
        },
        credentials: 'include', 
        method: 'POST',
        body: JSON.stringify(params)
      }).then((res) => {
        return res.json();
      })
    },

    currentUser(){
      return fetch(`${BASE_URL}/current_user`,{
        credentials: 'include' 
      })
      .then((res)=> res.json())
    },

    destroy(){
      return fetch(`${BASE_URL}/session`, {
        method: 'Delete',
        credentials: 'include'
      }).then(res => res.json())
    }

}

export const User={

    create(params){
      return fetch(`${BASE_URL}/users`, {
        method: 'POST',
        credentials: 'include',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({user:params})
        }
      ).then(res => res.json());
    }
    
}

export const Food={

    index(){
        return fetch(`${BASE_URL}/foods`)
            .then(res => res.json())
            .catch(console.error)
    },
    
    show(id){
        return fetch(`${BASE_URL}/foods/${id}`)
        .then(res => res.json())
        .catch(console.error)
    }

}