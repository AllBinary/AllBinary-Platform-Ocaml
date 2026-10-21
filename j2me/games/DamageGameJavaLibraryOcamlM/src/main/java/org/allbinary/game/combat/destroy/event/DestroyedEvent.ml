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
(* package org.allbinary.game.combat.destroy.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas *)
(* import org.allbinary.game.displayable.canvas.NullGameCanvas *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)

class destroyedEvent ((combatGameCanvas : AllBinaryGameCanvas.allBinaryGameCanvas)) =
  object (self)
    inherit AllBinaryEventObject.allBinaryEventObject ((DestroyedEventHandler.getInstance ()))
    val mutable allBinaryGameCanvas : AllBinaryGameCanvas.allBinaryGameCanvas = (Obj.magic 0)
    method allBinaryGameCanvas = allBinaryGameCanvas
    method set_allBinaryGameCanvas value' = allBinaryGameCanvas <- value'
    val mutable allBinaryLayerInterface : AllBinaryLayer.allBinaryLayer = (Obj.magic 0)
    method allBinaryLayerInterface = allBinaryLayerInterface
    method set_allBinaryLayerInterface value' = allBinaryLayerInterface <- value'
    
    

    method getAllBinaryGameCanvas () : AllBinaryGameCanvas.allBinaryGameCanvas =
        begin
        (allBinaryGameCanvas :> AllBinaryGameCanvas.allBinaryGameCanvas)
        end [@@warning "-7"]
    

    method getLayerInterface () : AllBinaryLayer.allBinaryLayer =
        begin
        (allBinaryLayerInterface :> AllBinaryLayer.allBinaryLayer)
        end [@@warning "-7"]
    

    method setAllBinaryGameCanvas : 'any1. 'any1 -> unit = fun (allBinaryGameCanvas_arg) ->
        let allBinaryGameCanvas_arg = Obj.repr allBinaryGameCanvas_arg in
        begin
        allBinaryGameCanvas <- (Obj.magic allBinaryGameCanvas_arg)
        end [@@warning "-7-20"]
    

    method setLayerInterfaceForCircularStaticPool : 'any1. 'any1 -> unit = fun (allBinaryLayerInterface_arg) ->
        let allBinaryLayerInterface_arg = Obj.repr allBinaryLayerInterface_arg in
        begin
        allBinaryLayerInterface <- (Obj.magic allBinaryLayerInterface_arg)
        end [@@warning "-7-20"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("DestroyedEvent: \n"));
        ignore (!stringBuffer#append ("AllBinaryLayerInterface: "));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr allBinaryLayerInterface))));
        ignore (!stringBuffer#append ("\nAllBinaryGameCanvas: "));
        ignore (!stringBuffer#append (((StringUtil.getInstance ())#toString ((self#getAllBinaryGameCanvas ())))));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]

    initializer
      begin
        allBinaryGameCanvas <- ((NullGameCanvas.getInstance ()) :> AllBinaryGameCanvas.allBinaryGameCanvas);
        allBinaryLayerInterface <- ((AllBinaryLayer.get_nULL_ALLBINARY_LAYER ()) :> AllBinaryLayer.allBinaryLayer);
        ();
        (* super(...) is the inherit clause *) ();
        (self#setAllBinaryGameCanvas (combatGameCanvas))
      end
  end
let () = java_register_constructor "DestroyedEvent" (fun arguments -> Obj.repr (new destroyedEvent (Obj.obj arguments)))


