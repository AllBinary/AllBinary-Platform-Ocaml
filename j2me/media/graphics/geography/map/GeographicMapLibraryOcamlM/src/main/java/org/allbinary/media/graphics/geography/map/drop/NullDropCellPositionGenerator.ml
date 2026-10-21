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
(* package org.allbinary.media.graphics.geography.map.drop *)

open Allbinary_java [@@warning "-33"]

class nullDropCellPositionGenerator () =
  object
    inherit BaseDropCellPositionGenerator.baseDropCellPositionGenerator ()

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullDropCellPositionGenerator" (fun arguments -> Obj.repr (new nullDropCellPositionGenerator (Obj.obj arguments)))

let instance = (new nullDropCellPositionGenerator ())
let get_instance () = instance
let () = java_register_static "NullDropCellPositionGenerator.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "NullDropCellPositionGenerator.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


