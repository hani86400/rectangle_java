package hani.javalab.rectangle;

import java.util.Scanner;

public class RectangleTest {

  public static void main(String[] args) {
    String R = "";
    double L = 0.0;
    double W = 0.0;
    Scanner scanL = new Scanner(System.in);

    Rectangle myrectangle = new Rectangle(
      3,
      2,
      "Set length and width (during constructing)"
    );
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
    } else {
      myrectangle.setLength(0.0);
    }

    if (System.getProperty("RECT_WIDTH", "").length() > 0) {
      W = Double.parseDouble(System.getProperty("RECT_WIDTH"));
      myrectangle.setWidth(W);
    } else {
      myrectangle.setWidth(0.0);
    }
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
  }
} // end class RectangleTest