  package hani.javalab.rectangle;



import java.util.Scanner;



public class RectangleTest {

  public static void main(String[] args) {
    
    String R = "";
    double L = 0.0;
    double W = 0.0;
    Scanner scanL = new Scanner(System.in);

    Rectangle myrectangle = new Rectangle(3, 2,"Set length and width (during constructing)"); 
    myrectangle.getSetting();


    R = "Set length and width (Locally)";
    L = 10.0;
    W = 5.0;
    myrectangle.setLength(L);
    myrectangle.setWidth(W);
    myrectangle.setRemark(R);
    myrectangle.getSetting();

    if (args.length < 2) {
        System.out.println("please enter two values");
      } else {
        R = "Set length and width (command line args )";
        L = Double.parseDouble(args[0]);
        W = Double.parseDouble(args[1]);
        myrectangle.setLength(L);
        myrectangle.setWidth(W);
        myrectangle.setRemark(R);
        myrectangle.getSetting();
        }

        R = "Set length and width (command line property)";
        myrectangle.setRemark(R);
        if (System.getProperty("RECT_LENGTH", "").length() > 0) {
            L = Double.parseDouble(System.getProperty("RECT_LENGTH"));
            myrectangle.setLength(L);
          } else {myrectangle.setLength(0.0);}

          if (System.getProperty("RECT_WIDTH", "").length() > 0) {
            W = Double.parseDouble(System.getProperty("RECT_WIDTH"));
            myrectangle.setWidth(W);
          } else {myrectangle.setWidth(0.0);}
        myrectangle.getSetting();

        R = "Set length and width (Ineract with User input)";
        System.out.print("Please enter the length of the rectangle: ");
        L = scanL.nextDouble();
        System.out.print("Please enter the width  of the rectangle: ");
        W = scanL.nextDouble();
        myrectangle.setLength(L);
        myrectangle.setWidth(W);
        myrectangle.setRemark(R);
        myrectangle.getSetting();



    /*
    Rectangle rectangle1 = new Rectangle(8, 5); // Set length and width (immidate)
    Rectangle rectangle2 = new Rectangle(); // Set length and width (Locally)
    Rectangle rectangle3 = new Rectangle(); // Set length and width (command line args )
    Rectangle rectangle4 = new Rectangle(); // Set length and width (command line property)
    Rectangle rectangle5 = new Rectangle(); // Set length and width (Ineract with User input )

    //[1]////////////////////////////////
    System.out.println(
      "rectangle1:  // Set length and width (immidate)	Rectangle(8,5);"
    );
    rectangle1.getSetting();
    //[2]////////////////////////////////
    
    System.out.println("rectangle2:   // Set length and width (Locally)");
    rectangle2.getSetting();
    //[3]////////////////////////////////
    if (args.length < 2) {
      System.out.println("please enter two values");
    } else {
      L = Double.parseDouble(args[0]);
      W = Double.parseDouble(args[1]);
      rectangle3.setLength(L);
      rectangle3.setWidth(W);
      System.out.println(
        "rectangle4:  // Set length and width (command line args )"
      );
      rectangle3.getSetting();
    }
    //[4]////////////////////////////////
    if (System.getProperty("RECT_LENGTH", "").length() > 0) {
      L = Double.parseDouble(System.getProperty("RECT_LENGTH"));
      rectangle4.setLength(L);
    }
    if (System.getProperty("RECT_WIDTH", "").length() > 0) {
      W = Double.parseDouble(System.getProperty("RECT_WIDTH"));
      rectangle4.setWidth(W);
    }

    System.out.println(
      "rectangle4:  // Set length and width (command line property )"
    );
    rectangle4.getSetting();
    //[5]////////////////////////////////
    Scanner scanL = new Scanner(System.in);
    System.out.print("Please enter the length of the rectangle3: ");
    L = scanL.nextDouble();
    System.out.print("Please enter the width  of the rectangle3: ");
    W = scanL.nextDouble();
    rectangle3.setLength(L);
    rectangle3.setWidth(W);
    System.out.println(
      "rectangle3:  / Set length and width (Ineract with User input )"
    );
    rectangle3.getSetting();
    //////////////////////////////////

    //////////////////////////////////

*/


  }
  } // end class RectangleTest

