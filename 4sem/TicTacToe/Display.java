package tictactoe;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class Display extends JFrame {
    Field field;
    int countsteps=0;

    JButton button0=new JButton("");
    JButton button1=new JButton("");
    JButton button2=new JButton("");
    JButton button3=new JButton("");
    JButton button4=new JButton("");
    JButton button5=new JButton("");
    JButton button6=new JButton("");
    JButton button7=new JButton("");
    JButton button8=new JButton("");

    public Display() {
        super("GridLayoutTest");
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

        grid.setLayout(layout);
        // Создаем 8 кнопок
        grid.add(button0);
        //button0.setActionCommand("press");
        grid.add(button1);
        grid.add(button2);
        grid.add(button3);
        grid.add(button4);
        grid.add(button5);
        grid.add(button6);
        grid.add(button7);
        grid.add(button8);

        JButton buttonRes=new JButton("Who is win?");
        this.add(buttonRes);
        JButton button00=new JButton("");
        JButton button01=new JButton("");

        grid.add(button00);
        grid.add(buttonRes);
        grid.add(button01);

        buttonRes.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                    if (field.XisWin()) {
                        button0.setText("X is win");
                    } else {
                        button0.setText("O is win");
                    }


            }
        });

        button0.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (countsteps==10) {
                    if (field.XisWin()) {
                        button0.setText("X is win");
                    } else {
                        button0.setText("O is win");
                    }
                }

                if (countsteps%2==0 ) {
                    countsteps++;
                    button0.setText("X");
                    field.field[0][0]=1;
                    //resetButton.setEnabled(false);

                } else {
                    countsteps++;
                    button0.setText("O");
                    field.field[0][0]=2;
                    //resetButton.setEnabled(true);

                }
            }
        });

        button1.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (countsteps==9) {
                    if (field.XisWin()) {
                        button1.setText("X is win");
                    } else {
                        button1.setText("O is win");
                    }
                }
                if (countsteps%2==0) {
                    countsteps++;
                    button1.setText("X");
                    field.field[1][0]=1;
                    //resetButton.setEnabled(false);

                } else {
                    countsteps++;
                    button1.setText("O");
                    field.field[1][0]=2;
                    //resetButton.setEnabled(true);

                }
            }
        });

        button2.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (countsteps==9) {
                    if (field.XisWin()) {
                        button2.setText("X is win");
                    } else {
                        button2.setText("O is win");
                    }
                }
                if (countsteps%2==0) {
                    countsteps++;
                    button2.setText("X");
                    field.field[0][2]=1;
                    //resetButton.setEnabled(false);

                } else {
                    countsteps++;
                    button2.setText("O");
                    field.field[0][2]=2;
                    //resetButton.setEnabled(true);

                }
            }
        });

        button3.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (countsteps==9) {
                    if (field.XisWin()) {
                        button3.setText("X is win");
                    } else {
                        button3.setText("O is win");
                    }
                }
                if (countsteps%2==0) {
                    countsteps++;
                    button3.setText("X");
                    field.field[0][1]=1;
                    //resetButton.setEnabled(false);

                } else {
                    countsteps++;
                    button3.setText("O");
                    field.field[0][1]=2;
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
                    field.field[1][1]=1;
                    //resetButton.setEnabled(false);

                } else {
                    countsteps++;
                    button4.setText("O");
                    field.field[1][1]=2;
                    //resetButton.setEnabled(true);

                }
            }
        });

        button5.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (countsteps==9) {
                    if (field.XisWin()) {
                        button5.setText("X is win");
                    }
                }
                if (countsteps%2==0) {
                    countsteps++;
                    button5.setText("X");
                    field.field[2][1]=1;
                    //resetButton.setEnabled(false);

                }

                else {
                    countsteps++;
                    button5.setText("O");
                    field.field[2][1]=2;
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
                    field.field[0][2]=1;
                    //resetButton.setEnabled(false);

                } else {
                    countsteps++;
                    button6.setText("O");
                    field.field[0][2]=2;
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
                    field.field[1][2]=1;
                    //resetButton.setEnabled(false);

                } else {
                    countsteps++;
                    button7.setText("O");
                    field.field[1][2]=2;
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
                    field.field[2][2]=1;
                    //resetButton.setEnabled(false);

                } else {
                    countsteps++;
                    button8.setText("O");
                    field.field[2][2]=2;
                    //resetButton.setEnabled(true);

                }
            }
        });




        // Размещаем нашу панель в панели содержимого
        getContentPane().add(grid);

        // Устанавливаем оптимальный размер окна
        pack();
        // Открываем окно
        setVisible(true);
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


        /*JButton B = new JButton("knopka");
        /*B.setPreferredSize(new Dimension(100,60));
        display.add(B);



        JPanel panel = new JPanel();
        JButton button = new JButton("Button");

        button.setPreferredSize(new Dimension(200,50));

        panel.add(button);
        display.add(panel);*/


        display.setVisible(true);

    }
}
