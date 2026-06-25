Feature: Activación global del Modo Crisis

  Scenario: Activación exitosa del Modo Crisis

    Given el jefe de flota ha iniciado sesión en RiskTrack
    And se encuentra en el módulo Modo Crisis
    When selecciona el área afectada y activa el Modo Crisis
    Then el sistema envía una alerta de máxima prioridad a todas las unidades involucradas
    And recomienda la detención o el desvío de los vehículos ubicados en la zona

  Scenario: Activación sin seleccionar un área afectada

    Given el jefe de flota se encuentra en el módulo Modo Crisis
    When intenta activar el Modo Crisis sin seleccionar un área de emergencia
    Then el sistema muestra un mensaje indicando que debe seleccionar una zona afectada
    And no envía alertas a las unidades
