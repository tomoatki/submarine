/* Launcher
 * Author: hp
 * Creation date: 17/04/2018
 */
MACHINE
    Launcher
USES
 Key_Machine
SETS
    LOADING = { Torpedo_Unloaded , Torpedo_Loaded } ;
    FIRING = { Launched , Unlaunched }

ABSTRACT_VARIABLES
    fired , loaded

INVARIANT
    loaded : LOADING &
    fired : FIRING &
    ( loaded = Torpedo_Loaded => fired /= Launched )
    // only will operate if the torpedo is unlaunched and loaded 
INITIALISATION
    loaded , fired := Torpedo_Loaded , Unlaunched
    // Torpedo is loaded but not fired  
OPERATIONS
    open_fire =
    PRE loaded = Torpedo_Loaded & fired = Unlaunched

    THEN
        loaded , fired := Torpedo_Unloaded , Launched
        // unloads and fires torpedo 
    END ;

    reload_torpedo =
    PRE loaded = Torpedo_Unloaded

    THEN
        loaded := Torpedo_Loaded

    END

END
