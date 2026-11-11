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
function DisplayData(x){
    for(i=0; i < x.length; i++){
        const item = x[i];
        console.log(`country : ${item.country}`);
        console.log(`population : ${item.population}`)
        console.log(`landArea : ${item.landArea}`);
        console.log(`density : ${item.density}`)
        console.log(`urbanPopulation : ${item.urbanPopulation}`);
    }
}

console.log("Countries population & statistic: ");
DisplayData(countries);