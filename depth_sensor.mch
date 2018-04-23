/* depth_sensor
 * Author: hp
 * Creation date: 16/04/2018
 */
MACHINE
    depth_sensor

SETS
    DEPTH_LEVEL = { Depth_Surfaced , Depth_Shallow , Depth_Normal , Depth_Maximum , Depth_Danger }
    // depth set ranges
ABSTRACT_VARIABLES
    depth
INVARIANT
    depth : DEPTH_LEVEL
INITIALISATION
   depth := Depth_Normal
   //operating range set initially 
END
