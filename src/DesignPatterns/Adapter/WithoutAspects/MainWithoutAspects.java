package DesignPatterns.Adapter.WithoutAspects;

import DesignPatterns.Adapter.WithAspects.RadiationDetector;
import DesignPatterns.Adapter.WithAspects.StatusSensor;
import DesignPatterns.Adapter.WithAspects.TemperatureGauge;

import java.util.ArrayList;
import java.util.List;

public class MainWithoutAspects {
    public static void main(String[] args){
        RadiationDetector radiationDetector = new RadiationDetector();
        TemperatureGauge temperatureDetector = new TemperatureGauge();

        // Aplicando los adaptadores a cada sensor debido a que su interfaz no es la misma.
        StatusSensor temperature = new TemperatureAdapter(temperatureDetector);
        StatusSensor radiation = new RadiationAdapter(radiationDetector);

        List<StatusSensor> allSensors = new ArrayList<>();

        allSensors.add(temperature);
        allSensors.add(radiation);

        int count = 1;
        for (StatusSensor sensor : allSensors) {
            System.out.print("Sensor " + count++ + ":");
            System.out.println(sensor.getStatus());
        }
    }
}
