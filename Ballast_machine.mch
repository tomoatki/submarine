/* Ballast_machine
 * Author: hp
 * Creation date: 17/04/2018
 */
MACHINE
    Ballast_machine
SETS
    BALLAST_LEVEL = { Tank_Full , Tank_Empty }
    // Ballast set
ABSTRACT_VARIABLES
    ballast_lvl
INVARIANT
    ballast_lvl : BALLAST_LEVEL

INITIALISATION
    ballast_lvl := Tank_Empty
    //Tank is empty at the start implying surfaced sub
OPERATIONS
    fill_ballast =
    ballast_lvl := Tank_Full ;
    //fill tank operation 


    empty_ballast =
    ballast_lvl := Tank_Empty
    //empty tank operation 


END
