(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer.unit *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.string.CommonLabels *)

class unitWaypointStrings () =
  object
    val mutable wANDERING : string = ""
    method wANDERING = wANDERING
    method set_wANDERING value' = wANDERING <- value'
    val mutable tHINKING : string = ""
    method tHINKING = tHINKING
    method set_tHINKING value' = tHINKING <- value'
    val mutable tHINKING_ABOUT_TARGET : string = ""
    method tHINKING_ABOUT_TARGET = tHINKING_ABOUT_TARGET
    method set_tHINKING_ABOUT_TARGET value' = tHINKING_ABOUT_TARGET <- value'
    val mutable tARGET : string = ""
    method tARGET = tARGET
    method set_tARGET value' = tARGET <- value'
    val mutable kILL : string = ""
    method kILL = kILL
    method set_kILL value' = kILL <- value'
    val mutable sTOP : string = ""
    method sTOP = sTOP
    method set_sTOP value' = sTOP <- value'
    val mutable wAYPOINT_DESTROYED_SHORT : string = ""
    method wAYPOINT_DESTROYED_SHORT = wAYPOINT_DESTROYED_SHORT
    method set_wAYPOINT_DESTROYED_SHORT value' = wAYPOINT_DESTROYED_SHORT <- value'
    val mutable wAYPOINT_DESTROYED : string = ""
    method wAYPOINT_DESTROYED = wAYPOINT_DESTROYED
    method set_wAYPOINT_DESTROYED value' = wAYPOINT_DESTROYED <- value'
    val mutable aLL_VISITED_SHORT : string = ""
    method aLL_VISITED_SHORT = aLL_VISITED_SHORT
    method set_aLL_VISITED_SHORT value' = aLL_VISITED_SHORT <- value'
    val mutable aLL_VISITED : string = ""
    method aLL_VISITED = aLL_VISITED
    method set_aLL_VISITED value' = aLL_VISITED <- value'
    val mutable aLREADY_THERE_SHORT : string = ""
    method aLREADY_THERE_SHORT = aLREADY_THERE_SHORT
    method set_aLREADY_THERE_SHORT value' = aLREADY_THERE_SHORT <- value'
    val mutable aLREADY_THERE : string = ""
    method aLREADY_THERE = aLREADY_THERE
    method set_aLREADY_THERE value' = aLREADY_THERE <- value'
    val mutable nEXT_PATH_NODE : string = ""
    method nEXT_PATH_NODE = nEXT_PATH_NODE
    method set_nEXT_PATH_NODE value' = nEXT_PATH_NODE <- value'

    initializer
      begin
        wANDERING <- "Order?";
        tHINKING <- "Thinking";
        tHINKING_ABOUT_TARGET <- "Hmmm";
        tARGET <- "Target";
        kILL <- "Kill!";
        sTOP <- "Stop";
        wAYPOINT_DESTROYED_SHORT <- "Uh Oh";
        wAYPOINT_DESTROYED <- "Waypoint Destroyed";
        aLL_VISITED_SHORT <- "Arrived";
        aLL_VISITED <- "All Visited";
        aLREADY_THERE_SHORT <- "Again?";
        aLREADY_THERE <- "Already There";
        nEXT_PATH_NODE <- (java_string_of (Obj.repr ((CommonLabels.getInstance ())#nEXT)) ^ " Path Node");
        ()
      end
  end
let () = java_register_constructor "UnitWaypointStrings" (fun arguments -> Obj.repr (new unitWaypointStrings (Obj.obj arguments)))

let instance = (new unitWaypointStrings ())
let get_instance () = instance
let () = java_register_static "UnitWaypointStrings.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "UnitWaypointStrings.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


