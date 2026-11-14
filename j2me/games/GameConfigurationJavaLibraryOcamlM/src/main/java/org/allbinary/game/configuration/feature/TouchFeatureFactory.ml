(*

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.configuration.feature *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

let instance_cell : Obj.t Lazy.t ref = ref (Lazy.from_val java_null)
let get_instance : 'r. unit -> 'r = fun () -> Obj.magic (try Lazy.force !instance_cell with Lazy.Undefined -> java_null)
let set_instance value' = instance_cell := Lazy.from_val (Obj.repr value')
let () = java_register_static "TouchFeatureFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))
let () = java_register_static "TouchFeatureFactory.set_instance" (fun value' -> set_instance value'; Obj.repr ())
class touchFeatureFactory () =
  object
    val mutable tOUCH_ENABLED : Obj.t = Obj.repr 0
    method tOUCH_ENABLED : 'r. 'r = Obj.magic tOUCH_ENABLED
    method set_tOUCH_ENABLED : 'v. 'v -> unit = fun value' -> tOUCH_ENABLED <- Obj.repr value'
    val mutable sHOW_SCREEN_BUTTONS : Obj.t = Obj.repr 0
    method sHOW_SCREEN_BUTTONS : 'r. 'r = Obj.magic sHOW_SCREEN_BUTTONS
    method set_sHOW_SCREEN_BUTTONS : 'v. 'v -> unit = fun value' -> sHOW_SCREEN_BUTTONS <- Obj.repr value'
    val mutable aUTO_HIDE_SHOW_SCREEN_BUTTONS : Obj.t = Obj.repr 0
    method aUTO_HIDE_SHOW_SCREEN_BUTTONS : 'r. 'r = Obj.magic aUTO_HIDE_SHOW_SCREEN_BUTTONS
    method set_aUTO_HIDE_SHOW_SCREEN_BUTTONS : 'v. 'v -> unit = fun value' -> aUTO_HIDE_SHOW_SCREEN_BUTTONS <- Obj.repr value'
    val mutable hIDE_SCREEN_BUTTONS : Obj.t = Obj.repr 0
    method hIDE_SCREEN_BUTTONS : 'r. 'r = Obj.magic hIDE_SCREEN_BUTTONS
    method set_hIDE_SCREEN_BUTTONS : 'v. 'v -> unit = fun value' -> hIDE_SCREEN_BUTTONS <- Obj.repr value'
    

    initializer
      begin
        tOUCH_ENABLED <- (Obj.repr (Obj.obj (java_new "TouchFeature" (Obj.repr ("Touch Enabled")))));
        sHOW_SCREEN_BUTTONS <- (Obj.repr (Obj.obj (java_new "TouchFeature" (Obj.repr ("Show")))));
        aUTO_HIDE_SHOW_SCREEN_BUTTONS <- (Obj.repr (Obj.obj (java_new "TouchFeature" (Obj.repr ("Auto Hide (One Level)")))));
        hIDE_SCREEN_BUTTONS <- (Obj.repr (Obj.obj (java_new "TouchFeature" (Obj.repr ("Hide")))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "TouchFeatureFactory" (fun arguments -> Obj.repr (new touchFeatureFactory (Obj.obj arguments)))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (get_instance ()))))
        end
let () = java_register_static "TouchFeatureFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))

let () = instance_cell := lazy (Obj.repr ((new touchFeatureFactory ())))


