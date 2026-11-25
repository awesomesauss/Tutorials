const express = require("express")
const bodyparser = require("body-parser")

const app = express();
const messages = [];

app.use(bodyparser.urlencoded());


app.get("/MSG", (req,res,next) =>{
    res.statusCode=200;
    res.setHeader("Content-Type", "text/html");
    res.end("<h1>Message (GET Method) : " + req.query.msg + "</h1>");
})


app.post("/msglist", (req,res,next) =>{
    messages.push(req.body.msg);
    res.statusCode=200;
    res.setHeader("Content-Type", "text/html");
    let htmlContent = "<ul>";
    for (const message of messages){
        htmlContent += "<li>" + message + "</li>" ;
    }
    htmlContent += "</ul>";
    res.end(htmlContent)
})

app.use(["/public","/www"], express.static("public"));
app.use("/ACCOUNT/:id", (req,res,next) =>{
    res.statusCode = 200;
    res.setHeader("Content-Type", "text/html");
    res.end("<h1>User ID (using :id) : " + req.params.id + "</h1>");
})


app.listen(8000,"localhost");