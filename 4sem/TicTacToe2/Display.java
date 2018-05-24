package tictactoe;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class Display extends JFrame implements ActionListener{
    Field pole;
    int countsteps;
    Timer timer=new Timer(500, this);
    boolean GameisOver;

    JButton button0=new JButton("");
    JButton button1=new JButton("");
    JButton button2=new JButton("");
    JButton button3=new JButton("");
    JButton button4=new JButton("");
    JButton button5=new JButton("");
    JButton button6=new JButton("");
    JButton button7=new JButton("");
    JButton button8=new JButton("");

    JButton button9=new JButton("");
    JButton buttonAns=new JButton("Who win?");
    JButton button11=new JButton("Reset");

    public Display() {
        super("Welcome to Tictactoe!");
        timer.start();
        GameisOver=false;

        pole= new Field();
        countsteps=0;
        setSize(320, 320);
        setLocation(100, 100);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        // Вспомогательная панель
        JPanel grid = new JPanel();


        /*
         * Первые два параметра конструктора GridLayout определяют количество
         * строк и столбцов в таблице. Вторые 2 параметра - расстояние между
         * ячейками по горизонтали и вертикали
         */
        GridLayout layout = new GridLayout(4, 3, 2, 2);

        //JOptionPane.showMessageDialog(null,"");


        grid.setLayout(layout);
        // Создаем 12 кнопок
        grid.add(button0);
        grid.add(button1);
        grid.add(button2);
        grid.add(button3);
        grid.add(button4);
        grid.add(button5);
        grid.add(button6);
        grid.add(button7);
        grid.add(button8);
        grid.add(button9);
        grid.add(buttonAns);
        grid.add(button11);

        button9.setEnabled(false);
        //button11.setEnabled(false);

        buttonAns.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (pole.XisWin() && !pole.OisWin()) {
                    buttonAns.setText("X is win");
                    /*pole.Owin=true;
                    pole.gameFinished=true;*/
                }
                else if (pole.OisWin() && !pole.XisWin()){
                    buttonAns.setText("O is win");
                    /*pole.Owin=true;
                    pole.gameFinished=true;*/
                }
                else {
                    buttonAns.setText("dead heat");
                    //pole.gameFinished=true;
                }
            }
        });

        button11.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                pole.init();
                countsteps=0;
                GameisOver=false;
                button0.setText("");
                button1.setText("");
                button2.setText("");
                button3.setText("");
                button4.setText("");
                button5.setText("");
                button6.setText("");
                button7.setText("");
                button8.setText("");
            }
        });


        button0.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (countsteps%2==0 ) {
                    countsteps++;
                    button0.setText("X");
                    pole.field[0][0]=1;
                    //button0.setEnabled(false);

                } else {
                    countsteps++;
                    button0.setText("O");
                    pole.field[0][0]=2;
                    //button0.setEnabled(false);

                }
            }
        });

        button1.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (countsteps%2==0) {
                    countsteps++;
                    button1.setText("X");
                    pole.field[1][0]=1;
                    //resetButton.setEnabled(false);

                } else {
                    countsteps++;
                    button1.setText("O");
                    pole.field[1][0]=2;
                    //resetButton.setEnabled(true);

                }
            }
        });

        button2.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (countsteps%2==0) {
                    countsteps++;
                    button2.setText("X");
                    pole.field[2][0]=1;
                    //resetButton.setEnabled(false);

                } else {
                    countsteps++;
                    button2.setText("O");
                    pole.field[2][0]=2;
                    //resetButton.setEnabled(true);
                }
            }
        });

        button3.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (countsteps%2==0) {
                    countsteps++;
                    button3.setText("X");
                    pole.field[0][1]=1;
                    //resetButton.setEnabled(false);

                } else {
                    countsteps++;
                    button3.setText("O");
                    pole.field[0][1]=2;
                    //resetButton.setEnabled(true);

                }
            }
        });

        button4.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (countsteps%2==0) {
                    countsteps++;
                    button4.setText("X");
                    pole.field[1][1]=1;
                    //resetButton.setEnabled(false);

                } else {
                    countsteps++;
                    button4.setText("O");
                    pole.field[1][1]=2;
                    //resetButton.setEnabled(true);

                }
            }
        });

        button5.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (countsteps%2==0) {
                    countsteps++;
                    button5.setText("X");
                    pole.field[2][1]=1;
                    //resetButton.setEnabled(false);
                }

                else {
                    countsteps++;
                    button5.setText("O");
                    pole.field[2][1]=2;
                    //resetButton.setEnabled(true);

                }
            }
        });

        button6.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (countsteps%2==0) {
                    countsteps++;
                    button6.setText("X");
                    pole.field[0][2]=1;
                    //resetButton.setEnabled(false);

                } else {
                    countsteps++;
                    button6.setText("O");
                    pole.field[0][2]=2;
                    //resetButton.setEnabled(true);

                }
            }
        });

        button7.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (countsteps%2==0) {
                    countsteps++;
                    button7.setText("X");
                    pole.field[1][2]=1;
                    //resetButton.setEnabled(false);

                } else {
                    countsteps++;
                    button7.setText("O");
                    pole.field[1][2]=2;
                    //resetButton.setEnabled(true);

                }
            }
        });

        button8.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (countsteps%2==0) {
                    countsteps++;
                    button8.setText("X");
                    pole.field[2][2]=1;
                    //resetButton.setEnabled(false);

                } else {
                    countsteps++;
                    button8.setText("O");
                    pole.field[2][2]=2;
                    //resetButton.setEnabled(true);
                }
            }
        });


        // Размещаем нашу панель в панели содержимого
        getContentPane().add(grid);
        //getContentPane().add(panel);
        // Устанавливаем оптимальный размер окна
        pack();
        // Открываем окно
        setVisible(true);
    }


    public void Reset(){
        pole.init();
        countsteps=0;
        GameisOver=false;
        button0.setText("");
        button1.setText("");
        button2.setText("");
        button3.setText("");
        button4.setText("");
        button5.setText("");
        button6.setText("");
        button7.setText("");
        button8.setText("");
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        // TODO Auto-generated method stub
        //при каждом обновлении таймера
        if (pole.XisWin() && !pole.OisWin() && !GameisOver) {
            JOptionPane.showMessageDialog(null,"X is win");
            GameisOver=true;
        }
        else if (pole.OisWin() && !pole.XisWin() && !GameisOver){
            JOptionPane.showMessageDialog(null,"O is win");
            GameisOver=true;
        }
        else if (countsteps==9 && !GameisOver){
            JOptionPane.showMessageDialog(null,"dead heat");
            GameisOver=true;
        }
    }


        public static void main(String[]args){
            Display display=new Display();
            //дизайн окна
            JFrame.setDefaultLookAndFeelDecorated(true);

            display.setTitle("Крестики-нолики");
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
            display.setVisible(true);
    }
}
