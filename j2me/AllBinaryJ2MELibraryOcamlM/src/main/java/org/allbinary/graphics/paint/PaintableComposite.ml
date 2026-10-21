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
(* package org.allbinary.graphics.paint *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)

class paintableComposite ((paintableArray_arg : PaintableInterface.paintableInterface array)) =
  object
    inherit Paintable.paintable ()
    val mutable paintableArray : PaintableInterface.paintableInterface array = (Obj.magic 0)
    method paintableArray = paintableArray
    method set_paintableArray value' = paintableArray <- value'
    
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        for index = ((Array.length paintableArray) - 1) downto 0 do
            ignore (paintableArray.(index)#paint ((Obj.magic graphics)))
        done
        end [@@warning "-7-20"]
    

    method paintThreed : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        for index = ((Array.length paintableArray) - 1) downto 0 do
            ignore (paintableArray.(index)#paintThreed ((Obj.magic graphics)))
        done
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        paintableArray <- paintableArray_arg
      end
  end
let () = java_register_constructor "PaintableComposite" (fun arguments -> Obj.repr (new paintableComposite (Obj.obj arguments)))


