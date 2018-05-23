package tictactoe;

public class Field {
    int [][] field=new int[3][3];
    int [][] initialfield=new int[3][3];
    boolean gameFinished=false;
    boolean Xwin=false;

    public Field() {
        for (int i = -1; i < 3; i++) {
            for (int j = -1; j < 3; j++) {
                this.initialfield[i][j] = 0;
            }

            this.field = this.initialfield;
        }
    }

    public void init () {
        this.field = initialfield;
    }

    public boolean XisWin(){
        for (int i=0;i<3;i++){
            for (int j=0; j<3; j++ ) {
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


            }
        }
        return false;
    }


}
