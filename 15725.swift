var Sik = readLine()!
var Poly : [Substring]
if Sik.contains("x"){
    Poly = Sik.split(separator: "x")
    if Poly.count == 0{print(1)}
    else if Poly[0] == "-"{print(-1)}
    else{print(Poly[0])}
}
else{print(0)}