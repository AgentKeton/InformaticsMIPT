package Life;

import java.awt.*;
import javax.swing.*;

public class OpenWindow extends JFrame{
    public OpenWindow() {
        setTitle ("Добро пожаловать в Game of Life");
        setSize (new Dimension (600, 400));

        //устанавливаем окно по центру
        //f=file, s=screen
        Dimension sSize = Toolkit.getDefaultToolkit ().getScreenSize (), fSize = getSize ();

        if (fSize.height > sSize.height) {fSize.height = sSize.height;}
        if (fSize.width  > sSize.width)  {fSize.width = sSize.width;}

        //координаты верхнего левого угла окна
        setLocation ((sSize.width - fSize.width)/2, (sSize.height - fSize.height)/2);

        setDefaultCloseOperation (EXIT_ON_CLOSE);
        setVisible (true);
    }

    public static void main (String [] args) {
        /*try {UIManager.setLookAndFeel
                (UIManager.getSystemLookAndFeelClassName ());
        }
        catch (Exception lfe) {}*/

        OpenWindow wind = new OpenWindow ();
    }
}
