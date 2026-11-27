const colorSetA = [{ Silver: "c0c0c0" }, { Red: "ff0000" }, { Maroon: "800000" }, { Yellow: "FFFF00" }, { Olive: "808000" }];
const colorSetB = [{ Lime: "(0,255,0)" }, { Aqua: "(0,255,255)" }, { Teal: "(0,128,128)" }, { Blue: "(0,0,255)" }];

// create your function here
function DisplayObjectData(obj){
    for (let i = 0; i<obj.length; i++){
        for(let [key,value] of Object.entries(obj[i])){
            console.log(key + ":" + value)
        }
    }
}

// Do not modify the following code
console.log("Color code 1: ");
DisplayObjectData(colorSetA);
console.log("Color code 2: ");
DisplayObjectData(colorSetB);