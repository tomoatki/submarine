/* co2_sensor
 * Author: hp
 * Creation date: 17/04/2018
 */
MACHINE
    co2_sensor

SETS
    CO2_LEVEL = { CO2_Max , CO2_Medium , CO2_Low , CO2_Danger }
    //co2 levels 
ABSTRACT_VARIABLES
    co2
INVARIANT
    co2 : CO2_LEVEL
INITIALISATION
    co2 := CO2_Max

END
