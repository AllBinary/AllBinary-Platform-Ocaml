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
(* package org.allbinary.input.automation.actions.script.condition *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt.Color *)
(* import java.awt.Point *)
(* import java.awt.image.BufferedImage *)
(* import java.util.HashMap *)
(* import org.allbinary.data.tree.dom.DomNodeHelper *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.graphics.color.ColorCacheFactory *)
(* import org.allbinary.graphics.color.ColorCacheable *)
(* import org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.util.cache.AutomaticCacheInterface *)
(* import org.allbinary.media.image.analysis.ColorRange *)
(* import org.allbinary.media.image.analysis.ColorRangeInterface *)
(* import org.allbinary.media.image.cache.BufferedImageFrameCacheable *)
(* import org.allbinary.string.CommonSeps *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

let nAME : string = "If Color At"
let get_nAME () = nAME
let () = java_register_static "ColorAtActionScriptCondition.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
class colorAtActionScriptCondition () =
  object (self)
    inherit BasicProfileActionScriptCondition.basicProfileActionScriptCondition (nAME) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable colorAtActionScriptConditionJPanel : ColorAtActionScriptConditionJPanel.colorAtActionScriptConditionJPanel = (Obj.magic 0)
    method colorAtActionScriptConditionJPanel = colorAtActionScriptConditionJPanel
    method set_colorAtActionScriptConditionJPanel value' = colorAtActionScriptConditionJPanel <- value'
    val mutable point : Obj.t = Obj.repr 0
    method point : 'r. 'r = Obj.magic point
    method set_point : 'v. 'v -> unit = fun value' -> point <- Obj.repr value'
    val mutable colorRangeInterface : ColorRangeInterface.colorRangeInterface = (Obj.magic 0)
    method colorRangeInterface = colorRangeInterface
    method set_colorRangeInterface value' = colorRangeInterface <- value'
    
    
    

    method init () : unit =
        begin
        colorAtActionScriptConditionJPanel <- (new ColorAtActionScriptConditionJPanel.colorAtActionScriptConditionJPanel (self))
        end [@@warning "-7"]
    

    method getPoint : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic point)))
        end [@@warning "-7"]
    

    method setPoint : 'any1. 'any1 -> unit = fun (point_arg) ->
        let point_arg = Obj.repr point_arg in
        begin
        point <- Obj.repr ((Obj.magic point_arg))
        end [@@warning "-7-20"]
    

    method showDialog () : unit =
        begin
        ignore ((colorAtActionScriptConditionJPanel#getColorAtActionJDialog ())#setVisible (true))
        end [@@warning "-7"]
    

    method toHashMap () : java_hash_map =
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put ((ColorAtActionScriptConditionData.get_lOCATION_X ()), (string_of_int ((self#getPoint ())#x))));
        ignore (!hashMap#put ((ColorAtActionScriptConditionData.get_lOCATION_Y ()), (string_of_int ((self#getPoint ())#y))));
        ignore (!hashMap#put ((ColorAtActionScriptConditionData.get_mIN_RED ()), (string_of_int (((self#getColorRangeInterface ())#getMinRed ())))));
        ignore (!hashMap#put ((ColorAtActionScriptConditionData.get_mAX_RED ()), (string_of_int (((self#getColorRangeInterface ())#getMaxRed ())))));
        ignore (!hashMap#put ((ColorAtActionScriptConditionData.get_mIN_GREEN ()), (string_of_int (((self#getColorRangeInterface ())#getMinGreen ())))));
        ignore (!hashMap#put ((ColorAtActionScriptConditionData.get_mAX_GREEN ()), (string_of_int (((self#getColorRangeInterface ())#getMaxGreen ())))));
        ignore (!hashMap#put ((ColorAtActionScriptConditionData.get_mIN_BLUE ()), (string_of_int (((self#getColorRangeInterface ())#getMinBlue ())))));
        ignore (!hashMap#put ((ColorAtActionScriptConditionData.get_mAX_BLUE ()), (string_of_int (((self#getColorRangeInterface ())#getMaxBlue ())))));
        ignore ((Obj.magic logUtil)#putF (("HashMap: " ^ (java_string_of (Obj.repr !hashMap))), self, "toHashMap()"));
        (!hashMap :> java_hash_map)
        end [@@warning "-7"]
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr (super#toXmlNode ((Obj.magic document))))) in ();
        ignore ((Obj.magic !node)#appendChild ((ModDomHelper.createNodeWithValueNodes ((Obj.magic document), (ColorAtActionScriptConditionData.get_nAME ()), (self#toHashMap ())))));
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-7-20"]
    

    method shouldProcess ((frame : int)) : bool =
        try
        begin
        let capturedBufferedImageCacheable : BufferedImageFrameCacheable.bufferedImageFrameCacheable ref = ref (((Obj.magic (((Obj.magic (CapturedBufferedImagesCacheSingleton.getInstance ())))#get ((string_of_int (frame))))) :> BufferedImageFrameCacheable.bufferedImageFrameCacheable)) in ();
        let bufferedImage : Obj.t ref = ref ((Obj.repr (!capturedBufferedImageCacheable#getBufferedImage ()))) in ();
        let automaticCacheInterface : AutomaticCacheInterface.automaticCacheInterface ref = ref (((ColorCacheFactory.getInstance ()) :> AutomaticCacheInterface.automaticCacheInterface)) in ();
        let colorInteger : int ref = ref ((string_of_int (((Obj.magic !bufferedImage)#getRGB ((self#getPoint ())#x, (self#getPoint ())#y))))) in ();
        let colorCacheable : ColorCacheable.colorCacheable ref = ref (((Obj.magic (!automaticCacheInterface#get (!colorInteger))) :> ColorCacheable.colorCacheable)) in ();
        let color : Obj.t ref = ref ((Obj.repr (!colorCacheable#getColor ()))) in ();
        if (colorRangeInterface#isInRange ((Obj.magic !color))) then begin
            raise (Java_return (Obj.repr ((super#shouldProcess (frame)))))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method log () : unit =
        begin
        let message : string ref = ref ((java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append ("getPoint(): "))#append ((java_string_of (Obj.repr (self#getPoint ())))))#append ((CommonSeps.getInstance ())#nEW_LINE))#append ((java_string_of (Obj.repr (self#getColorRangeInterface ())))))))) in ();
        ignore ((Obj.magic logUtil)#putF (!message, self, "log"))
        end [@@warning "-7"]
    

    method getColorRangeInterface () : ColorRangeInterface.colorRangeInterface =
        begin
        (colorRangeInterface :> ColorRangeInterface.colorRangeInterface)
        end [@@warning "-7"]
    

    method setColorRangeInterface : 'any1. 'any1 -> unit = fun (colorRangeInterface_arg) ->
        let colorRangeInterface_arg = Obj.repr colorRangeInterface_arg in
        begin
        colorRangeInterface <- (Obj.magic colorRangeInterface_arg)
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        colorAtActionScriptConditionJPanel <- ((Obj.magic 0) :> ColorAtActionScriptConditionJPanel.colorAtActionScriptConditionJPanel);
        ();
        colorRangeInterface <- ((Obj.magic (new ColorRange.colorRange ())) :> ColorRangeInterface.colorRangeInterface);
        ();
        (* super(...) is the inherit clause *) ();
        point <- Obj.repr ((Obj.obj (java_new "Point" (Obj.repr (0, 0)))));
        (self#init ())
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "ColorAtActionScriptCondition" (fun arguments -> Obj.repr (new colorAtActionScriptCondition (Obj.obj arguments)))


