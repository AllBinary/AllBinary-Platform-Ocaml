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
(* import java.util.HashSet *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.string.regex.replace.Replace *)
(* import org.allbinary.string.CommonPhoneStrings *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class uniqueTokens () =
  object (self)
    val mutable specialCharacters : BasicArrayList.basicArrayList = (Obj.magic 0)
    method specialCharacters = specialCharacters
    method set_specialCharacters value' = specialCharacters <- value'
    
    

    method getWhithoutDashesAndSkipNumberOnlyTokens : 'any1 'return. 'any1 -> 'return = fun (stringVector) ->
        let stringVector = Obj.repr stringVector in
        begin
        (try
            let hashSet : Obj.t ref = ref ((Obj.repr (new HashSet.hashSet ()))) in ();
            let index : int ref = ref (0) in ();
            let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
            while (!index < ((Obj.magic stringVector)#size ())) do
                let keywords : string ref = ref ((Obj.magic ((Obj.magic stringVector)#get (!index)))) in ();
                let tokenizer : Tokenizer.tokenizer ref = ref (((new Tokenizer.tokenizer (!commonSeps#cOMMA)) :> Tokenizer.tokenizer)) in ();
                let keywordVector : BasicArrayList.basicArrayList ref = ref (((!tokenizer#getTokensFromString (!keywords, (new BasicArrayListD.basicArrayListD ()))) :> BasicArrayList.basicArrayList)) in ();
                for forIndex = 0 to (!keywordVector#size ()) - 1 do
                    let cleanString : string ref = ref ((Obj.magic (!keywordVector#get (forIndex)))) in ();
                    cleanString := (String.trim !cleanString);
                    if ((java_string_index_of !cleanString (Obj.repr ('-'))) != (-1)) then begin
                        cleanString := ((new Replace.replace ("-", !commonSeps#sPACE))#all (!cleanString))
                    end;
                    ignore ((Obj.magic !hashSet)#add (!cleanString));
                    if ((java_string_index_of !cleanString (Obj.repr (' '))) != (-1)) then begin
                        let spaceTokenizer : Tokenizer.tokenizer ref = ref (((new Tokenizer.tokenizer (!commonSeps#sPACE)) :> Tokenizer.tokenizer)) in ();
                        let subKeywordVector : BasicArrayList.basicArrayList ref = ref (((!spaceTokenizer#getTokensFromString (!cleanString, (new BasicArrayListD.basicArrayListD ()))) :> BasicArrayList.basicArrayList)) in ();
                        for spaceIndex = 0 to (!subKeywordVector#size ()) - 1 do
                            let subCleanString : string ref = ref ((Obj.magic (!subKeywordVector#get (spaceIndex)))) in ();
                            if ((not (self#isSpecialCharacter (!subCleanString))) && (not (self#numberOnly (!subCleanString)))) then begin
                                ignore ((Obj.magic !hashSet)#add (!subCleanString))
                            end
                        done
                    end
                done;
                index := !index + 1
            done;
            (Obj.magic ((Obj.magic !hashSet)))
        with e -> begin
            raise e
        end)
        end [@@warning "-20"]
    

    method numberOnly ((subCleaningString : string)) : bool =
        begin
        (try
            ignore (int_of_string (subCleaningString));
            true
        with e -> begin
            false
        end)
        end
    

    method isSpecialCharacter ((subCleaningString : string)) : bool =
        begin
        for index = 0 to (specialCharacters#size ()) - 1 do
            if ((String.compare subCleaningString ((Obj.magic (specialCharacters#get (index))))) == 0) then begin
                true
            end
        done;
        false
        end

    initializer
      begin
        specialCharacters <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ignore (specialCharacters#add ("!"));
        ignore (specialCharacters#add ("@"));
        ignore (specialCharacters#add ((CommonPhoneStrings.getInstance ())#pOUND));
        ignore (specialCharacters#add ("$"));
        ignore (specialCharacters#add ("%"));
        ignore (specialCharacters#add ("^"));
        ignore (specialCharacters#add ((CommonSeps.getInstance ())#aMPERSAND));
        ignore (specialCharacters#add ((CommonPhoneStrings.getInstance ())#sTAR));
        ignore (specialCharacters#add ("("));
        ignore (specialCharacters#add (")"));
        ignore (specialCharacters#add ("-"));
        ignore (specialCharacters#add ("_"));
        ignore (specialCharacters#add ("+"));
        ignore (specialCharacters#add ("="));
        ignore (specialCharacters#add ("\\"));
        ignore (specialCharacters#add ("|"));
        ignore (specialCharacters#add ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#eXTENSION_SEP));
        ignore (specialCharacters#add (","));
        ignore (specialCharacters#add ("<"));
        ignore (specialCharacters#add (">"));
        ignore (specialCharacters#add ("?"));
        ignore (specialCharacters#add ("/"));
        ignore (specialCharacters#add ("~"));
        ignore (specialCharacters#add ("`"))
      end
  end
let () = java_register_constructor "UniqueTokens" (fun arguments -> Obj.repr (new uniqueTokens (Obj.obj arguments)))


