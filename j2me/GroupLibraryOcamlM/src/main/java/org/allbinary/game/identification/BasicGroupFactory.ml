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
(* package org.allbinary.game.identification *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.NullUtil *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "BasicGroupFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))
class basicGroupFactory () =
  object
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable nO_SUCH_GROUP : string = ""
    method nO_SUCH_GROUP = nO_SUCH_GROUP
    method set_nO_SUCH_GROUP value' = nO_SUCH_GROUP <- value'
    val mutable gOOD : Obj.t = Obj.repr 0
    method gOOD : 'r. 'r = Obj.magic gOOD
    method set_gOOD : 'v. 'v -> unit = fun value' -> gOOD <- Obj.repr value'
    val mutable eNEMY : Obj.t = Obj.repr 0
    method eNEMY : 'r. 'r = Obj.magic eNEMY
    method set_eNEMY : 'v. 'v -> unit = fun value' -> eNEMY <- Obj.repr value'
    val mutable eNEMY_ON_LEVEL : Obj.t = Obj.repr 0
    method eNEMY_ON_LEVEL : 'r. 'r = Obj.magic eNEMY_ON_LEVEL
    method set_eNEMY_ON_LEVEL : 'v. 'v -> unit = fun value' -> eNEMY_ON_LEVEL <- Obj.repr value'
    val mutable nONE : Obj.t = Obj.repr 0
    method nONE : 'r. 'r = Obj.magic nONE
    method set_nONE : 'v. 'v -> unit = fun value' -> nONE <- Obj.repr value'
    val mutable gOOD_ARRAY : Obj.t = Obj.repr 0
    method gOOD_ARRAY : 'r. 'r = Obj.magic gOOD_ARRAY
    method set_gOOD_ARRAY : 'v. 'v -> unit = fun value' -> gOOD_ARRAY <- Obj.repr value'
    val mutable eNEMY_ARRAY : Obj.t = Obj.repr 0
    method eNEMY_ARRAY : 'r. 'r = Obj.magic eNEMY_ARRAY
    method set_eNEMY_ARRAY : 'v. 'v -> unit = fun value' -> eNEMY_ARRAY <- Obj.repr value'
    val mutable eNEMY_ON_LEVEL_ARRAY : Obj.t = Obj.repr 0
    method eNEMY_ON_LEVEL_ARRAY : 'r. 'r = Obj.magic eNEMY_ON_LEVEL_ARRAY
    method set_eNEMY_ON_LEVEL_ARRAY : 'v. 'v -> unit = fun value' -> eNEMY_ON_LEVEL_ARRAY <- Obj.repr value'
    val mutable nONE_ARRAY : Obj.t = Obj.repr 0
    method nONE_ARRAY : 'r. 'r = Obj.magic nONE_ARRAY
    method set_nONE_ARRAY : 'v. 'v -> unit = fun value' -> nONE_ARRAY <- Obj.repr value'

    initializer
      begin
        nAME <- "GROUP_NAME";
        nO_SUCH_GROUP <- "No Such Group: ";
        gOOD <- (Obj.repr (Obj.obj (java_new "Group" (Obj.repr ("Good Guys", 0)))));
        eNEMY <- (Obj.repr (Obj.obj (java_new "Group" (Obj.repr ("Bad Guys", 1)))));
        eNEMY_ON_LEVEL <- (Obj.repr (Obj.obj (java_new "Group" (Obj.repr ("Bad Guys on Level", 2)))));
        nONE <- (Obj.repr (Obj.obj (java_new "Group" (Obj.repr ("Not On A Team", 3)))));
        gOOD_ARRAY <- (Obj.repr [| (Obj.magic gOOD) |]);
        eNEMY_ARRAY <- (Obj.repr [| (Obj.magic eNEMY) |]);
        eNEMY_ON_LEVEL_ARRAY <- (Obj.repr [| (Obj.magic eNEMY); (Obj.magic eNEMY_ON_LEVEL) |]);
        nONE_ARRAY <- (Obj.repr [| (Obj.magic nONE) |]);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicGroupFactory" (fun arguments -> Obj.repr (new basicGroupFactory (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (new basicGroupFactory ())
        end;
        (Obj.magic !instance)
        end
let () = java_register_static "BasicGroupFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


