const A = [88, 73, 59, 61];
const B = [80, 0, -66, 97, -44];

// write your function CombineArray here
function CombineArray(A,B){
    for(let b = 0; b < B.length; b++){
        if (B[b] < 0){
            A.push(B[b] += 100);
        } else 
        {
            A.push(B[b])
        }
    }
    return A
}


console.log(CombineArray(A, B));

