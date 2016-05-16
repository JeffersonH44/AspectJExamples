/**
 * Created by Jefferson on 14/05/2016.
 */
public aspect HelloAspectJ {
    pointcut callSayHello(): call(* *.sayHello());

    before() : callSayHello() {
        System.out.println("Before say hello");
    }

    after() : callSayHello() {
        System.out.println("After say hello");
    }
}
