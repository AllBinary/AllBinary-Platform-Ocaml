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
(* package org.allbinary.game.layer.resources *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.GraphicsFeature *)
(* import org.allbinary.game.configuration.feature.GraphicsFeatureFactory *)
(* import org.allbinary.graphics.displayable.CanvasStrings *)
(* import org.allbinary.graphics.opengles.OpenGLFeatureUtil *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "GameGraphicsResourceUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))
class gameGraphicsResourceUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable sPRITE : string = ""
    method sPRITE = sPRITE
    method set_sPRITE value' = sPRITE <- value'
    val mutable qUARTER : string = ""
    method qUARTER = qUARTER
    method set_qUARTER value' = qUARTER <- value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    
    

    method getString () : string =
        begin
        let graphicsFeatureFactory : GraphicsFeatureFactory.graphicsFeatureFactory ref = ref (((GraphicsFeatureFactory.getInstance ()) :> GraphicsFeatureFactory.graphicsFeatureFactory)) in ();
        let graphicsFeature : GraphicsFeature.graphicsFeature ref = ref ((!graphicsFeatureFactory#nONE :> GraphicsFeature.graphicsFeature)) in ();
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        if (!features#isFeature (!graphicsFeatureFactory#iMAGE_TO_ARRAY_GRAPHICS)) then begin
            graphicsFeature := !graphicsFeatureFactory#iMAGE_TO_ARRAY_GRAPHICS
        end else if (!features#isFeature (!graphicsFeatureFactory#sPRITE_FULL_GRAPHICS)) then begin
            graphicsFeature := !graphicsFeatureFactory#sPRITE_FULL_GRAPHICS
        end else if (!features#isFeature (!graphicsFeatureFactory#sPRITE_QUARTER_ROTATION_GRAPHICS)) then begin
            graphicsFeature := !graphicsFeatureFactory#sPRITE_QUARTER_ROTATION_GRAPHICS
        end else if (!features#isFeature (!graphicsFeatureFactory#iMAGE_ROTATION_ON_THE_FLY)) then begin
            graphicsFeature := !graphicsFeatureFactory#iMAGE_ROTATION_ON_THE_FLY
        end;
        (self#getStringForFeature (!graphicsFeature))
        end
    

    method getStringForFeature : 'any1. 'any1 -> string = fun (graphicsFeature) ->
        let graphicsFeature = Obj.repr graphicsFeature in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let graphicsFeatureFactory : GraphicsFeatureFactory.graphicsFeatureFactory ref = ref (((GraphicsFeatureFactory.getInstance ()) :> GraphicsFeatureFactory.graphicsFeatureFactory)) in ();
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        if (!features#isFeature (!graphicsFeatureFactory#vECTOR_GRAPHICS)) then begin
            ()
        end else if (!features#isFeature (!graphicsFeatureFactory#iMAGE_GRAPHICS)) then begin
            if (((Obj.repr (Obj.magic graphicsFeature)) == (Obj.repr !graphicsFeatureFactory#iMAGE_TO_ARRAY_GRAPHICS)) || ((Obj.repr (Obj.magic graphicsFeature)) == (Obj.repr !graphicsFeatureFactory#iMAGE_ROTATION_ON_THE_FLY))) then begin
                ()
            end else if ((Obj.repr (Obj.magic graphicsFeature)) == (Obj.repr !graphicsFeatureFactory#sPRITE_FULL_GRAPHICS)) then begin
                ignore (!stringBuffer#append (sPRITE))
            end else if ((Obj.repr (Obj.magic graphicsFeature)) == (Obj.repr !graphicsFeatureFactory#sPRITE_QUARTER_ROTATION_GRAPHICS)) then begin
                ignore (!stringBuffer#append (qUARTER));
                ignore (!stringBuffer#append (sPRITE))
            end else begin
                raise (Failure ("None/Unknown Sub Image Resource Type Specified"))
            end
        end else if ((Obj.magic (java_call_static "OpenGLFeatureUtil.getInstance" (Obj.repr ())))#isAnyThreed ()) then begin
            ignore (!stringBuffer#append ((CanvasStrings.getInstance ())#oBJ_MODEL))
        end else begin
            raise (Failure ("None/Unknown Main Image Resource Type Specified"))
        end;
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-20"]
    

    method getName () : string =
        begin
        name
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        sPRITE <- "_sprite";
        qUARTER <- "_quarter";
        name <- (StringUtil.getInstance ())#eMPTY_STRING;
        ();
        (try
            name <- (self#getString ())
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#cONSTRUCTOR, e))
        end)
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameGraphicsResourceUtil" (fun arguments -> Obj.repr (new gameGraphicsResourceUtil (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (new gameGraphicsResourceUtil ())
        end;
        (Obj.magic !instance)
        end
let () = java_register_static "GameGraphicsResourceUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


