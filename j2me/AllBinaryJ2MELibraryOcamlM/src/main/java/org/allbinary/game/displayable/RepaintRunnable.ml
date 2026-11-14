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
(* package org.allbinary.game.displayable *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Canvas *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.thread.ARunnable *)

class repaintRunnable (canvas_arg) =
  object (self)
    inherit ARunnable.aRunnable ()
    val mutable canvas : Obj.t = Obj.repr 0
    method canvas : 'r. 'r = Obj.magic canvas
    method set_canvas : 'v. 'v -> unit = fun value' -> canvas <- Obj.repr value'
    
    

    method run () : unit =
        begin
        (try
            ignore ((Obj.magic canvas)#repaint ());
            ignore ((DisplayInfoSingleton.getInstance ())#process ())
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
            ignore ((Obj.magic !logUtil)#put (!commonStrings#eXCEPTION, (Obj.magic self), !commonStrings#rUN, e))
        end)
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        canvas <- Obj.repr (canvas_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "RepaintRunnable" (fun arguments -> Obj.repr (new repaintRunnable (Obj.obj arguments)))


