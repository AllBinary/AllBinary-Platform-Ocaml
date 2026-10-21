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
(* package org.allbinary.graphics.j2me.workarea.color *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class colorChooser () =
  object (self)
    inherit JPanel.jPanel ()
    val mutable jColorChooser1 : Obj.t = Obj.repr 0
    method jColorChooser1 : 'r. 'r = Obj.magic jColorChooser1
    method set_jColorChooser1 : 'v. 'v -> unit = fun value' -> jColorChooser1 <- Obj.repr value'
    
    

    method initComponents () : unit =
        begin
        jColorChooser1 <- Obj.repr ((new JColorChooser.jColorChooser ()));
        ignore (self#setLayout ((new BorderLayout.borderLayout ())));
        ignore (self#add ((Obj.magic jColorChooser1), (java.get_awt ())#borderLayout#cENTER))
        end [@@warning "-7"]

    initializer
      begin
        jColorChooser1 <- (Obj.repr (Obj.magic 0));
        ();
        (self#initComponents ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "ColorChooser" (fun arguments -> Obj.repr (new colorChooser (Obj.obj arguments)))


