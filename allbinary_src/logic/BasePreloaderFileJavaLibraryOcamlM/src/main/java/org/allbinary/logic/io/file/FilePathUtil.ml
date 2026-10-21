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
(* package org.allbinary.logic.io.file *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.string.StringValidationUtil *)


let adjust ((path : string)) : string =
        let path = ref path in
        try
        begin
        let abPathData : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ()))))) in ();
        let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
        let filePathData : FilePathData.filePathData ref = ref (((FilePathData.getInstance ()) :> FilePathData.filePathData)) in ();
        if (!stringValidationUtil#isEmpty (!path)) then begin
            raise (Java_return (Obj.repr (!filePathData#pATH_START)))
        end;
        path := (java_string_replace !path (Obj.repr ((Obj.magic !abPathData)#sEPARATORCHAR)) (Obj.repr (!filePathData#sEPARATORCHAR)));
        !path
        end
        with Java_return value -> Obj.obj value

let () = java_register_static "FilePathUtil.adjust" (fun arguments -> Obj.repr (adjust (Obj.obj arguments)))
class filePathUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "FilePathUtil" (fun arguments -> Obj.repr (new filePathUtil (Obj.obj arguments)))


