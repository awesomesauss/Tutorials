const A = [88, 73, 59, 61];
const B = [80, 0, -66, 97, -44];

// write your function CombineArray here
function CombineArray(A,B){
    const newarray =[...A, ...B]
    return newarray
}
console.log(CombineArray(A,B))
