Feature: Consulta de rutas con menor Índice de Riesgo (IRR)

Scenario: Consulta exitosa de una ruta segura

Given el transportista ha iniciado sesión en RiskTrack
And se encuentra en el módulo de planificación de rutas
When ingresa un punto de origen y un punto de destino válidos
Then el sistema calcula la ruta con el menor Índice de Riesgo de Ruta (IRR)
And muestra el recorrido en el mapa utilizando colores según el nivel de riesgo
And presenta el tiempo estimado de viaje y el valor del IRR calculado

Scenario: Consulta con información incompleta

Given el transportista se encuentra en el módulo de planificación de rutas
When intenta consultar una ruta sin ingresar el destino
Then el sistema muestra un mensaje indicando que debe completar los datos obligatorios
And no realiza el cálculo de la ruta
