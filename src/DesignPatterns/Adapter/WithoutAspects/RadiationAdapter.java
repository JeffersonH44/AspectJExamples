package DesignPatterns.Adapter.WithoutAspects;

import DesignPatterns.Adapter.WithAspects.RadiationDetector;
import DesignPatterns.Adapter.WithAspects.StatusSensor;

/**
 * Created by Jefferson on 14/05/2016.
 */
public class RadiationAdapter implements StatusSensor {
    private final RadiationDetector underlying;

    public RadiationAdapter(RadiationDetector radiationDetector) {
        this.underlying = radiationDetector;
    }

    @Override
    public String getStatus() {
        if(underlying.getCurrentRadiationLevel() > 1.5){
            return "DANGER";
        }
        return "OK";
    }
}
