package Field;

import java.io.PrintStream;

/**
 * Created by Jefferson on 14/05/2016.
 */
public aspect FieldInAspectJ {
    PrintStream logStream = System.err;

    pointcut move() : call(* figures.Point.move(int, int)) && within(FieldInAspectJTest);

    before() : move() {
        logStream.println("Before Point move");
    }
}
