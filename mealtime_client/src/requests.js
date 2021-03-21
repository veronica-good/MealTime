const BASE_URL = 'http://localhost:3000/api/v1';

export const Food={
    index(){
        return fetch(`${BASE_URL}/foods`)
            .then(res=>{
                return res.json();
            })
    }
}