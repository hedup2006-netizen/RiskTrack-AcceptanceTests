Feature: Confirmación de incidentes en ruta

  Scenario: Confirmación de un incidente reportado

    Given el transportista ha iniciado sesión en la aplicación
    And se encuentra visualizando una alerta de incidente en la ruta
    When presiona el botón "Confirmar"
    Then el sistema registra la confirmación del incidente
    And actualiza el nivel de confianza del evento
    And notifica el cambio a la torre de control

  Scenario: Descarte de un incidente reportado

    Given el transportista ha iniciado sesión en la aplicación
    And se encuentra visualizando una alerta de incidente en la ruta
    When presiona el botón "Descartar"
    Then el sistema registra el descarte del incidente
    And actualiza el nivel de confianza del evento
    And sincroniza la información con la torre de control

