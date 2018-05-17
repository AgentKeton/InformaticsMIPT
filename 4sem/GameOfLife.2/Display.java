package Life;

import javax.swing.*;
import java.awt.*;

public class Display extends JFrame {
    //Field desk;
    //Insets insets = getInsets();

    public Display() {
        /*this.setTitle("Добро пожаловать в Game of Life");
        this.setSize(new Dimension(600, 400));
        //дизайн окна
        JFrame.setDefaultLookAndFeelDecorated(true);

        //устанавливаем окно по центру
        //f=file, s=screen
        Dimension sSize = Toolkit.getDefaultToolkit().getScreenSize(), fSize = this.getSize();

        if (fSize.height > sSize.height) {
            fSize.height = sSize.height;
        }
        if (fSize.width > sSize.width) {
            fSize.width = sSize.width;
        }

        //координаты верхнего левого угла окна
        this.setLocation((sSize.width - fSize.width) / 2, (sSize.height - fSize.height) / 2);

        this.setDefaultCloseOperation(EXIT_ON_CLOSE);
        this.setVisible(true);*/
    }

        public static void main(String[]args){
            Display display=new Display();
            //дизайн окна
            JFrame.setDefaultLookAndFeelDecorated(true);

            display.setTitle("Добро пожаловать в Game of Life");
            display.setSize(new Dimension(600, 400));
            //дизайн окна
            JFrame.setDefaultLookAndFeelDecorated(true);

            //устанавливаем окно по центру
            //f=file, s=screen
            Dimension sSize = Toolkit.getDefaultToolkit().getScreenSize(), fSize = display.getSize();

            if (fSize.height > sSize.height) {
                fSize.height = sSize.height;
            }
            if (fSize.width > sSize.width) {
                fSize.width = sSize.width;
            }

            //координаты верхнего левого угла окна
            display.setLocation((sSize.width - fSize.width) / 2, (sSize.height - fSize.height) / 2);

            display.setDefaultCloseOperation(EXIT_ON_CLOSE);

            boolean[][] arr= new boolean[20][20] ;
            for (int i=0;i<20;i++) {
                for (int j=0; j<20;j++) {
                    arr [i][j]=false;
                }
            }

            arr[1][1]=true;
            arr[1][3]=true;
            arr[1][2]=true;
            arr[2][3]=true;
            arr[3][2]=true;
            arr[12][1]=true;
            arr[12][3]=true;
            arr[12][2]=true;
            arr[2][13]=true;
            arr[3][12]=true;
            arr[10][1]=true;
            arr[10][3]=true;
            arr[10][2]=true;
            arr[2][9]=true;
            arr[3][9]=true;


            /*Field fieldtest = new Field(arr);

            //???
            Display display =new Display();
            display.add(new Main(fieldtest));*/


            display.add(new Main(new Field(arr)));
            display.setVisible(true);

        }

}
