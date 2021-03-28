const BASE_URL = 'http://localhost:3000/api/v1';

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