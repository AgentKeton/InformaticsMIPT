public class CircularBuffer {
    public String arr[];
    public int length, head, tail;

    public CircularBuffer(int capacity) {
        length=capacity;
        arr=new String[capacity];
        for (int i=0;i<length;i++) {
            arr[i]="";
        }
        head=0; //index
        tail=0;
    } //constructor

    public boolean push(String S) {
        if (head<=length-1) {
            arr[head] = S;
            head=(head+1)%length;
            return true;
        }
        else {
            return false;
        }
    }

    public String pop() {
        String last=arr[tail];
        arr[tail]="";
        tail=(tail+1)%length;
        return last;
    }

    public boolean isEmpty() {
        String[] arrEmpty=new String[length];
        for (int i=0;i<length;i++) {
            arrEmpty[i]="";
        }
        if (arr==arrEmpty) {
            return true;
        }
        else {return false;}

    }

    public boolean isFull() {
        boolean B=true;
        for (int i=0;i<length;i++) {
            if (arr[i]=="") {B=false;}
        }
        return B;
    }

    public void printBuffer() {
        for (int i=0;i<length;i++) {
            System.out.print(arr[i]);
            System.out.print(",");
        }
        System.out.println();
    }

    public static void main(String[] args) {
        CircularBuffer obj=new CircularBuffer(7);
        obj.push("one");
        obj.push("two");
        obj.push("three");
        obj.printBuffer();

    } //how it works
}
