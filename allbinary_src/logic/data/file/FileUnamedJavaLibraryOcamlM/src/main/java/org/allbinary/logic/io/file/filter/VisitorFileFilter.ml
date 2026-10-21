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
(* package org.allbinary.logic.io.file.filter *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.File *)
(* import java.io.FileFilter *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.file.FileWrapperUtil *)
(* import org.allbinary.logic.util.visitor.VisitorInterface *)

class visitorFileFilter ((booleanVisitorInterface_arg : VisitorInterface.visitorInterface)) =
  object
    val mutable booleanVisitorInterface : VisitorInterface.visitorInterface = (Obj.magic 0)
    method booleanVisitorInterface = booleanVisitorInterface
    method set_booleanVisitorInterface value' = booleanVisitorInterface <- value'
    
    

    method accept : 'any1. 'any1 -> bool = fun (file) ->
        let file = Obj.repr file in
        begin
        let abFile : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "FileWrapperUtil.wrapFile" (Obj.repr ((Obj.magic file))))))) in ();
        let isFileAcceptable : bool ref = ref ((((Obj.magic (booleanVisitorInterface#visit ((Obj.magic !abFile)))))#booleanValue ())) in ();
        (!isFileAcceptable || ((Obj.magic file)#isDirectory ()))
        end [@@warning "-20"]
    

    (* Java overload accept(AbFile) is not converted: OCaml has one method per name *)

    initializer
      begin
        ();
        ();
        booleanVisitorInterface <- booleanVisitorInterface_arg
      end
  end
let () = java_register_constructor "VisitorFileFilter" (fun arguments -> Obj.repr (new visitorFileFilter (Obj.obj arguments)))


