package tictactoe;

public class Field {
    int [][] field=new int[3][3];
    int [][] initialfield=new int[3][3];
    boolean gameFinished;
    boolean Xwin;
    boolean Owin;

    public Field() {
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                this.initialfield[i][j] = 0;
            }
        }
        this.field = this.initialfield;
        Xwin=false;
        Owin=false;
        gameFinished=false;
    }

    public void init () {
        this.field = initialfield;
    }

    public boolean XisWin(){
        //победа по горизонтали
        if((field[0][0]==1)&&(field[0][1]==1)&&(field[0][2]==1)){
            gameFinished=true;
            return Xwin=true;
        }
        if ((field[1][0]==1)&&(field[1][1]==1)&&(field[1][2]==1)){
            gameFinished=true;
            return Xwin=true;
        }
        if ((field[2][0]==1)&&(field[2][1]==1)&&(field[2][2]==1)){
            gameFinished=true;
            return Xwin=true;
        }

        //по веритикали
        if((field[0][0]==1)&&(field[1][0]==1)&&(field[2][0]==1)){
            gameFinished=true;
            return Xwin=true;
        }
        if ((field[0][1]==1)&&(field[1][1]==1)&&(field[2][1]==1)){
            gameFinished=true;
            return Xwin=true;
        }
        if ((field[0][2]==1)&&(field[1][2]==1)&&(field[2][2]==1)){
            gameFinished=true;
            return Xwin=true;
        }

        //по диагонали
        if((field[0][0]==1)&&(field[1][1]==1)&&(field[2][2]==1)){
            gameFinished=true;
            return Xwin=true;
        }
        if ((field[0][2]==1)&&(field[1][1]==1)&&(field[2][0]==1)){
            gameFinished=true;
            return Xwin=true;
        }
        return false;
    }

    public boolean OisWin(){
        //победа по горизонтали
        if((field[0][0]==2)&&(field[0][1]==2)&&(field[0][2]==2)){
            gameFinished=true;
            return Owin=true;
        }
        if ((field[1][0]==2)&&(field[1][1]==2)&&(field[1][2]==2)){
            gameFinished=true;
            return Owin=true;
        }
        if ((field[2][0]==2)&&(field[2][1]==2)&&(field[2][2]==2)){
            gameFinished=true;
            return Owin=true;
        }

        //по вертикали
        if((field[0][0]==2)&&(field[1][0]==2)&&(field[2][0]==2)){
            gameFinished=true;
            return Owin=true;
        }
        if ((field[0][1]==2)&&(field[1][1]==2)&&(field[2][1]==2)){
            gameFinished=true;
            return Owin=true;
        }
        if ((field[0][2]==2)&&(field[1][2]==2)&&(field[2][2]==2)){
            gameFinished=true;
            return Owin=true;
        }

        //по диагонали
        if ((field[0][0]==2)&&(field[1][1]==2)&&(field[2][2]==2)){
            gameFinished=true;
            return Owin=true;
        }
        if ((field[0][2]==2)&&(field[1][1]==2)&&(field[2][0]==2)){
            gameFinished=true;
            return Owin=true;
        }
        return false;
    }
}
