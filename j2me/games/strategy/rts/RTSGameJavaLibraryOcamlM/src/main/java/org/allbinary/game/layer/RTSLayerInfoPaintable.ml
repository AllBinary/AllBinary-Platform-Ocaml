(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
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
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.paint.InitUpdatePaintable *)
(* import org.allbinary.graphics.paint.NullInitUpdatePaintable *)

class rTSLayerInfoPaintable () =
  object
    inherit InitUpdatePaintable.initUpdatePaintable ()
    val mutable initUpdatePaintable : InitUpdatePaintable.initUpdatePaintable = (Obj.magic 0)
    method initUpdatePaintable = initUpdatePaintable
    method set_initUpdatePaintable value' = initUpdatePaintable <- value'
    
    

    method update () : unit =
        begin
        ignore (initUpdatePaintable#update ())
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (initUpdatePaintable#paint ((Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method updateRTSLayerInfoInit : 'any1. 'any1 -> unit = fun (hudPaintable) ->
        let hudPaintable = Obj.repr hudPaintable in
        begin
        initUpdatePaintable <- (Obj.magic hudPaintable)
        end [@@warning "-7-20"]
    

    method updateRTSLayerInfoSelection : 'any1. 'any1 -> unit = fun (hudPaintable) ->
        let hudPaintable = Obj.repr hudPaintable in
        begin
        ignore ((Obj.magic hudPaintable)#updateSelectionInfo ());
        initUpdatePaintable <- (Obj.magic hudPaintable)
        end [@@warning "-7-20"]

    initializer
      begin
        initUpdatePaintable <- ((NullInitUpdatePaintable.getInstance ()) :> InitUpdatePaintable.initUpdatePaintable);
        ();
        ()
      end
  end
let () = java_register_constructor "RTSLayerInfoPaintable" (fun arguments -> Obj.repr (new rTSLayerInfoPaintable (Obj.obj arguments)))


