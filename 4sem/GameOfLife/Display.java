package Life;

import javax.swing.*;
import java.awt.*;

public class Display extends JFrame{
    Field desk;


    public Display() {
        this.setTitle ("Добро пожаловать в Game of Life");
        this.setSize (new Dimension(600, 400));
        //дизайн окна
        //JFrame.setDefaultLookAndFeelDecorated(true);

        //устанавливаем окно по центру
        //f=file, s=screen
        Dimension sSize = Toolkit.getDefaultToolkit().getScreenSize (), fSize = this.getSize();

        if (fSize.height > sSize.height) {fSize.height = sSize.height;}
        if (fSize.width  > sSize.width)  {fSize.width = sSize.width;}

        //координаты верхнего левого угла окна
        this.setLocation ((sSize.width - fSize.width)/2, (sSize.height - fSize.height)/2);

        this.setDefaultCloseOperation (EXIT_ON_CLOSE);
        this.setVisible (true);
    }

    

    public static void main(String [] args) {
        //дизайн окна
        JFrame.setDefaultLookAndFeelDecorated(true);

        Display display=new Display();
    }
}
