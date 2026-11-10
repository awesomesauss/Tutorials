function swap(e,g){
    if (e > g){
        return [g,e]
    } else{
        return [e,g]
    }
}

const[e,g] = swap(0,1)
console.log(e,g)