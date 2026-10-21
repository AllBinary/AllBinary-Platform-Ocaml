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
(* package org.allbinary.image.gui *)

open Allbinary_java [@@warning "-33"]
(* import java.awt.image.BufferedImage *)
(* import javax.swing *)

class imageIconUnique (bufferedImage, (index : int)) =
  object (self)
    inherit ImageIcon.imageIcon (bufferedImage)
    val mutable id : int = 0
    method id = id
    method set_id value' = id <- value'
    
    

    method getId () : int =
        begin
        id
        end [@@warning "-7"]
    

    method setId ((id_arg : int)) : unit =
        begin
        id <- id_arg
        end [@@warning "-7"]

    initializer
      begin
        id <- 0;
        ();
        (* super(...) is the inherit clause *) ();
        (self#setId (index))
      end
  end
let () = java_register_constructor "ImageIconUnique" (fun arguments -> Obj.repr (new imageIconUnique (Obj.obj arguments)))


