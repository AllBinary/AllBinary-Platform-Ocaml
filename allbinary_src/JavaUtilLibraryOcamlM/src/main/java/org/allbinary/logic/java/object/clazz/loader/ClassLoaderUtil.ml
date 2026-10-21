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
(* package org.allbinary.logic.java.anyType.clazz.loader *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]


let getName : 'any1. 'any1 -> string = fun (anyType) ->
        let anyType = Obj.repr anyType in
        try
        begin
        let classLoader : Obj.t ref = ref ((Obj.repr ((java_get_class (Obj.repr anyType))#getClassLoader ()))) in ();
        if ((Obj.magic !classLoader) != (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr (("ClassLoader: " ^ (java_get_class (Obj.repr (Obj.magic !classLoader)))))))
        end;
        raise (Failure ("Unable to get ClassLoader"))
        end
        with Java_return value -> Obj.obj value

let () = java_register_static "ClassLoaderUtil.getName" (fun arguments -> Obj.repr (getName (Obj.obj arguments)))
class classLoaderUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ClassLoaderUtil" (fun arguments -> Obj.repr (new classLoaderUtil (Obj.obj arguments)))


