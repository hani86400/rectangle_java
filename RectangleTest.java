import java.util.Scanner;

public class RectangleTest {

  public static void main(String[] args) {
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
    double L = 15.0;
    double W = 10.0;
    rectangle2.setLength(L);
    rectangle2.setWidth(W);
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
  }
  } // end class RectangleTest

