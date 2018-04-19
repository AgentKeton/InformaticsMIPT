package GraphicsWindow;
import java.awt.*;
import javax.swing.*;

public class MoneyForNothing extends JFrame{
    public MoneyForNothing () {
        setTitle ("Добро пожаловать в Money for Nothing");
        setSize (new Dimension (600, 400));
        //устанавливаем окно по центру
        //f=file, s=screen
        Dimension sSize = Toolkit.getDefaultToolkit ().getScreenSize (),
                fSize = getSize ();
        if (fSize.height > sSize.height) {fSize.height = sSize.height;}
        if (fSize.width  > sSize.width)  {fSize.width = sSize.width;}
        //координаты середины окна
        setLocation ((sSize.width - fSize.width)/2,
                (sSize.height - fSize.height)/2);

        setDefaultCloseOperation (EXIT_ON_CLOSE);
        setVisible (true);
    }

    public static void main (String [] args) {
        try {UIManager.setLookAndFeel
                (UIManager.getSystemLookAndFeelClassName ());
        }
        catch (Exception lfe) {}
        MoneyForNothing mfn = new MoneyForNothing ();
    }

}
