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
(* package org.allbinary.graphics.form *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]


let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((ScrollSelectionForm.getNullScrollSelectionFormHorizontal ())))
        end

let () = java_register_static "ScrollSelectionFormNoneFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class scrollSelectionFormNoneFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ScrollSelectionFormNoneFactory" (fun arguments -> Obj.repr (new scrollSelectionFormNoneFactory (Obj.obj arguments)))


