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
(* package org.allbinary.input.automation.module.game *)

open Allbinary_java [@@warning "-33"]
(* import java.awt.image.BufferedImage *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)

class magicGameObject (bufferedImage, (minX : int), (maxX : int), (y : int)) =
  object
    inherit MeteredGameObject.meteredGameObject (bufferedImage, minX, maxX, y) as super
    val mutable mP_LABEL : string = ""
    method mP_LABEL = mP_LABEL
    method set_mP_LABEL value' = mP_LABEL <- value'
    
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((CommonSeps.getInstance ())#nEW_LINE));
        ignore (!stringBuffer#append (mP_LABEL));
        ignore (!stringBuffer#append ((super#toString ())));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]

    initializer
      begin
        mP_LABEL <- "MP:";
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "MagicGameObject" (fun arguments -> Obj.repr (new magicGameObject (Obj.obj arguments)))


