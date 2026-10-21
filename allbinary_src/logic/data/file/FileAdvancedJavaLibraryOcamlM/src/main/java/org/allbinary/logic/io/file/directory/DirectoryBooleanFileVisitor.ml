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
(* package org.allbinary.logic.io.file.directory *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.util.visitor.VisitorInterface *)

class directoryBooleanFileVisitor () =
  object (self)
    
    

    method visit : 'any1. 'any1 -> Obj.t = fun (anyType) ->
        let anyType = Obj.repr anyType in
        begin
        (Obj.repr ((Obj.magic (self#visit ((Obj.magic anyType))))))
        end
    

    (* Java overload visit(AbFile) is not converted: OCaml has one method per name *)

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "DirectoryBooleanFileVisitor" (fun arguments -> Obj.repr (new directoryBooleanFileVisitor (Obj.obj arguments)))


