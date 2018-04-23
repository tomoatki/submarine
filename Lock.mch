/* Lock
 * Author: hp
 * Creation date: 15/04/2018
 */
MACHINE
    Lock
INCLUDES
    Door
    // Includes door position 
SETS
    LOCKED_STATUS = { Locked , Unlocked }
    //locked or unlocked
ABSTRACT_VARIABLES
    status
INVARIANT
    status : LOCKED_STATUS &
    ( status = Unlocked => position = Door_open )
    //when post 
INITIALISATION
    status := Locked
    // initial status is locked 
OPERATIONS
    lock_door ( ld ) =
    PRE ld : LOCKED_STATUS
    THEN
        status := ld
        //gets status of door
    END ;

    open_door =
    PRE status = Unlocked & position = Door_closed

    THEN
        set_door_position ( Door_open )
    END ;

    unlock_door =
    status := Unlocked
    //unlocked door operation
END
