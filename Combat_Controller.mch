/* Combat_Controller
 * Author: hp
 * Creation date: 17/04/2018
 */
MACHINE
    Combat_Controller
INCLUDES
    sonar , Launcher , Lock , Key_Machine
OPERATIONS

    fire_on_target =
    PRE enemy = Enemy_Aquired

    THEN
        open_fire
        //someone is having a bad day
    END ;


    reload_ammo =
    reload_torpedo



END
