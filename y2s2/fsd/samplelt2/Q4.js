const A = [45, 73, 59, 36, 18, 29, 31, 78];
const B = [4, 69, 94, 17, 13, 20, 10];

// add your function here
function MaxMin(arr){
    let max = arr[0];
    let min = arr[0];
    for (let i = 1; i < arr.length; i++){
        if (arr[i] > max){
            max = arr[i];
        }
        if (arr[i] < min){
            min = arr[i]
        }
    } return [max,min]
}

// Do not modofy the following code
let Max, Min;
[Max, Min] = MaxMin(A);
console.log("Max = " + Max + " and Min = " + Min);
[Max, Min] = MaxMin(B);
console.log("Max = " + Max + " and Min = " + Min);