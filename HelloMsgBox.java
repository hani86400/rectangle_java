package hani.javalab.rectangle;

public class HelloMsgBox {

  public static void msgbox(String s) {
    javax.swing.JOptionPane.showMessageDialog(null, s);
  }

  public static void main(String[] args) {
    System.out.println("Hello println()");
    msgbox("Hello MsgBox");
    //

  }
}
