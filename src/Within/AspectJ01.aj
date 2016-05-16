package Within;

/**
 * Notas:
 *
 * * within: se encarga de limitar el pointcut solo en la clase que recibe como argumento.
 * * Operador asterisco: Empareja cualquier elemento que pueda ir dentro de este operador.
 */

// within (ClassTest01)

public aspect AspectJ01 {
    pointcut callSetX() : call(void figures.Point.setX(int)) && within(ClassTest01);

    before() : callSetX() {
        System.out.println("Before call Point.setX(int)");
    }

    // Collection of JoinPoints call Point.setX(int), any package name,
    // and method return  void
    //pointcut callSetX()  : call(void  *.Point.setX(int)) ;

    // Collection of JoinPoints call Point.setX(int), any package name,
    // and method return any
    //pointcut callSetX()  : call(* *.Point.setX(int)) ;


    // Collection of JoinPoints call public static method setX(int) of class with package name is 'sample'
    // and class name have suffix Point,
    // and setX(int) return int
    //pointcut callSetX()  : call(public static int sample.*Point.setX(int)) ;


    // Using (..) to describe the method has 0 or more parameters.
    //pointcut callSetX()  : call(public static int sample.*Point.setX(..)) ;
}
