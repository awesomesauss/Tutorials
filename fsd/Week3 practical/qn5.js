function swap(a,b){
    if (a > b){
        return [b,a]
    } else{
        return [a,b]
    }
}

function bsort(scores){
for (let i = 0; i < scores.length ; i++){
    for (let j = 0; j < scores.length - 1; j++){
        [scores[j],scores[j+1]] = swap(scores[j],scores[j+1])
    }
    } return scores
} 
console.log(bsort([67, 80, 56, 95, 80, 75, 75, 92, 91, 77]))