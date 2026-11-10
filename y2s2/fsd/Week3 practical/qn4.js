function swap(a,b){
    if (a > b){
        return [b,a]
    } else{
        return [a,b]
    }
}


var scores = [67, 80, 56, 95, 80, 75, 75, 92, 91, 77];
console.log(scores)
for (let i = 0; i < 10; i++){
    for (let j = 0; j < 9; j++){
        [scores[j],scores[j+1]] = swap(scores[j],scores[j+1])
    }
}
console.log(scores)