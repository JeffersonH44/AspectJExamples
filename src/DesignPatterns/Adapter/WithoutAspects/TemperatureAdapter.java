package DesignPatterns.Adapter.WithoutAspects;

import DesignPatterns.Adapter.WithAspects.StatusSensor;
import DesignPatterns.Adapter.WithAspects.TemperatureGauge;

public class TemperatureAdapter implements StatusSensor {
    private final TemperatureGauge temperature;

    public TemperatureAdapter(TemperatureGauge temperature) {
        this.temperature = temperature;
    }

    @Override
    public String getStatus() {
        return temperature.readTemperature() > 1 ? "DANGER" : "OK";
    }
}
