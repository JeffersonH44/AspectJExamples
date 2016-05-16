package ControlFlow;

/**
 * Created by Jefferson on 14/05/2016.
 */
public aspect CFlowAspectJ {
    pointcut call_cflow_callA(): cflowbelow(call(* MyClass.callA())) &&
                                 cflowbelow(call(* MyClass.callB())) &&
                                 within(CFlowDemo || MyClass);

    before(): call_cflow_callA() {
        System.out.println(
                "Join point at: " + thisJoinPointStaticPart.getSourceLocation().getWithinType().getCanonicalName() +
                        " --> " + thisJoinPointStaticPart.getSourceLocation().getLine()
        );
    }
}
