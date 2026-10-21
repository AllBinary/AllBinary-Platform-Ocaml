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
(* package org.allbinary.logic.string.regex.replace *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.J2SEUtil *)
(* import org.allbinary.globals.AppUrlGlobals *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.communication.log.config.type.LogConfigTypes *)

class replace ((hashMap_arg : java_hash_map)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable j2seUtil : J2SEUtil.j2SEUtil = (Obj.magic 0)
    method j2seUtil = j2seUtil
    method set_j2seUtil value' = j2seUtil <- value'
    val mutable rEPLACERS_ : string = ""
    method rEPLACERS_ = rEPLACERS_
    method set_rEPLACERS_ value' = rEPLACERS_ <- value'
    val mutable aLL : string = ""
    method aLL = aLL
    method set_aLL value' = aLL <- value'
    val mutable fOUND_KEY : string = ""
    method fOUND_KEY = fOUND_KEY
    method set_fOUND_KEY value' = fOUND_KEY <- value'
    val mutable hashMap : java_hash_map = (Obj.magic 0)
    method hashMap = hashMap
    method set_hashMap value' = hashMap <- value'
    
    
    
    

    method all ((replace : string)) : string =
        begin
        (self#upTo (replace, (-2147483648)))
        end
    

    method upTo ((replace : string), (total : int)) : string =
        let replace = ref replace in
        begin
        let newStringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let totalNumberOfReplaces : int ref = ref (0) in ();
        let keys : string array ref = ref ((Obj.magic 0)) in ();
        let values : string array ref = ref ((Obj.magic 0)) in ();
        let keyArray : Obj.t array ref = ref ((j2seUtil#getHashMapAsArray (hashMap))) in ();
        let size : int ref = ref ((Array.length !keyArray)) in ();
        for index2 = 0 to !size - 1 do
            keys := (Obj.magic !keyArray.(index2));
            values := (Obj.magic (hashMap#get (!keys)));
            let foundTotal : int ref = ref (0) in ();
            let index : int ref = ref (0) in ();
            let nextKey : string ref = ref ("") in ();
            let end_ : int ref = ref (0) in ();
            let nextSecondKey : string ref = ref ("") in ();
            let begin2 : int ref = ref (0) in ();
            while (!index < (String.length !replace)) do
                let begin_ : int ref = ref ((java_string_index_of_from !replace (Obj.repr (!keys.(0))) (!index))) in ();
                if (!begin_ <> (-1)) then begin
                    foundTotal := !foundTotal + 1;
                    if ((!foundTotal mod 100) = 0) then begin
                        (print_endline (java_string_of (Obj.repr ((fOUND_KEY ^ java_string_of (Obj.repr (!foundTotal)))))))
                    end;
                    nextKey := !keys.(0);
                    end_ := (!begin_ + (String.length !nextKey));
                    ignore (!newStringBuffer#delete (0, (!newStringBuffer#length ())));
                    ignore (!newStringBuffer#append ((String.sub !replace (0) ((!begin_) - (0)))));
                    ignore (!newStringBuffer#append (!values.(0)));
                    index := (!newStringBuffer#length ());
                    ignore (!newStringBuffer#append ((String.sub !replace (!end_) (((String.length !replace)) - (!end_)))));
                    replace := (java_string_of (Obj.repr !newStringBuffer));
                    if ((Array.length !keys) > 1) then begin
                        nextSecondKey := !keys.(1);
                        begin2 := (java_string_index_of_from !replace (Obj.repr (!nextSecondKey)) (!index));
                        if (!begin2 <> (-1)) then begin
                            let end2 : int ref = ref ((!begin2 + (String.length !nextSecondKey))) in ();
                            ignore (!newStringBuffer#delete (0, (!newStringBuffer#length ())));
                            ignore (!newStringBuffer#append ((String.sub !replace (0) ((!begin2) - (0)))));
                            ignore (!newStringBuffer#append (!values.(1)));
                            index := (!newStringBuffer#length ());
                            ignore (!newStringBuffer#append ((String.sub !replace (!end2) (((String.length !replace)) - (!end2)))));
                            replace := (java_string_of (Obj.repr !newStringBuffer))
                        end
                    end;
                    totalNumberOfReplaces := !totalNumberOfReplaces + 1;
                    if ((total <> (-2147483648)) && (!totalNumberOfReplaces >= total)) then begin
                        raise Java_break
                    end
                end else begin
                    raise Java_break
                end
            done
        done;
        if (!totalNumberOfReplaces > 0) then begin
            if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#rEPLACE)) then begin
                ignore ((Obj.magic logUtil)#putF (("Total Number Of Replaces: " ^ java_string_of (Obj.repr (!totalNumberOfReplaces))), self, aLL))
            end
        end;
        !replace
        end
    

    method line ((replace : string)) : string =
        let replace = ref replace in
        begin
        let newStringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let totalNumberOfReplaces : int ref = ref (0) in ();
        let key : string ref = ref ("") in ();
        let value : string ref = ref ("") in ();
        let keyArray : Obj.t array ref = ref ((j2seUtil#getHashMapAsArray (hashMap))) in ();
        let size : int ref = ref ((Array.length !keyArray)) in ();
        for index2 = 0 to !size - 1 do
            key := (Obj.magic !keyArray.(index2));
            value := (Obj.magic (hashMap#get (!key)));
            let index : int ref = ref (0) in ();
            while (!index < (String.length !replace)) do
                ignore (!newStringBuffer#delete (0, (!newStringBuffer#length ())));
                let begin_ : int ref = ref ((java_string_index_of_from !replace (Obj.repr (!key)) (!index))) in ();
                if (!begin_ <> (-1)) then begin
                    (print_endline (java_string_of (Obj.repr (fOUND_KEY))));
                    let end_ : int ref = ref (((java_string_index_of_from !replace (Obj.repr ('\n')) ((!begin_ + (String.length !key)))) + 1)) in ();
                    if (!end_ >= 0) then begin
                        ignore (!newStringBuffer#append ((String.sub !replace (0) ((!begin_) - (0)))));
                        index := (!newStringBuffer#length ());
                        ignore (!newStringBuffer#append ((String.sub !replace (!end_) (((String.length !replace)) - (!end_)))));
                        replace := (java_string_of (Obj.repr !newStringBuffer));
                        totalNumberOfReplaces := !totalNumberOfReplaces + 1
                    end
                end else begin
                    raise Java_break
                end
            done
        done;
        if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#rEPLACE)) then begin
            ignore ((Obj.magic logUtil)#putF (("Total Number Of Replaces: " ^ java_string_of (Obj.repr (!totalNumberOfReplaces))), self, aLL))
        end;
        !replace
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        j2seUtil <- ((J2SEUtil.getInstance ()) :> J2SEUtil.j2SEUtil);
        rEPLACERS_ <- "Replacers: ";
        aLL <- "all";
        fOUND_KEY <- "found key total: ";
        ();
        ();
        hashMap <- hashMap_arg
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "Replace" (fun arguments -> Obj.repr (new replace (Obj.obj arguments)))

let main ((_args : string array)) : unit =
        begin
        (try
            let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
            let appUrlGlobals : AppUrlGlobals.appUrlGlobals ref = ref (((new AppUrlGlobals.appUrlGlobals ()) :> AppUrlGlobals.appUrlGlobals)) in ();
            ignore (!appUrlGlobals#setWebappPath ("G:/mnt/bc/mydev/work/allbinary_src/ToolsJavaLibrary/tools"));
            ignore (URLGLOBALS.init (!appUrlGlobals));
            let testString : string ref = ref ("\"super gun\" big tank \"goodgunriflegun") in ();
            let replace : Obj.t ref = ref ((Obj.repr (new replace ("gun", "abcdefghijklmnopqrstuxwxyzabcdefghijklmnopqrstuxwxyz")))) in ();
            (print_endline (java_string_of (Obj.repr (("Old String: " ^ !testString)))));
            testString := ((Obj.magic !replace)#all (!testString));
            (print_endline (java_string_of (Obj.repr (("New String: " ^ !testString)))));
            let replaceCat : Obj.t ref = ref ((Obj.repr (new replace ("abcdefghijklmnopqrstuxwxyzabcdefghijklmnopqrstuxwxyz", !stringUtil#eMPTY_STRING)))) in ();
            testString := ((Obj.magic !replaceCat)#all (!testString));
            (print_endline (java_string_of (Obj.repr (("New String: " ^ !testString)))))
        with e -> begin
            ()
        end)
        end
let () = java_register_static "Replace.main" (fun arguments -> Obj.repr (main (Obj.obj arguments)))


