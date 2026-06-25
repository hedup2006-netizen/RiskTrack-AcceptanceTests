Feature: Planificación de despachos horarios

  Scenario: Visualización de horarios seguros para un despacho

    Given el jefe de flota ha iniciado sesión en RiskTrack
    And se encuentra en el módulo de planificación de despachos
    When selecciona una ruta para una unidad de transporte
    Then el sistema muestra un gráfico con los niveles de riesgo por horario
    And recomienda el horario con menor Índice de Riesgo de Ruta (IRR)

  Scenario: Consulta sin seleccionar una ruta

    Given el jefe de flota se encuentra en el módulo de planificación de despachos
    When intenta consultar el riesgo horario sin seleccionar una ruta
    Then el sistema muestra un mensaje indicando que debe seleccionar una ruta
    And no genera el gráfico de riesgo horario
