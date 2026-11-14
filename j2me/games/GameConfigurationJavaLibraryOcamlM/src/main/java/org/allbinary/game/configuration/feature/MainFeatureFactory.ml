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
let () = java_register_static "MainFeatureFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))
let () = java_register_static "MainFeatureFactory.set_instance" (fun value' -> set_instance value'; Obj.repr ())
class mainFeatureFactory () =
  object
    val mutable fULL_SCREEN : Obj.t = Obj.repr 0
    method fULL_SCREEN : 'r. 'r = Obj.magic fULL_SCREEN
    method set_fULL_SCREEN : 'v. 'v -> unit = fun value' -> fULL_SCREEN <- Obj.repr value'
    val mutable tITLE_BAR : Obj.t = Obj.repr 0
    method tITLE_BAR : 'r. 'r = Obj.magic tITLE_BAR
    method set_tITLE_BAR : 'v. 'v -> unit = fun value' -> tITLE_BAR <- Obj.repr value'
    val mutable sTATIC : Obj.t = Obj.repr 0
    method sTATIC : 'r. 'r = Obj.magic sTATIC
    method set_sTATIC : 'v. 'v -> unit = fun value' -> sTATIC <- Obj.repr value'
    val mutable lOAD_ONDEMAND : Obj.t = Obj.repr 0
    method lOAD_ONDEMAND : 'r. 'r = Obj.magic lOAD_ONDEMAND
    method set_lOAD_ONDEMAND : 'v. 'v -> unit = fun value' -> lOAD_ONDEMAND <- Obj.repr value'
    val mutable lOAD_ALL : Obj.t = Obj.repr 0
    method lOAD_ALL : 'r. 'r = Obj.magic lOAD_ALL
    method set_lOAD_ALL : 'v. 'v -> unit = fun value' -> lOAD_ALL <- Obj.repr value'

    initializer
      begin
        fULL_SCREEN <- (Obj.repr (Obj.obj (java_new "Feature" (Obj.repr ("Full Screen")))));
        tITLE_BAR <- (Obj.repr (Obj.obj (java_new "Feature" (Obj.repr ("Title Bar")))));
        sTATIC <- (Obj.repr (Obj.obj (java_new "Feature" (Obj.repr ("Static Dependent Feature")))));
        lOAD_ONDEMAND <- (Obj.repr (Obj.obj (java_new "Feature" (Obj.repr ("Load OnDemand")))));
        lOAD_ALL <- (Obj.repr (Obj.obj (java_new "Feature" (Obj.repr ("Load All")))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "MainFeatureFactory" (fun arguments -> Obj.repr (new mainFeatureFactory (Obj.obj arguments)))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (get_instance ()))))
        end
let () = java_register_static "MainFeatureFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))

let () = instance_cell := lazy (Obj.repr ((new mainFeatureFactory ())))


