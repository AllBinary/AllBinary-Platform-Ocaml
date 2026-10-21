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
(* package org.allbinary.input.motion.button *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.CellPosition *)
(* import org.allbinary.graphics.CellPositionFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class basicTouchButtonCellPositionFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable tOP_RIGHT : CellPosition.cellPosition = (Obj.magic 0)
    method tOP_RIGHT = tOP_RIGHT
    method set_tOP_RIGHT value' = tOP_RIGHT <- value'
    val mutable tOP_LEFT : CellPosition.cellPosition = (Obj.magic 0)
    method tOP_LEFT = tOP_LEFT
    method set_tOP_LEFT value' = tOP_LEFT <- value'
    val mutable sECOND_FROM_TOP_LEFT : CellPosition.cellPosition = (Obj.magic 0)
    method sECOND_FROM_TOP_LEFT = sECOND_FROM_TOP_LEFT
    method set_sECOND_FROM_TOP_LEFT value' = sECOND_FROM_TOP_LEFT <- value'
    val mutable sECOND_FROM_TOP_RIGHT : CellPosition.cellPosition = (Obj.magic 0)
    method sECOND_FROM_TOP_RIGHT = sECOND_FROM_TOP_RIGHT
    method set_sECOND_FROM_TOP_RIGHT value' = sECOND_FROM_TOP_RIGHT <- value'
    val mutable tOP_SECOND_FROM_LEFT : CellPosition.cellPosition = (Obj.magic 0)
    method tOP_SECOND_FROM_LEFT = tOP_SECOND_FROM_LEFT
    method set_tOP_SECOND_FROM_LEFT value' = tOP_SECOND_FROM_LEFT <- value'
    val mutable tOP_SECOND_FROM_RIGHT : CellPosition.cellPosition = (Obj.magic 0)
    method tOP_SECOND_FROM_RIGHT = tOP_SECOND_FROM_RIGHT
    method set_tOP_SECOND_FROM_RIGHT value' = tOP_SECOND_FROM_RIGHT <- value'
    val mutable bOTTOM_RIGHT : CellPosition.cellPosition = (Obj.magic 0)
    method bOTTOM_RIGHT = bOTTOM_RIGHT
    method set_bOTTOM_RIGHT value' = bOTTOM_RIGHT <- value'
    val mutable bOTTOM_SECOND_FROM_RIGHT : CellPosition.cellPosition = (Obj.magic 0)
    method bOTTOM_SECOND_FROM_RIGHT = bOTTOM_SECOND_FROM_RIGHT
    method set_bOTTOM_SECOND_FROM_RIGHT value' = bOTTOM_SECOND_FROM_RIGHT <- value'
    val mutable sECOND_FROM_BOTTOM_RIGHT : CellPosition.cellPosition = (Obj.magic 0)
    method sECOND_FROM_BOTTOM_RIGHT = sECOND_FROM_BOTTOM_RIGHT
    method set_sECOND_FROM_BOTTOM_RIGHT value' = sECOND_FROM_BOTTOM_RIGHT <- value'
    val mutable tHIRD_FROM_BOTTOM_RIGHT : CellPosition.cellPosition = (Obj.magic 0)
    method tHIRD_FROM_BOTTOM_RIGHT = tHIRD_FROM_BOTTOM_RIGHT
    method set_tHIRD_FROM_BOTTOM_RIGHT value' = tHIRD_FROM_BOTTOM_RIGHT <- value'
    val mutable fOURTH_FROM_BOTTOM_RIGHT : CellPosition.cellPosition = (Obj.magic 0)
    method fOURTH_FROM_BOTTOM_RIGHT = fOURTH_FROM_BOTTOM_RIGHT
    method set_fOURTH_FROM_BOTTOM_RIGHT value' = fOURTH_FROM_BOTTOM_RIGHT <- value'
    val mutable sECOND_FROM_BOTTOM_SECOND_FROM_RIGHT : CellPosition.cellPosition = (Obj.magic 0)
    method sECOND_FROM_BOTTOM_SECOND_FROM_RIGHT = sECOND_FROM_BOTTOM_SECOND_FROM_RIGHT
    method set_sECOND_FROM_BOTTOM_SECOND_FROM_RIGHT value' = sECOND_FROM_BOTTOM_SECOND_FROM_RIGHT <- value'
    val mutable sECOND_FROM_BOTTOM_THIRD_FROM_RIGHT : CellPosition.cellPosition = (Obj.magic 0)
    method sECOND_FROM_BOTTOM_THIRD_FROM_RIGHT = sECOND_FROM_BOTTOM_THIRD_FROM_RIGHT
    method set_sECOND_FROM_BOTTOM_THIRD_FROM_RIGHT value' = sECOND_FROM_BOTTOM_THIRD_FROM_RIGHT <- value'
    val mutable sECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT : CellPosition.cellPosition = (Obj.magic 0)
    method sECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT = sECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT
    method set_sECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT value' = sECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT <- value'
    val mutable bOTTOM_THIRD_FROM_RIGHT : CellPosition.cellPosition = (Obj.magic 0)
    method bOTTOM_THIRD_FROM_RIGHT = bOTTOM_THIRD_FROM_RIGHT
    method set_bOTTOM_THIRD_FROM_RIGHT value' = bOTTOM_THIRD_FROM_RIGHT <- value'
    val mutable bOTTOM_FOURTH_FROM_RIGHT : CellPosition.cellPosition = (Obj.magic 0)
    method bOTTOM_FOURTH_FROM_RIGHT = bOTTOM_FOURTH_FROM_RIGHT
    method set_bOTTOM_FOURTH_FROM_RIGHT value' = bOTTOM_FOURTH_FROM_RIGHT <- value'
    val mutable bOTTOM_SECOND_FROM_LEFT : CellPosition.cellPosition = (Obj.magic 0)
    method bOTTOM_SECOND_FROM_LEFT = bOTTOM_SECOND_FROM_LEFT
    method set_bOTTOM_SECOND_FROM_LEFT value' = bOTTOM_SECOND_FROM_LEFT <- value'
    val mutable sECOND_FROM_BOTTOM_LEFT : CellPosition.cellPosition = (Obj.magic 0)
    method sECOND_FROM_BOTTOM_LEFT = sECOND_FROM_BOTTOM_LEFT
    method set_sECOND_FROM_BOTTOM_LEFT value' = sECOND_FROM_BOTTOM_LEFT <- value'
    val mutable tHIRD_FROM_BOTTOM_LEFT : CellPosition.cellPosition = (Obj.magic 0)
    method tHIRD_FROM_BOTTOM_LEFT = tHIRD_FROM_BOTTOM_LEFT
    method set_tHIRD_FROM_BOTTOM_LEFT value' = tHIRD_FROM_BOTTOM_LEFT <- value'
    val mutable bOTTOM_LEFT : CellPosition.cellPosition = (Obj.magic 0)
    method bOTTOM_LEFT = bOTTOM_LEFT
    method set_bOTTOM_LEFT value' = bOTTOM_LEFT <- value'
    val mutable sECOND_FROM_BOTTOM_SECOND_FROM_LEFT : CellPosition.cellPosition = (Obj.magic 0)
    method sECOND_FROM_BOTTOM_SECOND_FROM_LEFT = sECOND_FROM_BOTTOM_SECOND_FROM_LEFT
    method set_sECOND_FROM_BOTTOM_SECOND_FROM_LEFT value' = sECOND_FROM_BOTTOM_SECOND_FROM_LEFT <- value'
    

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        sECOND_FROM_TOP_LEFT <- ((Obj.magic 0) :> CellPosition.cellPosition);
        sECOND_FROM_TOP_RIGHT <- ((Obj.magic 0) :> CellPosition.cellPosition);
        tOP_SECOND_FROM_LEFT <- ((Obj.magic 0) :> CellPosition.cellPosition);
        tOP_SECOND_FROM_RIGHT <- ((Obj.magic 0) :> CellPosition.cellPosition);
        ();
        ();
        ();
        tHIRD_FROM_BOTTOM_RIGHT <- ((Obj.magic 0) :> CellPosition.cellPosition);
        fOURTH_FROM_BOTTOM_RIGHT <- ((Obj.magic 0) :> CellPosition.cellPosition);
        ();
        sECOND_FROM_BOTTOM_THIRD_FROM_RIGHT <- ((Obj.magic 0) :> CellPosition.cellPosition);
        sECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT <- ((Obj.magic 0) :> CellPosition.cellPosition);
        bOTTOM_THIRD_FROM_RIGHT <- ((Obj.magic 0) :> CellPosition.cellPosition);
        bOTTOM_FOURTH_FROM_RIGHT <- ((Obj.magic 0) :> CellPosition.cellPosition);
        ();
        ();
        tHIRD_FROM_BOTTOM_LEFT <- ((Obj.magic 0) :> CellPosition.cellPosition);
        ();
        ();
        ();
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#cONSTRUCTOR));
        let touchButtonLocationHelper : TouchButtonLocationHelper.touchButtonLocationHelper ref = ref (((new TouchButtonLocationHelper.touchButtonLocationHelper ()) :> TouchButtonLocationHelper.touchButtonLocationHelper)) in ();
        let cellPositionFactory : CellPositionFactory.cellPositionFactory ref = ref (((CellPositionFactory.getInstance ()) :> CellPositionFactory.cellPositionFactory)) in ();
        ignore (!cellPositionFactory#init ((!touchButtonLocationHelper#getTotalColumns ()), (!touchButtonLocationHelper#getTotalRows ())));
        tOP_LEFT <- (!cellPositionFactory#getInstanceColRow (0, 0));
        tOP_RIGHT <- (!cellPositionFactory#getInstanceColRow (((!touchButtonLocationHelper#getTotalColumns ()) - 1), 0));
        bOTTOM_LEFT <- (!cellPositionFactory#getInstanceColRow (0, ((!touchButtonLocationHelper#getTotalRows ()) - 1)));
        bOTTOM_RIGHT <- (!cellPositionFactory#getInstanceColRow (((!touchButtonLocationHelper#getTotalColumns ()) - 1), ((!touchButtonLocationHelper#getTotalRows ()) - 1)));
        bOTTOM_SECOND_FROM_RIGHT <- (!cellPositionFactory#getInstanceColRow (((!touchButtonLocationHelper#getTotalColumns ()) - 2), ((!touchButtonLocationHelper#getTotalRows ()) - 1)));
        sECOND_FROM_BOTTOM_RIGHT <- (!cellPositionFactory#getInstanceColRow (((!touchButtonLocationHelper#getTotalColumns ()) - 1), ((!touchButtonLocationHelper#getTotalRows ()) - 2)));
        sECOND_FROM_BOTTOM_SECOND_FROM_RIGHT <- (!cellPositionFactory#getInstanceColRow (((!touchButtonLocationHelper#getTotalColumns ()) - 2), ((!touchButtonLocationHelper#getTotalRows ()) - 2)));
        bOTTOM_SECOND_FROM_LEFT <- (!cellPositionFactory#getInstanceColRow (1, ((!touchButtonLocationHelper#getTotalRows ()) - 1)));
        sECOND_FROM_BOTTOM_LEFT <- (!cellPositionFactory#getInstanceColRow (0, ((!touchButtonLocationHelper#getTotalRows ()) - 2)));
        sECOND_FROM_BOTTOM_SECOND_FROM_LEFT <- (!cellPositionFactory#getInstanceColRow (1, ((!touchButtonLocationHelper#getTotalRows ()) - 2)));
        if ((!touchButtonLocationHelper#getTotalRows ()) > 2) then begin
            sECOND_FROM_TOP_LEFT <- (!cellPositionFactory#getInstanceColRow (0, 1));
            sECOND_FROM_TOP_RIGHT <- (!cellPositionFactory#getInstanceColRow (((!touchButtonLocationHelper#getTotalColumns ()) - 1), 1))
        end else begin
            sECOND_FROM_TOP_LEFT <- !cellPositionFactory#nONE;
            sECOND_FROM_TOP_RIGHT <- !cellPositionFactory#nONE
        end;
        if ((!touchButtonLocationHelper#getTotalRows ()) >= 4) then begin
            tHIRD_FROM_BOTTOM_RIGHT <- (!cellPositionFactory#getInstanceColRow (((!touchButtonLocationHelper#getTotalColumns ()) - 1), ((!touchButtonLocationHelper#getTotalRows ()) - 3)));
            fOURTH_FROM_BOTTOM_RIGHT <- (!cellPositionFactory#getInstanceColRow (((!touchButtonLocationHelper#getTotalColumns ()) - 1), ((!touchButtonLocationHelper#getTotalRows ()) - 4)));
            tHIRD_FROM_BOTTOM_LEFT <- (!cellPositionFactory#getInstanceColRow (0, ((!touchButtonLocationHelper#getTotalRows ()) - 3)))
        end else begin
            tHIRD_FROM_BOTTOM_RIGHT <- !cellPositionFactory#nONE;
            fOURTH_FROM_BOTTOM_RIGHT <- !cellPositionFactory#nONE;
            tHIRD_FROM_BOTTOM_LEFT <- !cellPositionFactory#nONE
        end;
        if ((!touchButtonLocationHelper#getTotalColumns ()) >= 4) then begin
            sECOND_FROM_BOTTOM_THIRD_FROM_RIGHT <- (!cellPositionFactory#getInstanceColRow (((!touchButtonLocationHelper#getTotalColumns ()) - 3), ((!touchButtonLocationHelper#getTotalRows ()) - 2)));
            sECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT <- (!cellPositionFactory#getInstanceColRow (((!touchButtonLocationHelper#getTotalColumns ()) - 4), ((!touchButtonLocationHelper#getTotalRows ()) - 2)));
            bOTTOM_THIRD_FROM_RIGHT <- (!cellPositionFactory#getInstanceColRow (((!touchButtonLocationHelper#getTotalColumns ()) - 3), ((!touchButtonLocationHelper#getTotalRows ()) - 1)));
            bOTTOM_FOURTH_FROM_RIGHT <- (!cellPositionFactory#getInstanceColRow (((!touchButtonLocationHelper#getTotalColumns ()) - 4), ((!touchButtonLocationHelper#getTotalRows ()) - 1)));
            tOP_SECOND_FROM_LEFT <- (!cellPositionFactory#getInstanceColRow (1, 0));
            tOP_SECOND_FROM_RIGHT <- (!cellPositionFactory#getInstanceColRow (((!touchButtonLocationHelper#getTotalColumns ()) - 2), 0))
        end else begin
            sECOND_FROM_BOTTOM_THIRD_FROM_RIGHT <- !cellPositionFactory#nONE;
            sECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT <- !cellPositionFactory#nONE;
            bOTTOM_THIRD_FROM_RIGHT <- !cellPositionFactory#nONE;
            bOTTOM_FOURTH_FROM_RIGHT <- !cellPositionFactory#nONE;
            tOP_SECOND_FROM_LEFT <- !cellPositionFactory#nONE;
            tOP_SECOND_FROM_RIGHT <- !cellPositionFactory#nONE
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicTouchButtonCellPositionFactory" (fun arguments -> Obj.repr (new basicTouchButtonCellPositionFactory (Obj.obj arguments)))


