(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2007 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.input.motion.button *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.util.BasicArrayListUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class endLevelTouchButtonsBuilder () =
  object (self)
    inherit TouchButtonsListBuilder.touchButtonsListBuilder ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    

    method getList () : BasicArrayList.basicArrayList =
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#cONSTRUCTOR));
            let list : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            ignore (!list#addAllList (((Obj.obj (java_new "BasicTouchButtonsBuilder" (Obj.repr ())))#getList ())));
            ignore (!list#addAllList (((new BuildingScrollTouchButtonsBuilder.buildingScrollTouchButtonsBuilder ())#getList ())));
            ignore (!list#addAllList (((new UpgradeDowngradeTouchButtonsBuilder.upgradeDowngradeTouchButtonsBuilder ())#getList ())));
            ignore (self#addList (!list));
            (!list :> BasicArrayList.basicArrayList)
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#cONSTRUCTOR, e));
            (((BasicArrayListUtil.getInstance ())#getImmutableInstance ()) :> BasicArrayList.basicArrayList)
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "EndLevelTouchButtonsBuilder" (fun arguments -> Obj.repr (new endLevelTouchButtonsBuilder (Obj.obj arguments)))


