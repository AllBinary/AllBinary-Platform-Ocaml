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
(* package org.allbinary.logic.visual.transform.info *)

open Allbinary_java [@@warning "-33"]
(* import java.util.HashMap *)
(* import javax.servlet.jsp.PageContext *)

class transformInfoHttpStoreFactory () =
  object
    
    

    (* Java overload getInstance(HashMap, HashMap, PageContext) is not converted: OCaml has one method per name *)

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "TransformInfoHttpStoreFactory" (fun arguments -> Obj.repr (new transformInfoHttpStoreFactory (Obj.obj arguments)))

let instance = (new transformInfoHttpStoreFactory ())
let get_instance () = instance
let () = java_register_static "TransformInfoHttpStoreFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TransformInfoHttpStoreFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


