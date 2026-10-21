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
(* import org.allbinary.game.input.resource.TouchButtonDowngradeResource *)
(* import org.allbinary.game.input.resource.TouchButtonUpgradeResource *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.util.BasicArrayListUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.graphics.CellPositionFactory *)

class upgradeDowngradeTouchButtonsBuilder () =
  object (self)
    inherit BaseTouchInput.baseTouchInput ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    

    method getList () : BasicArrayList.basicArrayList =
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#cONSTRUCTOR));
            let list : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            let touchButtonLocationHelper : TouchButtonLocationHelper.touchButtonLocationHelper ref = ref (((new TouchButtonLocationHelper.touchButtonLocationHelper ()) :> TouchButtonLocationHelper.touchButtonLocationHelper)) in ();
            let cellPositionFactory : CellPositionFactory.cellPositionFactory ref = ref (((CellPositionFactory.getInstance ()) :> CellPositionFactory.cellPositionFactory)) in ();
            let basicTouchButtonCellPositionFactory : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "BasicTouchButtonCellPositionFactory" (Obj.repr ()))))) in ();
            if (((Obj.repr (Obj.magic !basicTouchButtonCellPositionFactory)#sECOND_FROM_TOP_LEFT) != (Obj.repr !cellPositionFactory#nONE)) && ((Obj.repr (Obj.magic !basicTouchButtonCellPositionFactory)#sECOND_FROM_TOP_RIGHT) != (Obj.repr !cellPositionFactory#nONE))) then begin
                let commonButtons : CommonButtons.commonButtons ref = ref (((CommonButtons.getInstance ()) :> CommonButtons.commonButtons)) in ();
                let uP : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "TouchButton.createButton" (Obj.repr ((Obj.magic (java_call_static "BasicTouchInputFactory.getInstance" (Obj.repr ())))#sPECIAL_BUTTON_TWO, (TouchButtonUpgradeResource.getInstance ()), !commonButtons#nORMAL_BUTTON, (Obj.magic !basicTouchButtonCellPositionFactory)#sECOND_FROM_TOP_LEFT, (!touchButtonLocationHelper#getColumnsRemainderHalf ()), (!touchButtonLocationHelper#getRowsRemainderHalf ()))))))) in ();
                let dOWN : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "TouchButton.createButton" (Obj.repr ((Obj.magic (java_call_static "BasicTouchInputFactory.getInstance" (Obj.repr ())))#sPECIAL_BUTTON_ONE, (TouchButtonDowngradeResource.getInstance ()), !commonButtons#nORMAL_BUTTON, (Obj.magic !basicTouchButtonCellPositionFactory)#sECOND_FROM_TOP_RIGHT, (!touchButtonLocationHelper#getColumnsRemainderHalf ()), (!touchButtonLocationHelper#getRowsRemainderHalf ()))))))) in ();
                ignore (!list#add ((Obj.magic !uP)));
                ignore (!list#add ((Obj.magic !dOWN)))
            end;
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
let () = java_register_constructor "UpgradeDowngradeTouchButtonsBuilder" (fun arguments -> Obj.repr (new upgradeDowngradeTouchButtonsBuilder (Obj.obj arguments)))


