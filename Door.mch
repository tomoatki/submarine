/* Door
 * Author: hp
 * Creation date: 15/04/2018
 */
MACHINE
    Door

SETS
    POSITION = { Door_open , Door_closed }
ABSTRACT_VARIABLES
    position
INVARIANT
    position : POSITION
INITIALISATION
   position := Door_closed
    OPERATIONS
        set_door_position ( dp ) =
        PRE dp : POSITION
        THEN
            position := dp
        END
END
