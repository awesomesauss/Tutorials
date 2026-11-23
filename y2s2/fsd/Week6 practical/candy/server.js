
const express = require("express");
const app = express();

app.use("/public", express.static("./public"));

app.get("/draw", (req, res) => {

    let remaining = [
        parseInt(req.query.Kitkat),
        parseInt(req.query.Cloud9),
        parseInt(req.query.Cadbury),
        parseInt(req.query.Loacker),
        parseInt(req.query.Milo)
    ];

    let candies = ["Kit Kat", "Cloud 9", "Cadbury", "Loacker", "Milo"];

    // Generate a random number from 1 to 5
    let number = Math.floor(Math.random() * 5) + 1;

    // Keep generating until a candy with stock is selected
    while (remaining[number - 1] == 0) {
        number = Math.floor(Math.random() * 5) + 1;
    }

    // Reduce the selected candy's stock
    remaining[number - 1] = remaining[number - 1] - 1;

    let output = "<h1>" + number + "</h1><br>";

    // Display the remaining candy stock
    for (let i = 0; i < 5; i++) {

        if (i == number - 1) {
            output = output + "<span style='color:red'>";
            output = output + candies[i] + " only " + remaining[i] + " remaining";
            output = output + "</span><br><br>";
        }
        else {
            output = output + candies[i] + " remains " + remaining[i] + "<br><br>";
        }
    }

    res.send(output);
});

app.listen(8080, () => {
    console.log("Express Server is running!");
});
