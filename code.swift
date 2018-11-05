import Foundation


func citeste(a: inout Float, b: inout Float,c: inout Float)

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
                            a = _a
                            b = _b
                            c = _c
                        }
                        else{
                        a=1
                        b=2
                        c=3
                    }
                    }
                    
                    
                    
                    else{
                        a=1
                        b=2
                        c=3
                    }
                    
                }
                    //il am si pe b
                    else{
                a=1
                b=2
                c=3
            }
            }
            
            
            
            else{
                a=1
                b=2
                c=3
            }
            
        }
        else{
        a=1
        b=2
        c=3                            
    }
    
        
}
    
    
    else{
    a=1
    b=2
    c=3
    }
    
}








func calculeaza(a: Float, b: Float, c: Float, x1_re: inout Float, x1_im: inout Float, x2_re: inout Float, x2_im: inout Float)
{
    let delta = b*b - 4*a*c
    
    let x1_re, x1_im, x2_re, x2_im: Float
    
    if delta>=0{
        x1_re=(-b-sqrt(delta))/(2*a)
        x2_re=(-b+sqrt(delta))/(2*a)
        x1_im=0
        x2_im=0
    }
    
    else{
        x1_re=(-b)/(2*a)
        x1_im=(-sqrt(delta))/(2*a)
        x2_re=(-b)/(2*a)
        x2_im=(sqrt(delta))/(2*a)
    }
}
    func tiprarire(x1_re: Float, x1_im: Float, x2_re: Float, x2_im: Float)
    {
    print("x1=\(x1_re) + \(x1_im)")
    print("x2=\(x2_re) + \(x2_im)")
}




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
calculeaza(a: a, b:b, c: c, x1_re: &x1_re,x1_im: &x1_im,x2_re: &x2_re,x2_im: &x2_im)


tipareste(x1_re: x1_re,x1_im: x1_im,x2_re: x2_re,x2_im: x2_im)

