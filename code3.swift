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

func += (lhs: t_set_of_primes, rhs: Int)
{
    lhs.add(rhs)
}

func << (lhs: t_set_of_primes, rhs: Int)
{
    lhs.add(rhs)
}


enum teste{
    case adauga = "1"
    case constructor_1 = "2"
    case constructor_2 = "3"
    case runiune = "4"
    case reuniune2 = "5"
    case intersectie = "6"
    
}


var test = teste.adauga

switch test.rawValue{
    
    case "1":
        let m = t_set_of_primes()
        m.add(2)
        m.add(3)
        m.add(4)
        m.print_set()
        
    case "2":
        let m = t_set_of_primes(7)
        m.add(2)
        m.add(3)
        m.add(4)
        m.print_set()
        
    case "3":
        let m = t_set_of_primes(7, 41)
        m.print_set()
        
    case "4":
        let m = t_set_of_primes(7, 41)
        let x = t_set_of_primes(90, 100)
        m.reuneste(x)
        m.print_set()
        
    case "5":
        let m = t_set_of_primes(7, 41)
        let x = t_set_of_primes(90, 100)
        var y = t_set_of_primes(100, 200)
        y = m.reuneste2(x)
        y.print_set()
        
    case "6":
        let m = t_set_of_primes(7, 41)
        let x = t_set_of_primes(30, 100)
        m.intersectie(x)
        m.print_set()
        
    case "7":
        let m = t_set_of_primes(7)
        m += 2
        m << 3
        m << 4
        m.print_set()
        
    default:
    print("Invalid input")
        
        
    
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
