/* Key_Machine
 * Author: hp
 * Creation date: 18/04/2018
 */
MACHINE
    Key_Machine
SETS
    KEY_IN_IGNITION = { Key_In , Key_out }
    // Sets
ABSTRACT_VARIABLES
    key_inserted
INVARIANT
    key_inserted : KEY_IN_IGNITION

INITIALISATION
    key_inserted := Key_In
    // Key in 

END
