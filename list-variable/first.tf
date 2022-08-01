
output "printfirst" {
    value = "First user is ${join("-->",var.users)}"
}
output "printname" {
    value = "${upper(var.users[0])}"
}
output "title" {
    value = "${title(var.users[0])}"
}