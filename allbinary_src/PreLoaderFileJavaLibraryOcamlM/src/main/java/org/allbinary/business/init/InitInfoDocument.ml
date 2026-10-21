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
(* package org.allbinary.business.init *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.w3c.dom.Document *)

class initInfoDocument () =
  object
    val mutable initInfoDocument : Obj.t = Obj.repr 0
    method initInfoDocument : 'r. 'r = Obj.magic initInfoDocument
    method set_initInfoDocument : 'v. 'v -> unit = fun value' -> initInfoDocument <- Obj.repr value'
    

    initializer
      begin
        initInfoDocument <- (Obj.repr (Obj.magic 0));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "InitInfoDocument" (fun arguments -> Obj.repr (new initInfoDocument (Obj.obj arguments)))


