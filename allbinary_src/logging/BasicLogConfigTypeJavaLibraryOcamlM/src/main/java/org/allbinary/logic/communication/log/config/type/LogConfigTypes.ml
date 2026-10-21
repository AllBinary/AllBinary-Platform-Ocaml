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
(* package org.allbinary.logic.communication.log.config.type *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

let lOGGING : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList))
let get_lOGGING () = !lOGGING
let set_lOGGING value' = lOGGING := value'
let () = java_register_static "LogConfigTypes.get_lOGGING" (fun _ -> Obj.repr (get_lOGGING ()))
class logConfigTypes () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "LogConfigTypes" (fun arguments -> Obj.repr (new logConfigTypes (Obj.obj arguments)))


