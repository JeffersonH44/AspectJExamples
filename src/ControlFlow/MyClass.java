package ControlFlow;

/**
 * Created by Jefferson on 14/05/2016.
 */
public class MyClass {
    public void callA() {
        callB();
        callC();
    }

    public void callB() {
        callC();
    }

    public void callC() {
    }
}
