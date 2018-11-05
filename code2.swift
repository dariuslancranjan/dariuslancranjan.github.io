import Foundation


func citeste()->

{

    print("a=")
    
    let s_opt = readLine()
    
    if let s = s_opt{
        let a_opt = Float(s)
        if let _a = a_opt
        {
            
            print("b=")
            
            let s_opt = readLine()
            
            if let s = s_opt{
                let b_opt = Float(s)
                if let _b = b_opt{
                    
                    print("c=")
                    
                    let s_opt = readLine()
                    
                    if let s = s_opt{
                        let c_opt = Float(s)
                        if let _c = c_opt{
                            //il am si pe c
                            return(_a, _b, _c)
                        }
                        else{
                        return(1, 2, 1)
                    }
                    }
                    
                    
                    
                    else{
                        return(1, 2, 1)
                    }
                    
                }
                    //il am si pe b
                    else{
                return(1, 2, 1)
            }
            }
            
            
            
            else{
                return(1, 2, 1)
            }
            
        }
        else{
        return(1, 2, 1)                          
    }
    
        
}
    
    
    else{
    return(1, 2, 1)
    }
    
}








func calculeaza(coef (a: Float, b: Float, c: Float))->((Float, Float), (Float, Float))
{
    let delta = b*b - 4*a*c
    
    let x1_re, x1_im, x2_re, x2_im: Float
    
    if delta>=0{
        let x1_re=(-b-sqrt(delta))/(2*coef.a)
        let x2_re=(-b+sqrt(delta))/(2*coef.a)
        let x1_im=0
        let x2_im=0
        return ((x1_re,x1_im),(x2_re,x2_im))
    }
    
    else{
        let x1_re=(-coef.b)/(2*coef.a)
        let x1_im=(-sqrt(delta))/(2*coef.a)
        let x2_re=(-coef.b)/(2*coef.a)
        let x2_im=(sqrt(delta))/(2*coef.a)
        return ((x1_re,x1_im),(x2_re,x2_im))
    }
}
    func tiprarire(x1 :re: Float, im: Float), x2:(re: Float, im: Float))
    {
    print("x1=\(x1.re) + \(x1.im)")
    print("x2=\(x2.re) + \(x2.im)")
}

var x1,x2(Float,Float)


var coef = citeste()

var a, b, c: Float
a = 0
b = 0
c = 0
var x1_re, x2_re, x1_im, x2_im: Float

x1_re = 0
x2_re = 0
x1_im = 0
x2_re = 0

citeste(a: a, b: b, c: c)
(x1, x2) = calculeaza(coef: coef)


tiparire(x1: x1, x2: x2)

