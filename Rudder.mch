/* Rudder
 * Author: hp
 * Creation date: 17/04/2018
 */
MACHINE
    Rudder

SETS
    TURN_POSITION = { Turn_Left , Turn_Right }
    //Turn set
ABSTRACT_VARIABLES
    turn_position
INVARIANT
    turn_position : TURN_POSITION
INITIALISATION
    turn_position := Turn_Left
    //rudder set at left initially 
OPERATIONS
    bear_left =
    turn_position := Turn_Left ;
    //left operation

    bear_right =
    turn_position := Turn_Right
    // Right operation
END
