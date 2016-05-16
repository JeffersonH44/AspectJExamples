package Tracking;

import org.aspectj.lang.Signature;

public aspect SimpleTracing {
    /**
     * Collección de joinpoints en el llamado a cuaquier método
     * con cualquier número de parámetros
     */
    pointcut tracedCall() : call (* *(..))
            //  && !within(SimpleTracing)
            && within(SimpleTracingTest)
            ;

    before() : tracedCall()  {
        Signature sig = thisJoinPointStaticPart.getSignature();
        String line = ""
                + thisJoinPointStaticPart.getSourceLocation().getLine();

        String sourceName = thisJoinPointStaticPart.getSourceLocation()
                .getWithinType().getCanonicalName();
        //
        System.out.println("Call from " + sourceName + " line " + line + "\n   to "
                + sig.getDeclaringTypeName() + "." + sig.getName() +"\n");
    }
}
