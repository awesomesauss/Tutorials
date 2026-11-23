const countries = [
    {
        country: "India",
        population: 1463865525,
        landArea: 2973190,
        density: 492,
        urbanPopulation: 0.371,
    },
    {
        country: "China",
        population: 1416096094,
        landArea: 9388211,
        density: 151,
        urbanPopulation: 0.675,
    }
];

// create your function DisplayData here
function DisplayData(countries){
    for (let i = 0; i < countries.length; i++){
        let country = countries[i];
        for(let k in country){
            console.log(k + " : " + country[k])
        }
    }
}

console.log("Countries population & statistic: ");
DisplayData(countries);