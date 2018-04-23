/* sonar
 * Author: hp
 * Creation date: 17/04/2018
 */
MACHINE
    sonar

SETS
    ENEMY_SIGHTED = { Enemy_Aquired , Enemy_Absent }
ABSTRACT_VARIABLES
    enemy
INVARIANT
    enemy : ENEMY_SIGHTED
INITIALISATION
    enemy := Enemy_Absent

OPERATIONS
    passive_scanning =
    enemy := Enemy_Absent ;
    // looking for target

    target_locked =
    enemy := Enemy_Aquired
    // Target found


END
