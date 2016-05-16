package InterTypeDeclarations;

import figures.Point;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Jefferson on 14/05/2016.
 */
public aspect PointObserving {
    /**
     * La clase Point no tiene ningún campo observers,
     * sin embargo, puede ser declarado aquí los cuales
     * van a guardar el punto cambiado
     */

    private List<Point> Point.observers = new ArrayList<>();

    pointcut moveAction(Point point) : call(void Point.move(int, int))
                                        && target(point)
                                        && within(PointObservingTest);

    after(Point point) : moveAction(point) {
        System.out.println("point moved");
        point.observers.add(point);
        System.out.println(" - " + point.observers);
    }
}
