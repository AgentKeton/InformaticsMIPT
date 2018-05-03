package Life;

public class Field {
    boolean [][] field;
    boolean [][] initialfield;

    public Field(boolean [][] initialfield) {
        this.initialfield=initialfield;
        this.field= initialfield;
    }

    public void init(){
        this.field=initialfield;
    }

    public int mod(int n, int m){
        return (n%m+m)%m;
    }

    public int getNumberOfNeighbours(int x, int y){
        int height=this.field.length;
        int width=this.field[0].length;

        int countNeighbours=0;
        boolean Nei;
        for (int i=-1;i<2;i++) {
            for (int j=-1;j<2;j++) {
                Nei=field[mod((x+i),width)][mod((y+j),height)];
                if (Nei && ((i!=0)||(y!=0))) countNeighbours++;
            }
        }
        return countNeighbours;
    }

    public void becomeFuture(){
        int height=this.field.length;
        int width=this.field[0].length;

        boolean [][] newfield= new boolean[width][height];

        for (int i=0;i<width;i++) {
            for (int j=0;j<height;j++) {
                if (field[i][j]==false && this.getNumberOfNeighbours(i,j)==3) {
                    newfield[i][j]=true;
                }
                else if (field[i][j] && (this.getNumberOfNeighbours(i,j)==3 || this.getNumberOfNeighbours(i,j)==2)) {
                    newfield[i][j]=true;
                }
                else {
                    newfield[i][j]=false;
                }
            }
        }

        this.field=newfield;
    }


}
