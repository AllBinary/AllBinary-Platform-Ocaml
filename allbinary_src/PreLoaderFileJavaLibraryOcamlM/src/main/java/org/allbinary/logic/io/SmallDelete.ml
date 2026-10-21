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
(* package org.allbinary.logic.io *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.DataOutputStream *)
(* import java.io.FileOutputStream *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.file.AbFileSystem *)
(* import org.allbinary.string.CommonStrings *)

class smallDelete ((fileName_arg : string)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable fileName : string = ""
    method fileName = fileName
    method set_fileName value' = fileName <- value'
    val mutable string : string = ""
    method string = string
    method set_string value' = string <- value'
    
    

    method deleteAtStart ((start : string), (end_ : string)) : bool =
        try
        begin
        (try
            let beginIndex : int ref = ref (0) in ();
            let endIndex : int ref = ref (0) in ();
            beginIndex := (java_string_index_of string (Obj.repr (start)));
            endIndex := (java_string_index_of string (Obj.repr (end_)));
            if (((((!endIndex > !beginIndex) && (!beginIndex >= 0)) && (!endIndex >= 0)) && (!beginIndex < 10)) && (!endIndex < 525)) then begin
                let text : string ref = ref ((String.sub string (!endIndex) (((String.length string)) - (!endIndex)))) in ();
                let idFile : Obj.t ref = ref ((Obj.repr (new FileOutputStream.fileOutputStream (fileName)))) in ();
                let idOutData : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "DataOutputStream" (Obj.repr ((Obj.magic !idFile))))))) in ();
                ignore ((Obj.magic !idOutData)#writeBytes (!text));
                raise (Java_return (Obj.repr (true)))
            end;
            false
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#iDLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "deleteAtStart", e))
            end;
            false
        end)
        end
        with Java_return value -> Obj.obj value
    

    method deleteBetween ((start : string), (end_ : string), (newText : string)) : bool =
        try
        begin
        (try
            let beginIndex : int ref = ref (0) in ();
            let endIndex : int ref = ref (0) in ();
            beginIndex := (java_string_index_of string (Obj.repr (start)));
            endIndex := (java_string_index_of string (Obj.repr (end_)));
            if (((((!endIndex > !beginIndex) && (!beginIndex >= 0)) && (!endIndex >= 0)) && (!beginIndex < 50)) && (!endIndex < 425)) then begin
                let newStart : string ref = ref ((String.sub string (0) ((!beginIndex) - (0)))) in ();
                let text : string ref = ref ((String.sub string ((!endIndex + (String.length end_))) (((String.length string)) - ((!endIndex + (String.length end_)))))) in ();
                let idFile : Obj.t ref = ref ((Obj.repr (new FileOutputStream.fileOutputStream (fileName)))) in ();
                let idOutData : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "DataOutputStream" (Obj.repr ((Obj.magic !idFile))))))) in ();
                ignore ((Obj.magic !idOutData)#writeBytes (((!newStart ^ newText) ^ !text)));
                raise (Java_return (Obj.repr (true)))
            end;
            false
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#iDLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "deleteAtStart", e))
            end;
            false
        end)
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        ();
        fileName <- fileName_arg;
        string <- ((Obj.magic (java_call_static "AbFileSystem.getInstance" (Obj.repr ())))#readAsString (fileName_arg))
      end
  end [@@warning "-20"]
let () = java_register_constructor "SmallDelete" (fun arguments -> Obj.repr (new smallDelete (Obj.obj arguments)))


