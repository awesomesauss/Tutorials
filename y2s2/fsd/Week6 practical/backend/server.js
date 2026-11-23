const bodyParser = require("body-parser");
const express = require("express")

const app = express();

app.use("/public", express.static("./public"));
app.use(bodyParser.urlencoded());

app.get("/luckydraw",(req,res,next)=>{
    console.log(req.query.randomSeed);
    res.end("No Data" + req.query.randomSeed);
})

app.post("/luckydraw",(req,res,next)=>{
    console.log(req.query.randomSeed);
    res.end("No Data for post:" + req.query.randomSeed)
})

app.listen(8080, "127.0.0.1", (err) =>{
    console.log("Express Server is running!");
});