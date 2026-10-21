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
(* package org.allbinary.logic.java.anyType.clazz *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.java.anyType.ConstructorUtil *)
(* import org.allbinary.logic.java.anyType.InterfaceUtil *)
(* import org.allbinary.logic.java.anyType.MethodUtil *)
(* import org.allbinary.logic.string.StringMaker *)


let rec viewAll : 'any1. 'any1 * string -> string = fun (anyType, (lineBreak : string)) ->
        let anyType = Obj.repr anyType in
        try
        begin
        if (anyType != (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr ((viewAll ((java_get_class (Obj.repr anyType)), lineBreak)))))
        end else begin
            "Object Null"
        end
        end
        with Java_return value -> Obj.obj value

(* Java overload viewAll(Class, String) is not converted: OCaml has one method per name *)

let () = java_register_static "ClassUtil.viewAll" (fun arguments -> Obj.repr (viewAll (Obj.obj arguments)))
class classUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ClassUtil" (fun arguments -> Obj.repr (new classUtil (Obj.obj arguments)))


