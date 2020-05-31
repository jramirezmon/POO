import static processing.core.PApplet.radians;

abstract class Figura{
    //atributos
    int c;
    int s =1;
    float [] prs = {0,0,0,0};
    boolean e=false;
    Figura(int tempC, float tempXpos, float tempYpos, float tempr, float temps) {
        c = tempC;
        prs[0]= tempXpos;
        prs[1]= tempYpos;
        prs[2]= tempr;
        prs[3]=temps;
    }
    void display() {
        MainClass.processing.push();
        MainClass.processing.fill(c);
        MainClass.processing.translate(prs[0],prs[1]);
        MainClass.processing.rotate(radians(prs[2]));
        MainClass.processing.scale(prs[3]);
        MainClass.processing.stroke(0);
        drawFigura();
        MainClass.processing.pop();
    }
    abstract void drawFigura();

    void move(float x,float y ,float r,int st) {
        prs[0] = prs[0]+x;
        prs[1] = prs[1]+y;
        prs[2] = prs[2]+r;
        prs[3] = prs[3]*st;
        s = st;
    }
    boolean seleccion(int cmouse) {
        if(cmouse ==c ){
            e=true;
            return e ;
        }
        else {
            e=false;
            return e ;
        }
    }
    int getColor() {
        return c ;
    }
    float[] getprs() {
        return prs;
    }

}



