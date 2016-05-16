package Tracking;

import figures.Point;

/**
 * Created by Jefferson on 14/05/2016.
 */
public class SimpleTracingTest {

    private static void testMethod1() {
        Point point = new Point(100, 100);
        point.setX(100);
    }

    private static void testMethod2() {

        String text = "This is text";

        String s = text.substring(2);

        System.out.println(s);
    }

    public static void main(String[] args) {

        testMethod1();

        testMethod2();
    }
}
