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
(* package org.allbinary.logic.io.file.visitor *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.util.BasicArrayList *)

class includeFileExtensionsBooleanFileVisitor ((filterStringBasicArrayList : BasicArrayList.basicArrayList)) =
  object (self)
    inherit BooleanFileVisitor.booleanFileVisitor (filterStringBasicArrayList) as super
    
    

    method visit : 'any1. 'any1 -> bool = fun (file) ->
        let file = Obj.repr file in
        try
        begin
        if (((self#getFilterStringBasicArrayList ())#size ()) = 0) then begin
            raise (Java_return (Obj.repr (false)))
        end;
        (super#visit ((Obj.magic file)))
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    (* Java overload visit(AbFile, String) is not converted: OCaml has one method per name *)

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "IncludeFileExtensionsBooleanFileVisitor" (fun arguments -> Obj.repr (new includeFileExtensionsBooleanFileVisitor (Obj.obj arguments)))


