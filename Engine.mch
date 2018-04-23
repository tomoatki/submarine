/* Engine
 * Author: hp
 * Creation date: 17/04/2018
 */
MACHINE
    Engine
SETS
    ENGINE_STATE = { Engine_On , Engine_Off }
    // Engine states
ABSTRACT_VARIABLES
    Engine_status
INVARIANT
    Engine_status : ENGINE_STATE
INITIALISATION
    Engine_status := Engine_Off
    // engine turned off initially 

OPERATIONS
    turn_on_engine =
    Engine_status := Engine_On ;
    // engine on operation

    turn_off_engine =
    Engine_status := Engine_Off
    // engine off operation
END
