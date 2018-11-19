import Foundation

class t_ecuatie_grad2
{
    
    var a, b ,c:Float
    var x1_re, x1_im, x2_re, x2_im: Float
    
    init(){
        a = 0
        b = 0
        c = 0
        x1_re = 0
        x1_im = 0
        x2_re = 0
        x2_im = 0
    
    }
    
    init(_a: Float, _b: Float, _c: Float){
        a = _a
        b = _b
        c = _c
        x1_re = 0
        x1_im = 0
        x2_re = 0
        x2_im = 0
    }
    
    deinit(){
        
    }

func citeste(){

    print("a=")
    let s = readLine()
    if let sa = s{
        let x = Float(sa)
        if let _a = x{
            print("b=")
            let s = readLine()
            if let sa = s{
                let x = Float(sa)
                if let _b = x{
                    print("c=")
                    let s = readLine()
                    if let sa = s{
                        let x = Float(sa)
                        if let _c = x{
                            //il am si pe c
                            return(_a, _b, _c)
                            b = _b
                            c = _c
                            
                        }
                        else{
                        a = 1
                        b = 2
                        c = 1
                    }
                    }
                    
                    
                    
                    else{
                        a = 1
                        b = 2
                        c = 1
                    }
                    
                }
                    //il am si pe b
                    else{
                a = 1
                b = 2
                c = 1
            }
            }
            
            
            
            else{
                a = 1
                b = 2
                c = 1
            }
            
        }
        else{
        a = 1
        b = 2
        c = 1                 
    }
    
        
}
    
    
    else{
    a = 1
    b = 2
    c = 1
    }
    
}



func rezolva(_ coef: t_coef)-> t_solutii
{
    let delta = b * b - 4 * a * c
    
    if delta >= 0
    {
        x1_re = (-b - sqrt(delta)) / (2 * coef.a)
        x1_im = Float(0.0)
        x2_re = (-b + sqrt(delta)) / (2 * coef.a)
        x2_im - Float(0.0)

    }
    
    else
    {
        x1_re = (-b) / (2 * coef.a)
        x1_im = -sqrt(-delta) / (2 * coef.a)
        x2_re = (-b) / (2 * a)
        x2_im = sqrt(-delta) / (2 * a)
        
        var x1 = t_solutie(re: (-coef.b) / (2 * coef.a), im: -sqrt(-delta) / (2 * coef.a))
        var x2 = t_solutie(re: (-coef.b) / (2 * coef.a), im: sqrt(-delta) / (2 * coef.a))
        
        var sol = t_solutii(x1: x1, x2: x2)
        return sol
    }
}


        func tipareste(_ x: t_solutii)
        {
            print("x1 = \(x1_re) + \(x1_im)")
            print("x2 = \(x2_re) + \(x2_im)")
        }
}

var ec2 = t_ecuatie_grad2(2, 3, 4)
ec2.rezolva()
ec2.tipareste()
