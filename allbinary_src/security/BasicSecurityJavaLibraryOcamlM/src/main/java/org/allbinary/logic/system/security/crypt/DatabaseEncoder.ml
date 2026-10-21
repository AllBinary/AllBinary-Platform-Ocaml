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
(* package org.allbinary.logic.system.security.crypt *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.tokens.Tokenizer *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)


let encode ((value : int array)) : string =
        begin
        (try
            let array : int array ref = ref (value) in ();
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            for index = 0 to (Array.length !array) - 1 do
                ignore (!stringBuffer#append ((java_string_of (Obj.repr !array.(index)))));
                if (index < ((Array.length !array) - 1)) then begin
                    ignore (!stringBuffer#append ((CommonSeps.getInstance ())#sPACE))
                end
            done;
            (java_string_of (Obj.repr !stringBuffer))
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (!commonStrings#eXCEPTION, "DatabaseEncoder", "decode", e))));
            (StringUtil.getInstance ())#eMPTY_STRING
        end)
        end

and decode ((value : string)) : int array =
        begin
        (try
            let tokenizer : Tokenizer.tokenizer ref = ref (((new Tokenizer.tokenizer ((CommonSeps.getInstance ())#sPACE)) :> Tokenizer.tokenizer)) in ();
            let vector : BasicArrayList.basicArrayList ref = ref (((!tokenizer#getTokensFromString (value, (new BasicArrayListD.basicArrayListD ()))) :> BasicArrayList.basicArrayList)) in ();
            let byteVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            let size : int ref = ref ((!vector#size ())) in ();
            let byteOfData : string ref = ref ("") in ();
            for index = 0 to !size - 1 do
                byteOfData := (Obj.magic !vector#objectArray.(index));
                ignore (!byteVector#add (!byteOfData))
            done;
            let decode : int array ref = ref ((Array.make ((!byteVector#size ())) 0)) in ();
            let decodeIndex : int ref = ref (0) in ();
            let aByte : int ref = ref ((Obj.magic 0)) in ();
            for index = 0 to !size - 1 do
                aByte := (Obj.magic !byteVector#objectArray.(index));
                !decode.(!decodeIndex) <- !aByte;
                decodeIndex := !decodeIndex + 1
            done;
            !decode
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore (Obj.magic (java_call_static "PreLogUtil.putSE" (Obj.repr (!commonStrings#eXCEPTION, "DatabaseEncoder", "decode", e))));
            (NullUtil.getInstance ())#nULL_BYTE_ARRAY
        end)
        end

let () = java_register_static "DatabaseEncoder.encode" (fun arguments -> Obj.repr (encode (Obj.obj arguments)))
let () = java_register_static "DatabaseEncoder.decode" (fun arguments -> Obj.repr (decode (Obj.obj arguments)))
class databaseEncoder () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "DatabaseEncoder" (fun arguments -> Obj.repr (new databaseEncoder (Obj.obj arguments)))


