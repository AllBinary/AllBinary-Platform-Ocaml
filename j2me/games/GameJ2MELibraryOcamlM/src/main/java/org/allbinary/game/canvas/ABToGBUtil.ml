(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.canvas *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Canvas *)
(* import javax.microedition.lcdui.NullCanvas *)
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)

class aBToGBUtil () =
  object
    val mutable abCanvas : Obj.t = Obj.repr 0
    method abCanvas : 'r. 'r = Obj.magic abCanvas
    method set_abCanvas : 'v. 'v -> unit = fun value' -> abCanvas <- Obj.repr value'
    val mutable allBinaryGameLayerManager : AllBinaryGameLayerManager.allBinaryGameLayerManager = (Obj.magic 0)
    method allBinaryGameLayerManager = allBinaryGameLayerManager
    method set_allBinaryGameLayerManager value' = allBinaryGameLayerManager <- value'

    initializer
      begin
        abCanvas <- (Obj.repr (Obj.magic (java_call_static "NullCanvas.get_nULL_CANVAS" (Obj.repr ()))));
        allBinaryGameLayerManager <- ((AllBinaryGameLayerManager.getNullInstance ()) :> AllBinaryGameLayerManager.allBinaryGameLayerManager);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ABToGBUtil" (fun arguments -> Obj.repr (new aBToGBUtil (Obj.obj arguments)))

let instance = (new aBToGBUtil ())
let get_instance () = instance
let () = java_register_static "ABToGBUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ABToGBUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


