package DesignPatterns.Adapter.WithAspects;

public aspect SensorAdapter {
    declare parents: (TemperatureGauge || RadiationDetector) implements StatusSensor;

    public String TemperatureGauge.getStatus() {
        return this.readTemperature() > 160 ? "DANGER" : "OK";
    }

    public String RadiationDetector.getStatus() {
        return this.getCurrentRadiationLevel() > 1.5 ? "DANGER" : "OK";
    }


}
