import java.io.File;

public class Files {
    public static void main(String[] args){
        File folder=new File("C:\\Users\\Me\\Documents\\Предметы");
        File[] listofF=folder.listFiles();

        for(File f:listofF) {
            if(f.isFile()) {
                System.out.println("File "+ f.getName());
            } else if (f.isDirectory()) {
                System.out.println("Directory " + f.getName());
            }
        }
    }
}
