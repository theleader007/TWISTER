
----------------        V5       ------------------------------

---Updated on 7/19/19
----Tutorial Videos------------------------------------------------

-----How to use:        https://www.youtube.com/watch?v=F_tvWzF3x18

-----Youtube Channel: https://www.youtube.com/c/Kriptutorial


-- Shared with you by KripT
---Created by some Chinese dude

---Log: 
--Recoil Table Updated
--Added PP-Bizon
--Randomization System Update
--Optimization of Code
--Fix of AutoMode



---- KEY BIND  ----
--Info: The name of the gun_key = arg (which is the button name)
--Ex: ump9_key = 1(left click)

local ump9_key = 4
local akm_key = 7
local m16a4_key = 8
local m416_key = 5
local scarl_key = nil
local uzi_key = nil
local qbz_key = 11
local mp5k_key = nil
local beryl_key = 10
local g36c_key = 11
local ppbizon_key = nil
---This is the button used to turn off the script (default:6) - G502
local set_off_key = 6


---- KEYBOARD ---- 
--This should only be used by users with a Logitech Keyboard

local ump9_gkey = nil  ---1 is for G1
local akm_gkey = nil
local m16a4_gkey = nil
local m416_gkey = nil
local scarl_gkey = nil
local uzi_gkey = nil
local mp5k_gkey = nil
local qbz_gkey = nil
local g36c_gkey = nil
local beryl_gkey = nil
local ppbizon_gkey = nil
---Button used to turn off the script(keyboard)
local set_off_gkey = nil




---- control_key ----

local control_key = "lctrl" 



---- Allowed Keys are: "lalt", "ralt", "alt"  "lshift", "rshift", "shift"  "lctrl", "rctrl", "ctrl"

local ignore_key = "lalt" --- ignore key



--------------------------Functionalities---------------------------------
------Full_Mode = When gun is full of attachments, activates a weaker recoil mode when compared to Basic
-----Mode_Switch_Key = When gun has 6x or 4x, activates 4x(quadruple) mode which quadruples values
----Lighton_Key = When the Script is on, the light for "scrolllock" on your keyboard will be on.


---- Only allowed keys for this area: "numlock", "capslock", "scrolllock" - Don't mistype it.

local full_mode_key = "numlock"   
local mode_switch_key = "capslock" 
local lighton_key = "scrolllock" 

-----------------------End of Functionalities-----------------------------

------------------------Settings-------------------------------------------


local vertical_sensitivity = 1 --- default is 1
local target_sensitivity = 50 --- default is 50.0
local scope_sensitivity = 50 --- default is 50.0
local scope4x_sensitivity = 50 --- default is 50.0

----------------------End of Settings--------------------------------------

-------------------Functionalities settings ------------------------------

---Full_Mode = True, allows for change from basic to full_mode(full attached gun)

local full_mode = true

-------------------End of Functionalities Settings------------------------

-------------------------Safety-------------------------------------------
--If Obfs_mode = true then, values from recoil table are randomized to reduce chance of detection
--Interval_Ratio, by how much are the numbers randomized
--Random_Seed, some random shit in calculation that makes no freaking sense(ignore)

---These are the recommended settings, changing anything here drastically impacts Recoil Table!
local obfs_mode = true
local interval_ratio = 0.5
local random_seed = 1




----------------------End of Safety--------------------------------------

-- Auto_Mode = True, DO NOT CHANGE THIS TO FALSE as it will create bugs

local auto_mode = true -- dont change

-----------------------


--------------------------------------------------------------------------
----------------        Recoil Table        ------------------------------
---------------- You can fix the value here ------------------------------
--------------------------------------------------------------------------

--- Recoil Times
    ----basictimes = 1,
--- If All_Recoil_Times greater than 1 , then increased force of pulldown
--- If less than 1, decreased force of pulldown

local all_recoil_times = 1


----------------------------- Don't play here UNLESS you know what you are DOING!!---------------------------------
-----Follow my TUTORIAL VIDEOS at the top, to understand how everything here works!
----Link:  https://www.youtube.com/watch?v=F_tvWzF3x18

local recoil_table = {}


recoil_table["akm"] = {
    basic={32,29,29,30, 33.8,33,36,37, 39,39.5,43,44},
	basictimes = 1,
    full={32,29,29,30, 33.8,34,36,37, 39.6,39.7,44,44},
    fulltimes = 1*.85,
    quadruple={28,29,32,30, 26,24,24,25, 24,31,34,40},
    quadrupletimes = 4,
    fullof4x={23,22,21,22, 21,23,25,26, 27,27,25,29},
    fullof4xtimes = 4,
    speed = 96,
    maxbullets = 40,
    holdbreathtimes = 1.25,
    fullholdbreathtimes = 1.25,	


}

recoil_table["m416"] = {
    basic={25,22,23,23	,26, 27,28.7,28.5,27, 26,27,28,30},	
    basictimes = 1,
    full={31,26,27,29	,21,21,24,24,26, 21,27,28,32},
    fulltimes = 1*.7,	
    quadruple={21,19,18,19	,21,22,21,20,21, 20,19,20,28},
    quadrupletimes = 4,
    fullof4x={18,14,12,10	,15,13,15,12,15, 10,11,12,18},
    fullof4xtimes = 4,
    speed = 75,
    maxbullets = 40,
    holdbreathtimes = 1.25,
    fullholdbreathtimes = 1.25,	


}

recoil_table["scarl"] = {
    basic={32,29,29,26	,29,28,30,31, 30,31,32,33},
    basictimes = 1,
    full={31,28,27,26	,24,26,24,26, 30,31,32,33},
    fulltimes = 1*.8,
    quadruple={30,27,25,27	,24,27,26,24, 27,26,25,33},
    quadrupletimes = 4*.9,
    fullof4x={32,29,29,26	,29,28,30,31, 30,31,32,33},
    fullof4xtimes = 4*.6,
    speed = 100,
    maxbullets = 40,
    holdbreathtimes = 1.25,
    fullholdbreathtimes = 1.25,	


}

recoil_table["ump9"] = {
    basic={20,16,17,18, 22,23,21,24, 24,22,24,26},
    basictimes = 1,
    full={21,18,19,18, 19,20,19,20, 21,22,23,24},
    fulltimes = 1*.8,
    quadruple={20,16,17,18, 22,23,21,24, 24,22,24,26},
    quadrupletimes = 4*0.8,
    fullof4x={21,18,19,19, 22,23,21,24, 24,22,24,26},
    fullof4xtimes = 4*0.5,
    speed = 90,
    maxbullets = 40,
    holdbreathtimes = 1.25,
    fullholdbreathtimes = 1.25,	


}

recoil_table["uzi"] = { 
    basic={16,10,11,12, 14,15,13,15, 14,15,16,21},
    basictimes = 1,
    full={18,16,15,16, 18,16,17,19, 14,15,16,21},
    fulltimes = 1*.6,
    quadruple={0,0,0,0, 0,0,0,0, 0,0,0,0},
    quadrupletimes = 4,
    fullof4x={0,0,0,0, 0,0,0,0, 0,0,0,0},
    fullof4xtimes = 4*.6,
    speed = 50,
    maxbullets = 35,
    holdbreathtimes = 1.25,
    fullholdbreathtimes = 1.25,	


}

recoil_table["m16a4"] = {
    basic={20,18,16,14, 12,14,12,10, 12,14,15,17,},
    basictimes = 1*.7,
    full={42,39,38,37, 36,39,38,37, 39,41,40,43},
    fulltimes = 1*.8,
    quadruple={42,39,38,37, 36,39,38,37, 39,41,40,43},
    quadrupletimes = 4,
    fullof4x={42,39,38,37, 36,39,38,37, 39,41,40,43},
    fullof4xtimes = 4*.8,
    fulltimes = 1,
    speed = 100,
    maxbullets = 40,
    clickspeed = 100,
    holdbreathtimes = 1.25,
    fullholdbreathtimes = 1.25,	


}

recoil_table["qbz"] = {
    basic={31,22,24,26, 27,27,28,29, 30,28,26,31},
    basictimes = 1.0,
    full={32,26,28,29, 29,28,30,29, 29,29,27,31},
    fulltimes = 1*.7,
    quadruple={20,18,16,13, 25,26,20,22, 26,27,28,29},
    quadrupletimes = 4,
	fullof4x={32,26,28,26, 27,27,28,29, 30,28,25,31},
    fullof4xtimes = 4*.6,
    speed = 100,
    maxbullets = 40,
    holdbreathtimes = 1.25,
    fullholdbreathtimes = 1.25,	


}

recoil_table["beryl"] = {
    basic={26,24,22,23, 26,33,31,34, 32,33,38,42},
    basictimes = 1,
    full={28,26,22,23, 26,28,29,26, 34,36.7,38.6,40.5},
    fulltimes = 1*.73,
    quadruple={26,24,22,23, 26,36,31,34, 37,36,38,43},
    quadrupletimes = 4*.85,
    fullof4x={26,24,22,25, 32,33,31,34, 32,36,39,43},
    fullof4xtimes = 4*.6,
    speed = 65,
    maxbullets = 40,
    holdbreathtimes = 1.25,
    fullholdbreathtimes = 1.25,	


}

recoil_table["g36c"] = { 
    basic={26,24,22,23, 26,33,31,34, 32,33,38,42},
    basictimes = 1,
    full={26,24,22,23, 26,33,31,34, 32,33,38,42},
    fulltimes = 1*.7,
    quadruple={26,24,22,23, 28,36,31,34, 37,36,38,43},
    quadrupletimes = 4*0.85,
    fullof4x={26,24,22,21, 26,29,31,32, 31,33,36,41},
    fullof4xtimes = 4*0.6,
    speed = 100,
    maxbullets = 40,
    holdbreathtimes = 1.25,
    fullholdbreathtimes = 1.25,	


}
recoil_table["mp5k"] = {
    basic={31,29,28,29, 27,29,31,27, 26,27,28,32},
    basictimes = 1,
    full={31,29,28,29, 27,29,31,27, 22,23,24,31},
    fulltimes = 1*.65,
    quadruple={31,29,28,29, 29,32,31,34, 22,23,24,31},
    quadrupletimes = 4,
    fullof4x={31,29,28,29, 27,29,31,27, 22,23,24,31},
    fullof4xtimes = 4*.55,
    speed = 90,
    maxbullets = 35,
    clickspeed = 100,
    holdbreathtimes = 1.25,
    fullholdbreathtimes = 1.25,	


}

recoil_table["ppbizon"] = {
    basic={21,16,17,19, 21,20,21,20, 17,18,16,21},
    basictimes = 1,
    full={21,16,17,19, 21,20,21,20, 17,18,16,21},
    fulltimes = 1*.75,
    quadruple={21,16,17,19, 21,20,20,20, 17,18,16,21},
    quadrupletimes = 4*.95,
    fullof4x={21,16,17,19, 21,20,21,20, 17,18,16,21},
    fullof4xtimes = 4*.6,
    speed = 90,
    maxbullets = 35,
    clickspeed = 100,
    holdbreathtimes = 1.25,
    fullholdbreathtimes = 1.25,	


---Template, copy this below to create a new gun---- |Advanced|
}

recoil_table["none"] = {
    basic={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    basictimes = 1,
    full={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    fulltimes = 1,
    quadruple={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    quadrupletimes = 1,
    fullof4x={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    fullof4xtimes = 1,
    speed = 30,
    maxbullets = 40,
    clickspeed = 100,
    holdbreathtimes = 1.25,
    fullholdbreathtimes = 1.25,	



}


--------------------------------------------------------------------------
----------------          Function          ------------------------------


-----ANY SMALL CHANGE IN HERE CAN EITHER INTERRUPT THE SCRIPT FROM FUNCTIONING 
-----OR ALLOW YOU TO BECOME SUPERMAN, MOST LIKELY THE FIRST OPTION


---Basic calculation----





function convert_sens(unconvertedSens) 
    return 0.002 * math.pow(10, unconvertedSens / 50)
end

function calc_sens_scale(sensitivity)
    return convert_sens(sensitivity)/convert_sens(50)
end

local target_scale = calc_sens_scale(target_sensitivity)
local scope_scale = calc_sens_scale(scope_sensitivity)
local scope4x_scale = calc_sens_scale(scope4x_sensitivity)
---The key switching and changes in mode----
function recoil_mode()
    if not IsKeyLockOn(mode_switch_key) then
        if IsKeyLockOn(full_mode_key) and full_mode then
	       return "full";
	else
	       return "basic";
        end
    end	
	
    if IsKeyLockOn(mode_switch_key) then
        if IsKeyLockOn(full_mode_key) and full_mode then
	       return "fullof4x"
	else
	       return "quadruple"
        end 
    end		
end

function single_value(value)
    return math.floor(( value / 10 ))
    end

function recoil_value(_weapon,_duration)
    local _mode = recoil_mode()
    local step = (math.floor(_duration/recoil_table[_weapon]["speed"])) + 1
    if step > #recoil_table[_weapon][_mode] then
        step = #recoil_table[_weapon][_mode]
    end
---Defining and allocating all locals needed
    local weapon_recoil = recoil_table[_weapon][_mode][step]
    local weapon_speed = recoil_table[_weapon]["speed"]
    local weapon_clickspeed = recoil_table[_weapon]["clickspeed"]
    local weapon_maxbullets = recoil_table[_weapon]["maxbullets"]
    local weapon_basictimes = recoil_table[_weapon]["basictimes"]
    local weapon_fulltimes = recoil_table[_weapon]["fulltimes"]
    local weapon_quadrupletimes = recoil_table[_weapon]["quadrupletimes"]
    local weapon_fullof4xtimes = recoil_table[_weapon]["fullof4xtimes"]
    local weapon_intervals = weapon_speed    
    local weapon_clicktime = weapon_clickspeed
    local weapon_bullets = weapon_maxbullets 
---OBFS Mode, This is the code for the Randomization System.
    if obfs_mode then
        local coefficient = interval_ratio * ( 1 + random_seed * math.random())
        weapon_intervals = math.floor(coefficient  * weapon_speed) 
    end
    -- OutputLogMessage("weapon_intervals = %s\n", weapon_intervals)

    recoil_recovery = weapon_recoil
    recoil_times = all_recoil_times / vertical_sensitivity 

   
    if recoil_mode() == "basic"  then
    recoil_recovery = recoil_recovery * recoil_times * weapon_basictimes
    end

   
    if recoil_mode() == "full"  then
    recoil_recovery = recoil_recovery * recoil_times * weapon_fulltimes
    end

    if recoil_mode() == "quadruple" then
    recoil_recovery = recoil_recovery * recoil_times * weapon_quadrupletimes
    end
	
    if recoil_mode() == "fullof4x" then
    recoil_recovery = recoil_recovery * recoil_times * weapon_fullof4xtimes
    end

    -- issues/3
    if IsMouseButtonPressed(2) then
        recoil_recovery = recoil_recovery / target_scale
    elseif recoil_mode() == "basic" then
        recoil_recovery = recoil_recovery / scope_scale 
    elseif recoil_mode() == "full" then
        recoil_recovery = recoil_recovery / scope_scale
    elseif recoil_mode() == "quadruple" then
        recoil_recovery = recoil_recovery / scope4x_scale
    elseif recoil_mode() == "fullof4x" then
        recoil_recovery = recoil_recovery / scope4x_scale
    end

    return weapon_intervals,recoil_recovery,weapon_clicktime,weapon_bullets
end

--------------------------------------------------------------------------
----------------          OnEvent          ------------------------------
--------------------------------------------------------------------------


function OnEvent(event, arg)
    OutputLogMessage(" %s, = %d\n", event, arg)
	
    if (event == "PROFILE_ACTIVATED") then
		OutputLogMessage("Script = ON ->")
        EnablePrimaryMouseButtonEvents(true)
        Fire = false
        current_weapon = "none"
        shoot_duration = 0.0
        if IsKeyLockOn(lighton_key) then
        PressAndReleaseKey(lighton_key)
        elseif IsKeyLockOn(full_mode_key) then
        PressAndReleaseKey(full_mode_key)
        elseif IsKeyLockOn(mode_switch_key) then
        PressAndReleaseKey(mode_switch_key)
	   
        end
    elseif event == "PROFILE_DEACTIVATED" then
        ReleaseMouseButton(1)
	   
	   
    end

    if (event == "MOUSE_BUTTON_PRESSED" and arg == set_off_key) 
    or (event == "G_PRESSED" and arg == set_off_gkey) then
        current_weapon = "none" 
	   OutputLogMessage("Script = OFF ->")
	   
	
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == akm_key)
    or (event == "G_PRESSED" and arg == akm_gkey) then
        current_weapon = "akm" 
	
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == beryl_key)
    or (event == "G_PRESSED" and arg == beryl_gkey) then
        current_weapon = "beryl" 
	
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == m16a4_key)
    or (event == "G_PRESSED" and arg == m16a4_gkey) then
        current_weapon = "m16a4" 
	
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == m416_key)
    or (event == "G_PRESSED" and arg == m416_gkey) then
        current_weapon = "m416" 
	
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == ump9_key)
    or (event == "G_PRESSED" and arg == ump9_gkey) then
        current_weapon = "ump9" 
	
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == qbz_key)
    or (event == "G_PRESSED" and arg == qbz_gkey) then
        current_weapon = "qbz" 
	
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == uzi_key)
    or (event == "G_PRESSED" and arg == uzi_gkey) then
        current_weapon = "uzi" 
	
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == scarl_key)
    or (event == "G_PRESSED" and arg == scarl_gkey) then
        current_weapon = "scarl" 
	
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == g36c_key)
    or (event == "G_PRESSED" and arg == g36c_gkey) then
        current_weapon = "g36c" 
	
	elseif (event == "MOUSE_BUTTON_PRESSED" and arg == mp5k_key)
	or (event == "G_PRESSED" and arg == mp5k_gkey) then
		current_weapon = "mp5k"

	elseif (event == "MOUSE_BUTTON_PRESSED" and arg == ppbizon_key)
	or (event == "G_PRESSED" and arg == ppbizon_gkey) then
		current_weapon = "ppbizon"
	

	-----Template below, just an example |Advanced|
----elseif (event == "MOUSE_BUTTON_PRESSED" and arg == mp5_key)
----or (event == "G_PRESSED" and arg == mp5_gkey) then
--------- current_weapon = "mp5"
	



    elseif (event == "M_RELEASED" and arg == 3 and Fire) then
        local intervals,recovery,clicktime,bullets = recoil_value(current_weapon,shoot_duration)
        if shoot_duration % (single_value(intervals) / 2) == 0 then
            PressAndReleaseMouseButton(1)
        end 
        MoveMouseRelative(0, recovery / 10)
        Sleep(single_value(intervals)/10)
        shoot_duration = (single_value(intervals)*.5)
       --- if auto_reloading then
         ----   if shoot_duration > (single_value(intervals) * bullets) + 100 then
          -----  ReleaseMouseButton(1)
          ---  PressAndReleaseKey("r")
         ---   Sleep(200)
         ---   Fire = false
         ---   end
    ---    end
        if not Fire then
            ReleaseMouseButton(1)
        elseif Fire then
            SetMKeyState(3)
        end

    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == 1) then
        -- button 1 : Shoot
        if ((current_weapon == "none") or IsModifierPressed(ignore_key)) then
            PressMouseButton(1)
            repeat
                Sleep(30)
            until not IsMouseButtonPressed(1)
        elseif(current_weapon == "m16a4") then
            Fire = true
            SetMKeyState(3)
        else
            if auto_mode then
            repeat
            local intervals,recovery,clicktime,bullets = recoil_value(current_weapon,shoot_duration)
            MoveMouseRelative(0, recovery /10 )
            Sleep(intervals/10)
            shoot_duration = shoot_duration + (intervals/10) 
            
            until not IsMouseButtonPressed(1)
            else
            Fire = true
            SetMKeyState(3)
            end
        end
    elseif (event == "MOUSE_BUTTON_RELEASED" and arg == 1) then
        Fire = false
        shoot_duration = 0.0
    end

   --- while (event == "MOUSE_BUTTON_PRESSED" and arg == 1 and IsModifierPressed(control_key) and IsModifierPressed(ignore_key) and fastloot) do
        ---ReleaseMouseButton(1)
       --- PressMouseButton(1)
        ---for i = 0, 14 do
      ---  MoveMouseRelative(move, 0)
      ---  Sleep(2)
       --- end
       --- ReleaseMouseButton(1)
     ---   for i = 0, 14 do
      ---  MoveMouseRelative(-move, 0)
      ---  Sleep(2)
      --  end
      ---  Sleep(10)          
   --- end
    if (current_weapon == "none") then
        if IsKeyLockOn(lighton_key) then
        PressAndReleaseKey(lighton_key)
        end 
    else
        if not IsKeyLockOn(lighton_key) then
        PressAndReleaseKey(lighton_key)
        end
    end
end

---TEXT VERSION ONLY