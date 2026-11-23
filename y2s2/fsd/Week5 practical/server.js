const { createServer } = require("http")
const { readFile } = require('fs');
const url = require('url');
const { create } = require("domain");

function requestListener(req, res) {
    if (req.url == "/") {
        res.statusCode = 400;
        res.setHeader('Content-Type', 'text/html');
        res.end('<h1>Invalid Request</h1>')
    }
    else {
        const info = url.parse(req.url, true);
        if (req.method == "GET" && info.pathname == "/SUBMIT" && info.query['uname']) {
            res.statusCode = 200;
            res.setHeader('Content-Type', 'text/html');
            const htmlContent =`
                <table border="1">
                    <tr>
                        <th>Name</th>
                        <td>${info.query.uname}</td>
                    </tr>
                    <tr>
                        <th>Password</th>
                        <td>${info.query.password}</td>
                    </tr>
                    <tr>
                        <th>Date of Birth</th>
                        <td>${info.query.dob}</td>
                    </tr>
                    <tr>
                        <th>Gender</th>
                        <td>${info.query.gender}</td>
                    </tr>
                </table>
                `;
                res.end(htmlContent);
        }
        else {
            const filename = "." + req.url;
            readFile(filename, "utf-8", (error, data) => {
                if (error) {
                    res.statusCode = 404;
                    res.setHeader('Content-Type', 'text/html');
                    res.end('<h1>File not Found</h1>');
                }
                else {
                    res.statusCode = 200;
                    res.setHeader('Content-Type', 'text/html');
                    res.end(data);
                }
            });
        }
    }
}

const server = createServer(requestListener);

server.listen(8000, "127.0.0.1", () => {
    console.log('Server is running');
})