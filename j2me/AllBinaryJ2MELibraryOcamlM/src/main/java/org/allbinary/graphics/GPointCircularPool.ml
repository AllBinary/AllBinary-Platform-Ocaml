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
(* package org.allbinary.graphics *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.util.cache.BaseCircularPool *)
(* import org.allbinary.util.CircularIndexUtil *)

class gPointCircularPool ((size : int)) =
  object
    inherit BaseCircularPool.baseCircularPool ()
    

    initializer
      begin
        ();
        circularIndexUtil <- (CircularIndexUtil.createInstance (size));
        oBJECT_ARRAY <- (Array.make (size) (Obj.magic 0));
        for index = (size - 1) downto 0 do
            oBJECT_ARRAY.(index) <- (Obj.magic ((CustomGPoint.getInstance3 (0, 0))))
        done
      end
  end
let () = java_register_constructor "GPointCircularPool" (fun arguments -> Obj.repr (new gPointCircularPool (Obj.obj arguments)))


