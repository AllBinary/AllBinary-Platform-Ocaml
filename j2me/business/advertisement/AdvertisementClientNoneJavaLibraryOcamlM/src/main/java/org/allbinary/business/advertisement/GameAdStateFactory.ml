(* Generated Code Do Not Modify *)
(* package org.allbinary.business.advertisement *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.GameAdState *)
(* import org.allbinary.logic.system.SoftwareInformation *)

class gameAdStateFactory () =
  object
    val mutable gameAdStateArray : Obj.t = Obj.repr 0
    method gameAdStateArray : 'r. 'r = Obj.magic gameAdStateArray
    method set_gameAdStateArray : 'v. 'v -> unit = fun value' -> gameAdStateArray <- Obj.repr value'
    val mutable gameAdState : Obj.t = Obj.repr 0
    method gameAdState : 'r. 'r = Obj.magic gameAdState
    method set_gameAdState : 'v. 'v -> unit = fun value' -> gameAdState <- Obj.repr value'
    

    method getCurrentInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic gameAdState)))
        end
    

    method getInstanceForApp : 'any1. 'any1 -> GameAdStateBase.gameAdStateBase = fun (_softwareInformation) ->
        begin
        gameAdState <- Obj.repr ((Obj.magic gameAdStateArray).(0));
        ((Obj.magic gameAdStateArray).(0) :> GameAdStateBase.gameAdStateBase)
        end [@@warning "-20"]
    

    method isEnabled () : bool =
        begin
        false
        end

    initializer
      begin
        gameAdStateArray <- (Obj.repr [| (Obj.obj (java_new "GameAdState" (Obj.repr ((new AppNameLicensingAdConfiguration.appNameLicensingAdConfiguration ()))))) |]);
        gameAdState <- (Obj.repr (Obj.magic gameAdStateArray).(0));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameAdStateFactory" (fun arguments -> Obj.repr (new gameAdStateFactory (Obj.obj arguments)))

let instance = (new gameAdStateFactory ())
let get_instance () = instance
let () = java_register_static "GameAdStateFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GameAdStateFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


