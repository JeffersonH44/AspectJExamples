package Within;

import figures.Point;

/**
 * Created by Jefferson on 14/05/2016.
 */
public class ClassTest01 {
    public static void main(String[] args) {
        Point point = new Point(10, 200);
        System.out.println("---- (1) ----");
        point.setX(20);
        System.out.println("---- (2) ----");
        point.setY(100);
        System.out.println("---- (3) ----");
    }
}
