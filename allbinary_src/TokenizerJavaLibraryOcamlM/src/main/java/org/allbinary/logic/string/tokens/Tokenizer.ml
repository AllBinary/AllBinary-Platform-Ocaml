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
(* package org.allbinary.logic.string.tokens *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.TsUtil *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class tokenizer ((sep_arg : string)) =
  object
    val mutable sep : string = ""
    method sep = sep
    method set_sep value' = sep <- value'
    val mutable endSep : string = ""
    method endSep = endSep
    method set_endSep value' = endSep <- value'
    
    

    method setSep ((sep_arg : string)) : unit =
        begin
        sep <- sep_arg
        end
    

    method setEndSep ((endSep_arg : string)) : unit =
        begin
        endSep <- endSep_arg
        end
    

    method getInsideSep ((string : string)) : BasicArrayList.basicArrayList =
        begin
        let tokenList : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let index : int ref = ref (0) in ();
        let size : int ref = ref ((String.length string)) in ();
        while (!index < !size) do
            index := (java_string_index_of_from string (Obj.repr (sep)) (!index));
            if (!index <> (-1)) then begin
                let end_ : int ref = ref ((java_string_index_of_from string (Obj.repr (endSep)) ((!index + (String.length sep))))) in ();
                if (!end_ <> (-1)) then begin
                    ignore (!tokenList#add ((String.sub string ((!index + (String.length sep))) (((!end_ - (((String.length endSep) - 1)))) - ((!index + (String.length sep)))))));
                    index := (!end_ + (String.length endSep))
                end else begin
                    ()
                end
            end else begin
                raise Java_break
            end
        done;
        (!tokenList :> BasicArrayList.basicArrayList)
        end
    

    method getTokensFromString : 'any2. string * 'any2 -> BasicArrayList.basicArrayList = fun ((string : string), tokenVector) ->
        let tokenVector = Obj.repr tokenVector in
        begin
        let index : int ref = ref (0) in ();
        let end_ : int ref = ref (0) in ();
        while (!index < (String.length string)) do
            end_ := (java_string_index_of_from string (Obj.repr (sep)) (!index));
            if (!end_ <> (-1)) then begin
                ignore ((Obj.magic tokenVector)#add ((String.sub string (!index) ((!end_) - (!index)))));
                index := (!end_ + (String.length sep))
            end else begin
                ignore ((Obj.magic tokenVector)#add ((String.sub string (!index) (((String.length string)) - (!index)))));
                raise Java_break
            end
        done;
        ((Obj.magic tokenVector) :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]
    

    method getTokens : 'any1 'return. 'any1 -> 'return = fun (stringVector) ->
        let stringVector = Obj.repr stringVector in
        begin
        let tokenHashtable : Obj.t ref = ref ((Obj.repr ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()))) in ();
        let string : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING) in ();
        let end_ : int ref = ref (0) in ();
        let size : int ref = ref (((Obj.magic stringVector)#size ())) in ();
        for index = 0 to !size - 1 do
            string := (Obj.magic (Obj.magic stringVector)#objectArray.(index));
            end_ := (java_string_index_of !string (Obj.repr (sep)));
            if (!end_ >= 0) then begin
                ignore ((Obj.magic !tokenHashtable)#put ((String.sub !string (0) ((!end_) - (0))), (String.sub !string ((!end_ + 1)) (((String.length !string)) - ((!end_ + 1))))))
            end
        done;
        (Obj.magic ((Obj.magic !tokenHashtable)))
        end [@@warning "-20"]

    initializer
      begin
        ();
        endSep <- (StringUtil.getInstance ())#eMPTY_STRING;
        ();
        if ((sep_arg = (Obj.magic 0)) || (((Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ())))#compareTo (sep_arg, (StringUtil.getInstance ())#eMPTY_STRING)) == 0)) then begin
            raise (Failure ("Sep provided is not valid"))
        end;
        sep <- sep_arg
      end
  end
let () = java_register_constructor "Tokenizer" (fun arguments -> Obj.repr (new tokenizer (Obj.obj arguments)))


