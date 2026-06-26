Feature: Botón de emergencia SOS

  Scenario: Activación exitosa del botón SOS

    Given el transportista ha iniciado sesión en la aplicación
    And se encuentra realizando un viaje
    When mantiene presionado el botón SOS durante un segundo
    Then el sistema envía una alerta de máxima prioridad a la torre de control
    And transmite la ubicación actual, los datos del conductor y la placa del vehículo

  Scenario: Activación accidental del botón SOS

    Given el transportista se encuentra en la pantalla principal
    When presiona el botón SOS por un tiempo menor al requerido
    Then el sistema no envía la alerta de emergencia
    And mantiene la operación normal de la aplicación
