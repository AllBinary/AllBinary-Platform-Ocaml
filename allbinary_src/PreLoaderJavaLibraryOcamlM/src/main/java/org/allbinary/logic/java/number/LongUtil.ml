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
(* package org.allbinary.logic.java.number *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonPhoneStrings *)


let fillIn ((end_ : string)) : string =
        begin
        let frameStringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        if ((!frameStringBuffer#length ()) < (LongData.get_mAX_LONG_LENGTH ())) then begin
            let commonPhoneStrings : CommonPhoneStrings.commonPhoneStrings ref = ref (((CommonPhoneStrings.getInstance ()) :> CommonPhoneStrings.commonPhoneStrings)) in ();
            let size : int ref = ref (((LongData.get_mAX_LONG_LENGTH ()) - (!frameStringBuffer#length ()))) in ();
            for _index = 0 to !size - 1 do
                ignore (!frameStringBuffer#append (!commonPhoneStrings#zERO))
            done
        end;
        ignore (!frameStringBuffer#append (end_));
        (java_string_of (Obj.repr !frameStringBuffer))
        end

let () = java_register_static "LongUtil.fillIn" (fun arguments -> Obj.repr (fillIn (Obj.obj arguments)))
class longUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "LongUtil" (fun arguments -> Obj.repr (new longUtil (Obj.obj arguments)))


