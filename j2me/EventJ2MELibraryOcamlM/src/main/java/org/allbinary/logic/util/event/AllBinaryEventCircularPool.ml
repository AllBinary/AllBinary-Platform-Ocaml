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
(* package org.allbinary.logic.util.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.util.cache.BaseCircularPool *)
(* import org.allbinary.util.CircularIndexUtil *)

class allBinaryEventCircularPool ((max : int)) =
  object
    inherit BaseCircularPool.baseCircularPool ()
    
    

    method initAllBinaryEventCircularPool : 'any1. 'any1 -> unit = fun (allBinaryEventObjectFactoryInterface) ->
        let allBinaryEventObjectFactoryInterface = Obj.repr allBinaryEventObjectFactoryInterface in
        begin
        ignore (circularIndexUtil#setIndex (0));
        let size : int ref = ref ((circularIndexUtil#getSize ())) in ();
        for index = 0 to !size - 1 do
            oBJECT_ARRAY.(index) <- (Obj.magic (((Obj.magic allBinaryEventObjectFactoryInterface)#getInstance ())))
        done
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        oBJECT_ARRAY <- (Array.make (max) (Obj.magic 0));
        circularIndexUtil <- (CircularIndexUtil.createInstance (max))
      end
  end
let () = java_register_constructor "AllBinaryEventCircularPool" (fun arguments -> Obj.repr (new allBinaryEventCircularPool (Obj.obj arguments)))


