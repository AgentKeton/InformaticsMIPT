package Life;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class Main extends JPanel implements ActionListener{
    Field field;
    Timer timer=new Timer(200, this);
    Insets insets = getInsets();

    public Main(Field field) {
        timer.start();
        this.field=field;

        this.insets.left+=20;
        this.insets.right+=20;
        this.insets.top+=30;
        this.insets.bottom+=20;
    }


    //рисуем новое поле?
    public void paint(Graphics g) {

        //отрисовка всех объектов
        //display.desk.field
        //display.insets


        Image Cell = new ImageIcon("C:\\Users\\Me\\Desktop\\cell.jpg").getImage();
        Image BackGround = new ImageIcon("C:\\Users\\Me\\Desktop\\background.jpg").getImage();

        int h = this.getHeight()-this.insets.left-this.insets.right;
        int w = this.getWidth()-this.insets.top-this.insets.bottom;
        /*int h = this.getHeight();
        int w = this.getWidth();*/
        g.drawImage(BackGround, this.insets.left, this.insets.top, w, h, null);
        int cellsh=this.field.field.length;
        int cellsw=this.field.field[0].length;
        int cellH=h/cellsh;
        int cellW=w/cellsw;

        for (int i = 0; i < cellsw; i++) {
            for (int j = 0; j < cellsh; j++) {
                if (this.field.field[j][i]) {
                    g.drawImage(Cell, this.insets.left+(i * cellW), this.insets.top+(j * cellH), (cellW - 2), (cellH - 2), null);
                }
            }
        }
        this.field.becomeFuture();

    }

    //этот метод будет выполняться при обновлении таймера
    @Override
    public void actionPerformed(ActionEvent e) {
        //TODO Auto-generated method stub
        //при каждом обновлении таймера все элементы стираются и отрисовываются заново
        repaint();
    }
}
