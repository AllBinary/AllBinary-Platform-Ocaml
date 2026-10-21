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
(* package org.allbinary.animation.text *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.lcdui.CommandListener *)
(* import javax.microedition.lcdui.Font *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.form.item.CustomTextBox *)

class customTextBox2 (cmdListener, (label : string), (text : string), (maxSize : int), (constraints : int), font, (backgroundBasicColor : BasicColor.basicColor), (foregroundBasicColor : BasicColor.basicColor)) =
  object (self)
    inherit CustomTextBox.customTextBox (cmdListener, label, text, maxSize, constraints, font, backgroundBasicColor, foregroundBasicColor)
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ();
        ignore ((self#getTextFieldItem ())#setFocus (true))
      end
  end
let () = java_register_constructor "CustomTextBox2" (fun arguments -> Obj.repr (new customTextBox2 (Obj.obj arguments)))


