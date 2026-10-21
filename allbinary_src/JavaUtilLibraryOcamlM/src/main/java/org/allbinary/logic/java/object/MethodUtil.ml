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
(* package org.allbinary.logic.java.anyType *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.lang.reflect.Method *)
(* import org.allbinary.logic.string.StringMaker *)


let viewAll ((myClass : string), (lineBreak : string)) : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let method_ : Obj.t ref = ref ((Obj.repr (myClass#getMethods ()))) in ();
        ignore (!stringBuffer#append ("Methods: "));
        ignore (!stringBuffer#append (lineBreak));
        for index = 0 to (Array.length (Obj.magic !method_)) - 1 do
            ignore (!stringBuffer#append ((((Obj.magic !method_).(index)#getReturnType ())#getName ())));
            ignore (!stringBuffer#append (" "));
            ignore (!stringBuffer#append (((Obj.magic !method_).(index)#getName ())));
            ignore (!stringBuffer#append ("("));
            ignore (ParamsUtil.viewParams (((Obj.magic !method_).(index)#getParameterTypes ())));
            ignore (!stringBuffer#append (")"));
            ignore (!stringBuffer#append (lineBreak))
        done;
        (java_string_of (Obj.repr !stringBuffer))
        end

let () = java_register_static "MethodUtil.viewAll" (fun arguments -> Obj.repr (viewAll (Obj.obj arguments)))
class methodUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "MethodUtil" (fun arguments -> Obj.repr (new methodUtil (Obj.obj arguments)))


