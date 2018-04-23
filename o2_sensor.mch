/* o2_sensor
 * Author: hp
 * Creation date: 16/04/2018
 */
MACHINE
    o2_sensor
SETS
    OXYGEN_LEVELS = { O2_MAX , O2_HIGH , O2_MEDIUM , O2_Low , O2_Danger }
// oxygen set
ABSTRACT_VARIABLES
    Oxygen_level
INVARIANT
    Oxygen_level : OXYGEN_LEVELS
INITIALISATION
   Oxygen_level := O2_MAX
   //set oxygen initially full 
END
