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
(* package org.allbinary.game.layer.pickup *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class countedPickedUpLayerInterfaceFactoryPool () =
  object
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    
    

    method getList () : BasicArrayList.basicArrayList =
        begin
        (list :> BasicArrayList.basicArrayList)
        end

    initializer
      begin
        ();
        ();
        list <- (new BasicArrayListD.basicArrayListD ())
      end
  end
let () = java_register_constructor "CountedPickedUpLayerInterfaceFactoryPool" (fun arguments -> Obj.repr (new countedPickedUpLayerInterfaceFactoryPool (Obj.obj arguments)))

let sINGLETON = ref ((new countedPickedUpLayerInterfaceFactoryPool ()))
let get_sINGLETON () = !sINGLETON
let set_sINGLETON value' = sINGLETON := value'
let () = java_register_static "CountedPickedUpLayerInterfaceFactoryPool.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        !sINGLETON
        end

and init () : unit =
        begin
        sINGLETON := (new countedPickedUpLayerInterfaceFactoryPool ())
        end
let () = java_register_static "CountedPickedUpLayerInterfaceFactoryPool.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
let () = java_register_static "CountedPickedUpLayerInterfaceFactoryPool.init" (fun arguments -> Obj.repr (init (Obj.obj arguments)))


