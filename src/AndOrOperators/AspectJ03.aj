package AndOrOperators;

public aspect AspectJ03 {
    pointcut moveAction() :
        (
            call(void figures.FigureElement.move(int, int)) ||
            call(void figures.Point.setX(int)) ||
            call(void figures.Point.setY(int))
        ) && within(ClassTest03);

    before() : moveAction() {
        System.out.println("before move");
    }
}
