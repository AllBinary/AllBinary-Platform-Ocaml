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
(* package org.allbinary.data *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.logic.string.tokens.Tokenizer *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class camelCaseUtil () =
  object
    val mutable commonSeps : CommonSeps.commonSeps = (Obj.magic 0)
    method commonSeps = commonSeps
    method set_commonSeps value' = commonSeps <- value'
    

    method getAsCamelCase : 'any2. string * 'any2 -> string = fun ((string : string), stringBuilder) ->
        let stringBuilder = Obj.repr stringBuilder in
        try
        begin
        if (string = (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr ((StringUtil.getInstance ())#eMPTY_STRING)))
        end;
        let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
        ignore ((Obj.magic stringBuilder)#delete (0, ((Obj.magic stringBuilder)#length ())));
        let list : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let tokenizer : Tokenizer.tokenizer ref = ref (((new Tokenizer.tokenizer (commonSeps#uNDERSCORE)) :> Tokenizer.tokenizer)) in ();
        ignore (!tokenizer#getTokensFromString (string, !list));
        let size : int ref = ref ((!list#size ())) in ();
        let word : string ref = ref ("") in ();
        for i = 0 to !size - 1 do
            word := (Obj.magic (!list#get (i)));
            word := (if (!stringValidationUtil#isEmpty (!word)) then !word else (java_string_of (Obj.repr (((new StringMaker.stringMaker ())#appendchar ((Char.uppercase_ascii ((String.get !word (0))))))#append ((String.lowercase_ascii (String.sub !word (1) (String.length !word - (1)))))))));
            ignore ((Obj.magic stringBuilder)#append (!word))
        done;
        (java_string_of (Obj.repr (Obj.magic stringBuilder)))
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

    initializer
      begin
        commonSeps <- ((CommonSeps.getInstance ()) :> CommonSeps.commonSeps);
        ()
      end
  end
let () = java_register_constructor "CamelCaseUtil" (fun arguments -> Obj.repr (new camelCaseUtil (Obj.obj arguments)))

let instance = (new camelCaseUtil ())
let get_instance () = instance
let () = java_register_static "CamelCaseUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "CamelCaseUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


