function subtract(num1,num2){
    a = Math.max(num1,num2)
    b = Math.min(num1,num2)
    c = Number(a - b)
    return c
}

function stringify(numbertobestringed){
    return "Result: " + numbertobestringed
}

console.log(subtract(5,4))
console.log(stringify(subtract(1,2)))