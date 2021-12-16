public class Rectangle
{
    private double length =0.0;
    private double width;

    public Rectangle()                   { length=0.0; width=0.0;     }
    public Rectangle(double l, double w) { length = l; width = w;     }
    
    public double  getArea()             { return length*width;       }
    public double  getPermiter()         { return length*2 + width*2; }   
    public void    setLength(double l)   { this.length = l;           } // store the Length 
    public double  getLength()           { return length;             } // return value of length to caller
    public void    setWidth(double w)    { this.width = w;            } // store the width
    public double  getWidth()            { return width;              } // return value of width to caller
    
    public void    getSetting()
    {
     System.out.println("-------------------------------------------");
     System.out.println("|              getSetting()               |");
     System.out.println("-------------------------------------------");
     System.out.println("The Rectangle_Length   =   "   + getLength());
     System.out.println("The Rectangle_Width    =   "   +  getWidth());
     System.out.println("The Rectangle_Area     =   "   +   getArea());
     System.out.println("The Rectangle_Permiter =   " + getPermiter());
     System.out.println("-------------------------------------------");
    }	
} // end class Rectangle
