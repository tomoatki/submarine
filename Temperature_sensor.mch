/* Temperature_sensor
 * Author: hp
 * Creation date: 16/04/2018
 */
MACHINE
    Temperature_sensor
SETS
    ENGINE_TEMPERATURE_LEVEL = { Temp_Low , Temp_Medium , Temp_High , Temp_Danger }
    // different temperature values
ABSTRACT_VARIABLES
    engine_temperature
INVARIANT
    engine_temperature : ENGINE_TEMPERATURE_LEVEL

INITIALISATION
    engine_temperature := Temp_Medium
    // Initial temperature set at medium 
END
