Feature: Integración con hardware GPS

  Scenario: Recepción correcta de información desde el GPS

    Given el vehículo cuenta con un dispositivo GPS homologado
    And el dispositivo se encuentra transmitiendo información
    When el servidor recibe la trama enviada por el GPS
    Then el sistema procesa correctamente las coordenadas
    And actualiza la velocidad y el estado del vehículo en el mapa

  Scenario: Error en la recepción de datos del GPS

    Given el vehículo posee un dispositivo GPS registrado
    And el dispositivo envía una trama inválida
    When el servidor intenta procesar la información
    Then el sistema registra el error de comunicación
    And mantiene la última ubicación válida disponible
