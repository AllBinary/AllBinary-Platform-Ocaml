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
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.paint.Paintable *)
(* import org.allbinary.graphics.paint.PaintableInterface *)
(* import org.allbinary.layer.Layer *)

class paintableLayerComposite (paintableArray_arg) =
  object
    inherit Paintable.paintable ()
    val mutable paintableArray : Obj.t = Obj.repr 0
    method paintableArray : 'r. 'r = Obj.magic paintableArray
    method set_paintableArray : 'v. 'v -> unit = fun value' -> paintableArray <- Obj.repr value'
    
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let index : int ref = ref ((Array.length (Obj.magic paintableArray))) in ();
        while ((index := !index - 1; !index) >= 0) do
            ignore ((Obj.magic paintableArray).(!index)#paint ((Obj.magic graphics)))
        done
        end [@@warning "-7-20"]
    

    method paintThreed : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let paintableInterface : PaintableInterface.paintableInterface ref = ref (((Obj.magic 0) :> PaintableInterface.paintableInterface)) in ();
        let index : int ref = ref ((Array.length (Obj.magic paintableArray))) in ();
        while ((index := !index - 1; !index) >= 0) do
            paintableInterface := (Obj.magic (Obj.magic paintableArray).(!index));
            ignore (!paintableInterface#paintThreed ((Obj.magic graphics)))
        done
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        paintableArray <- Obj.repr (paintableArray_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "PaintableLayerComposite" (fun arguments -> Obj.repr (new paintableLayerComposite (Obj.obj arguments)))


