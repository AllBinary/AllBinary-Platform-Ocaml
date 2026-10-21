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
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.ai.ArtificialIntelligence *)
(* import org.allbinary.ai.ArtificialIntelligenceInterface *)
(* import org.allbinary.game.collision.CollidableBaseBehavior *)
(* import org.allbinary.game.collision.CollidableBaseBehaviorFactory *)
(* import org.allbinary.game.collision.CollidableInterfaceCompositeInterface *)
(* import org.allbinary.game.collision.CollidableNeverCollideBehaviorFactory *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.RectangleFactory *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.view.ViewPositionBase *)
(* import org.allbinary.logic.NullUtil *)

let nULL_COLLIDABLE_COMPOSITE_LAYER : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_nULL_COLLIDABLE_COMPOSITE_LAYER () = !nULL_COLLIDABLE_COMPOSITE_LAYER
let set_nULL_COLLIDABLE_COMPOSITE_LAYER value' = nULL_COLLIDABLE_COMPOSITE_LAYER := value'
let () = java_register_static "CollidableCompositeLayer.get_nULL_COLLIDABLE_COMPOSITE_LAYER" (fun _ -> Obj.repr (get_nULL_COLLIDABLE_COMPOSITE_LAYER ()))
class collidableCompositeLayer ((name : string), layerInfo, (viewPosition : ViewPositionBase.viewPositionBase), collidableBaseBehaviorFactory) =
  object (self)
    inherit AllBinaryGameLayer.allBinaryGameLayer (name, layerInfo, viewPosition) as super
    val mutable collidableInferface : Obj.t = Obj.repr 0
    method collidableInferface : 'r. 'r = Obj.magic collidableInferface
    method set_collidableInferface : 'v. 'v -> unit = fun value' -> collidableInferface <- Obj.repr value'
    
    

    method getArtificialIntelligenceInterface () : ArtificialIntelligenceInterface.artificialIntelligenceInterface =
        begin
        ignore (ForcedLogUtil.log (commonStrings#nOT_IMPLEMENTED, self));
        ((ArtificialIntelligence.getInstance ()) :> ArtificialIntelligenceInterface.artificialIntelligenceInterface)
        end [@@warning "-7"]
    

    method getCollidableInferface : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic collidableInferface)))
        end [@@warning "-7"]
    

    method setCollidableInferface : 'any1. 'any1 -> unit = fun (collidableInferface_arg) ->
        let collidableInferface_arg = Obj.repr collidableInferface_arg in
        begin
        collidableInferface <- Obj.repr ((Obj.magic collidableInferface_arg))
        end [@@warning "-7-20"]
    

    method implmentsCollidableInterface () : bool =
        begin
        true
        end [@@warning "-7"]
    

    method toStringAppend : 'any1. 'any1 -> unit = fun (stringBuffer) ->
        let stringBuffer = Obj.repr stringBuffer in
        begin
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        ignore (super#toStringAppend ((Obj.magic stringBuffer)));
        ignore ((Obj.magic stringBuffer)#append (!commonSeps#nEW_LINE));
        ignore ((Obj.magic stringBuffer)#append ((java_string_of (Obj.repr (self#getCollidableInferface ())))))
        end [@@warning "-7-20"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        (self#toStringAppend (!stringBuffer));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]

    initializer
      begin
        collidableInferface <- (Obj.repr ((CollidableNeverCollideBehaviorFactory.getInstance ())#createBehavior ()));
        ();
        (* super(...) is the inherit clause *) ();
        if ((Obj.repr collidableBaseBehaviorFactory) != (Obj.repr (CollidableNeverCollideBehaviorFactory.getInstance ()))) then begin
            (self#setCollidableInferface ((collidableBaseBehaviorFactory#createBehavior ())))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "CollidableCompositeLayer" (fun arguments -> Obj.repr (new collidableCompositeLayer (Obj.obj arguments)))

let getNullInstance () =
        begin
        if ((Obj.repr !nULL_COLLIDABLE_COMPOSITE_LAYER) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            nULL_COLLIDABLE_COMPOSITE_LAYER := (new collidableCompositeLayer ((StringUtil.getInstance ())#eMPTY_STRING, (RectangleFactory.get_sINGLETON ()), (ViewPositionBase.get_nULL_VIEW_POSITION ()), (CollidableNeverCollideBehaviorFactory.getInstance ())))
        end;
        (Obj.magic !nULL_COLLIDABLE_COMPOSITE_LAYER)
        end
let () = java_register_static "CollidableCompositeLayer.getNullInstance" (fun arguments -> Obj.repr (getNullInstance (Obj.obj arguments)))


