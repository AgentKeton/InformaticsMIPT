package Life;
//import sun.awt.resources.awt;



import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;


public class OpenWin3 extends JFrame {
    private static final long serialVersionUID = 1L;

    public class TestActionListener implements ActionListener {
        public void actionPerformed(ActionEvent a) {

        }
    }

    public OpenWin3() {
        // создание окна
        super("Game of Life");
        setDefaultCloseOperation(EXIT_ON_CLOSE);

        // определение размера и открытие окна
        setSize (new Dimension (600, 400));
        //setSize(280, 250);

        //устанавливаем окно по центру
        //f=file, s=screen
        Dimension sSize = Toolkit.getDefaultToolkit ().getScreenSize (), fSize = getSize ();

        if (fSize.height > sSize.height) {fSize.height = sSize.height;}
        if (fSize.width  > sSize.width)  {fSize.width = sSize.width;}

        //координаты верхнего левого угла окна
        setLocation ((sSize.width - fSize.width)/2, (sSize.height - fSize.height)/2);

        // Создание панели с двумя кнопками
        JPanel contents = new JPanel();
        contents.add(new JButton("Семья"));
        contents.add(new JButton("Школа"));

        // Замена панели содержимого
        setContentPane(contents);

        setVisible(true);
    }
    public static void main(String[] args) {
        //дизайн окна
        JFrame.setDefaultLookAndFeelDecorated(true);

        new OpenWin3();
    }
}
