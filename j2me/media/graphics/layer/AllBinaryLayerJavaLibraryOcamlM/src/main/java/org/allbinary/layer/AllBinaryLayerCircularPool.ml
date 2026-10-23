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
(* package org.allbinary.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.util.cache.BaseCircularPool *)
(* import org.allbinary.util.CircularIndexUtil *)

class allBinaryLayerCircularPool () =
  object (self)
    inherit BaseCircularPool.baseCircularPool ()
    
    

    method initAllBinaryLayerCircularPool : 'any1. 'any1 * int -> unit = fun (allbinaryLayerFactoryInterface, (total : int)) ->
        let allbinaryLayerFactoryInterface = Obj.repr allbinaryLayerFactoryInterface in
        begin
        (self#set_circularIndexUtil) ((CircularIndexUtil.createInstance (total)));
        (self#set_oBJECT_ARRAY) ((Array.make (total) (Obj.magic 0)));
        for localIndex = 0 to total - 1 do
            (self#oBJECT_ARRAY).(localIndex) <- (Obj.magic (((Obj.magic allbinaryLayerFactoryInterface)#getInstance ())))
        done
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "AllBinaryLayerCircularPool" (fun arguments -> Obj.repr (new allBinaryLayerCircularPool (Obj.obj arguments)))


