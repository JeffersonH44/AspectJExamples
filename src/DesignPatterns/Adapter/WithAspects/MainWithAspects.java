package DesignPatterns.Adapter.WithAspects;

import java.util.ArrayList;
import java.util.List;

public class MainWithAspects {

    public static void main(String[] args) {
        RadiationDetector radiationDetector = new RadiationDetector();
        TemperatureGauge temperatureDetector = new TemperatureGauge();

        List<StatusSensor> allSensors = new ArrayList<>();

        allSensors.add(radiationDetector);
        allSensors.add(temperatureDetector);

        int count = 1;
        for (StatusSensor sensor : allSensors) {
            System.out.print("Sensor " + count++ + ": ");
            System.out.println(sensor.getStatus());
        }
    }

}
