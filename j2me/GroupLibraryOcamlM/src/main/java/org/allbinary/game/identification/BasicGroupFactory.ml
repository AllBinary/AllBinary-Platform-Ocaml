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
let () = java_register_static "BasicGroupFactory.set_instance" (fun value' -> set_instance (Obj.obj value'); Obj.repr ())
class basicGroupFactory () =
  object
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable nO_SUCH_GROUP : string = ""
    method nO_SUCH_GROUP = nO_SUCH_GROUP
    method set_nO_SUCH_GROUP value' = nO_SUCH_GROUP <- value'
    val mutable gOOD : Group.group = (Obj.magic 0)
    method gOOD = gOOD
    method set_gOOD value' = gOOD <- value'
    val mutable eNEMY : Group.group = (Obj.magic 0)
    method eNEMY = eNEMY
    method set_eNEMY value' = eNEMY <- value'
    val mutable eNEMY_ON_LEVEL : Group.group = (Obj.magic 0)
    method eNEMY_ON_LEVEL = eNEMY_ON_LEVEL
    method set_eNEMY_ON_LEVEL value' = eNEMY_ON_LEVEL <- value'
    val mutable nONE : Group.group = (Obj.magic 0)
    method nONE = nONE
    method set_nONE value' = nONE <- value'
    val mutable gOOD_ARRAY : Group.group array = (Obj.magic 0)
    method gOOD_ARRAY = gOOD_ARRAY
    method set_gOOD_ARRAY value' = gOOD_ARRAY <- value'
    val mutable eNEMY_ARRAY : Group.group array = (Obj.magic 0)
    method eNEMY_ARRAY = eNEMY_ARRAY
    method set_eNEMY_ARRAY value' = eNEMY_ARRAY <- value'
    val mutable eNEMY_ON_LEVEL_ARRAY : Group.group array = (Obj.magic 0)
    method eNEMY_ON_LEVEL_ARRAY = eNEMY_ON_LEVEL_ARRAY
    method set_eNEMY_ON_LEVEL_ARRAY value' = eNEMY_ON_LEVEL_ARRAY <- value'
    val mutable nONE_ARRAY : Group.group array = (Obj.magic 0)
    method nONE_ARRAY = nONE_ARRAY
    method set_nONE_ARRAY value' = nONE_ARRAY <- value'

    initializer
      begin
        nAME <- "GROUP_NAME";
        nO_SUCH_GROUP <- "No Such Group: ";
        gOOD <- ((new Group.group ("Good Guys", 0)) :> Group.group);
        eNEMY <- ((new Group.group ("Bad Guys", 1)) :> Group.group);
        eNEMY_ON_LEVEL <- ((new Group.group ("Bad Guys on Level", 2)) :> Group.group);
        nONE <- ((new Group.group ("Not On A Team", 3)) :> Group.group);
        gOOD_ARRAY <- [| gOOD |];
        eNEMY_ARRAY <- [| eNEMY |];
        eNEMY_ON_LEVEL_ARRAY <- [| eNEMY; eNEMY_ON_LEVEL |];
        nONE_ARRAY <- [| nONE |];
        ()
      end
  end
let () = java_register_constructor "BasicGroupFactory" (fun arguments -> Obj.repr (new basicGroupFactory (Obj.obj arguments)))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (Obj.repr ((new basicGroupFactory ())))
        end;
        (Obj.magic ((Obj.magic !instance)))
        end
let () = java_register_static "BasicGroupFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


