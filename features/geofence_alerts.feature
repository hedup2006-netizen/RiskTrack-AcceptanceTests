Feature: Alertas por violación de geocercas

  Scenario: Ingreso de una unidad a una zona restringida

    Given existe una geocerca configurada como zona de alto riesgo
    And una unidad se encuentra realizando un viaje
    When la unidad ingresa al perímetro restringido
    Then el sistema genera una alerta inmediata
    And resalta la unidad en color rojo dentro del mapa

  Scenario: La unidad permanece dentro de la ruta autorizada

    Given existe una geocerca configurada
    And la unidad sigue la ruta autorizada
    When el sistema recibe las coordenadas del GPS
    Then no se genera ninguna alerta
    And el monitoreo continúa normalmente

