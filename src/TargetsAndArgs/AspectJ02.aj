package TargetsAndArgs;

import figures.Point;

public aspect AspectJ02 {

    /**
     * Usando target: el objeto sobre el cual el método es llamado.
     * Usando args: los argumentos ocn que el método es llamado.
     */
    pointcut callMove(Point point, int dx, int dy) :
            call(* figures.Point.move(int, int)) && args(dx, dy) && target(point) && within(ClassTest02);

    before(Point point, int dx, int dy) : callMove(point, dx, dy) {
        System.out.println("Before call move (" +  dx + ", " + dy + ")");
        System.out.println(point.toString());
    }
}
