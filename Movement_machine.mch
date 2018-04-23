/* Movement_machine
 * Author: hp
 * Creation date: 17/04/2018
 */
MACHINE
    Movement_machine

INCLUDES
    Engine , Rudder , Ballast_machine , Lock
    // Machines included
SEES
    Temperature_sensor , co2_sensor , depth_sensor , o2_sensor
    // Sees various sensors 

OPERATIONS
    rise_up =
    PRE depth /= Depth_Surfaced

    THEN
        empty_ballast

        // tank to be filled if the submarine is to rise 
    END ;


    sink_down =
    PRE depth /= Depth_Danger

    THEN

        // to submerge the submarine 
        fill_ballast
    END ;

    engine_overheat =
    PRE engine_temperature = Temp_Danger
    THEN
        fill_ballast
        // rise when temperature is too high 

    END ;

    o2_levels_low =
    PRE Oxygen_level = O2_Danger
        THEN
            fill_ballast
            // rise when little oxygen 

    END ;

    co2_danger =
    PRE co2 = CO2_Danger
        THEN
            fill_ballast
        // rise when risky co2 levels 
    END ;

    emergency_surface =
    fill_ballast ;

    engine_on =
    turn_on_engine ;

    engine_off =
    turn_off_engine ;

    turn_left =
    bear_left ;

    turn_right =
    bear_right





END
