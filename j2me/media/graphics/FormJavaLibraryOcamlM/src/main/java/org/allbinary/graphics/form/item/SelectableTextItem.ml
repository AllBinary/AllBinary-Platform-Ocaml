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
(* package org.allbinary.graphics.form.item *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.color.BasicColor *)

class selectableTextItem ((label : string), (layout : int), (altText : string), (backgroundBasicColor : BasicColor.basicColor), (foregroundBasicColor : BasicColor.basicColor)) =
  object (self)
    inherit ABTextItem.aBTextItem (label, layout, altText, backgroundBasicColor, foregroundBasicColor)
    
    

    method isFocusable () : bool =
        begin
        true
        end [@@warning "-7"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((self#myFontProcessor)#process ((Obj.magic graphics)));
        let stringComponent : Obj.t ref = ref ((Obj.repr (self#getLabelStringComponent ()))) in ();
        if ((Obj.magic !stringComponent) != (Obj.magic 0)) then begin
            ignore ((Obj.magic graphics)#setColor ((((Obj.magic !stringComponent)#getForegroundBasicColor ())#intValue ())))
        end;
        ignore ((Obj.magic graphics)#drawString ((self#getLabel ()), (x + 2), y, 0))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "SelectableTextItem" (fun arguments -> Obj.repr (new selectableTextItem (Obj.obj arguments)))


