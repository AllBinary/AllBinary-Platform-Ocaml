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
(* package org.allbinary.canvas *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.graphics.opengles.OpenGLFeatureFactory *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.system.Memory *)

class specialMessageUtil () =
  object
    

    method get () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((Memory.getInfo ())));
        ignore (!stringBuffer#append ((CommonSeps.getInstance ())#sPACE));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (Obj.magic (java_call_static "GameStatisticsFactory.getInstance" (Obj.repr ())))))));
        ignore (!stringBuffer#append ((CommonSeps.getInstance ())#sPACE));
        ignore (!stringBuffer#append (" Option: "));
        if ((Features.getInstance ())#isDefault ((OpenGLFeatureFactory.getInstance ())#oPENGL_AUTO_SELECT)) then begin
            ignore (!stringBuffer#append (((OpenGLFeatureFactory.getInstance ())#oPENGL_AUTO_SELECT#getName ())))
        end else begin
            ignore (!stringBuffer#append (((OpenGLFeatureFactory.getInstance ())#oPENGL_MINIMUM#getName ())))
        end;
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "SpecialMessageUtil" (fun arguments -> Obj.repr (new specialMessageUtil (Obj.obj arguments)))

let sINGLETON = (new specialMessageUtil ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "SpecialMessageUtil.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "SpecialMessageUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


