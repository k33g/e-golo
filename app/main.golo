module myapplication

import helper # embedded resource

function main = |args| {
    println("Hello from main")

    # call embedded resource
    helper.hello()
}