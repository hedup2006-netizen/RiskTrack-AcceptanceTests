Feature: Recepción de alertas preventivas

  Scenario: Recepción de alerta por proximidad a una zona crítica

    Given el transportista ha iniciado sesión en la aplicación móvil
    And el vehículo se encuentra en movimiento
    When la unidad se aproxima a una zona crítica detectada a menos de cinco minutos
    Then el sistema envía una alerta visual y sonora al transportista
    And muestra recomendaciones para evitar la zona de riesgo

  Scenario: Recorrido sin zonas de riesgo registradas

    Given el transportista ha iniciado sesión en la aplicación móvil
    And el vehículo se encuentra en movimiento
    When el sistema no detecta zonas críticas en la ruta planificada
    Then la aplicación continúa monitoreando el recorrido
    And no genera alertas preventivas
