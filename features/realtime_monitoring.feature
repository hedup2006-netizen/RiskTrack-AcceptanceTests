Feature: Monitoreo en tiempo real de la flota

  Scenario: Actualización automática de la ubicación de las unidades

    Given el jefe de flota ha iniciado sesión en RiskTrack
    And se encuentra en el mapa de monitoreo
    When transcurren 30 segundos desde la última actualización
    Then el sistema actualiza automáticamente la posición de todas las unidades
    And muestra la nueva ubicación en el mapa sin recargar la página

  Scenario: Visualización del mapa sin unidades activas

    Given el jefe de flota ha iniciado sesión en RiskTrack
    And no existen unidades realizando un viaje
    When accede al mapa de monitoreo
    Then el sistema muestra el mapa sin marcadores activos
    And informa que no existen unidades en operación
