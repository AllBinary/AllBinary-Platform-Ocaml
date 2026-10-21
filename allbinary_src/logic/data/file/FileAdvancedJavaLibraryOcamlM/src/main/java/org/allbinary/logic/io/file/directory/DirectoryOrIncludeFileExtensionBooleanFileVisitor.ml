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
(* import org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor *)
(* import org.allbinary.util.BasicArrayList *)

class directoryOrIncludeFileExtensionBooleanFileVisitor ((filterStringBasicArrayList : BasicArrayList.basicArrayList)) =
  object
    inherit IncludeFileExtensionsBooleanFileVisitor.includeFileExtensionsBooleanFileVisitor (filterStringBasicArrayList) as super
    val mutable includesString : string = ""
    method includesString = includesString
    method set_includesString value' = includesString <- value'
    
    
    

    method visit : 'any1. 'any1 -> bool = fun (file) ->
        let file = Obj.repr file in
        try
        begin
        if ((Obj.magic file)#isDirectory ()) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        if ((includesString = (Obj.magic 0)) || ((((Obj.magic file)#getAbsolutePath ())#indexOf (includesString)) >= 0)) then begin
            raise (Java_return (Obj.repr ((super#visit ((Obj.magic file))))))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        includesString <- (Obj.magic 0)
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "DirectoryOrIncludeFileExtensionBooleanFileVisitor" (fun arguments -> Obj.repr (new directoryOrIncludeFileExtensionBooleanFileVisitor (Obj.obj arguments)))


