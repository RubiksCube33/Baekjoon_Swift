var LinesQuantity : Int
LinesQuantity = Int(readLine()!)!

func Print_Line(NumOfLines:Int) -> Void{
    for i in 0...(NumOfLines-1){
            if i == 0 || i == (NumOfLines-1){
                for _ in 0...(NumOfLines-1){
                    print("*",terminator:"")
                }
            }
            else{
                for j in 0...(NumOfLines-1){
                    if j == 0 || j == i || j == (NumOfLines-1-i) || j == (NumOfLines-1){
                        print("*",terminator:"")
                    }
                    else {
                        print(" ",terminator:"")
                    }
                }
            }
        print("")
    }
    return
}
Print_Line(NumOfLines: LinesQuantity)