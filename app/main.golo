module myapplication

import helper # embedded resource

function main = |args| {
    let app = Application()

    app:staticFileLocation(java.io.File( "." ):getCanonicalPath() + "/app/public")
    app:port(8888)

    # first
    app:GET("/add/:a/:b",|request, response|{
        response:type("application/json")
        let a = java.lang.Integer.parseInt(request:params(":a"))
        let b = java.lang.Integer.parseInt(request:params(":b"))
        return "{\"result\":%s}":format((a+b):toString())
    })
}