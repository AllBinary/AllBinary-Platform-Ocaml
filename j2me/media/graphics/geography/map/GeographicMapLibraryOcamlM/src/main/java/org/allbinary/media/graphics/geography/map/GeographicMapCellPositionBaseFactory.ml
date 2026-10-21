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
(* package org.allbinary.media.graphics.geography.map *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class geographicMapCellPositionBaseFactory () =
  object
    

    method getInstance : 'any1 'return. 'any1 -> 'return = fun (geographicMapInterface) ->
        let geographicMapInterface = Obj.repr geographicMapInterface in
        begin
        (Obj.magic ((Obj.obj (java_new "BasicGeographicMapCellPositionFactory" (Obj.repr ((Obj.magic geographicMapInterface)))))))
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "GeographicMapCellPositionBaseFactory" (fun arguments -> Obj.repr (new geographicMapCellPositionBaseFactory (Obj.obj arguments)))


