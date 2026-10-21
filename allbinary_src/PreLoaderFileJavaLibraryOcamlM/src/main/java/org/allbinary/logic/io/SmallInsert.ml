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

class smallInsert ((fileName_arg : string)) =
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
    
    

    method atBeginning ((text : string)) : bool =
        begin
        (try
            let idFile : Obj.t ref = ref ((Obj.repr (new FileOutputStream.fileOutputStream (fileName)))) in ();
            let idOutData : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "DataOutputStream" (Obj.repr ((Obj.magic !idFile))))))) in ();
            ignore ((Obj.magic !idOutData)#writeBytes ((text ^ string)));
            true
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#iDLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "insertAtBeginning", e))
            end;
            false
        end)
        end
    

    method after ((text : string), (after : string)) : bool =
        try
        begin
        (try
            let index : int ref = ref ((java_string_index_of string (Obj.repr (after)))) in ();
            if (!index < 0) then begin
                (print_endline (java_string_of (Obj.repr (((("No such start: " ^ after) ^ " in: ") ^ string)))));
                raise (Java_return (Obj.repr (false)))
            end;
            index := (!index + (String.length after));
            let start : string ref = ref ((String.sub string (0) ((!index) - (0)))) in ();
            let end_ : string ref = ref ((String.sub string ((!index + 1)) (((String.length string)) - ((!index + 1))))) in ();
            let idFile : Obj.t ref = ref ((Obj.repr (new FileOutputStream.fileOutputStream (fileName)))) in ();
            let idOutData : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "DataOutputStream" (Obj.repr ((Obj.magic !idFile))))))) in ();
            ignore ((Obj.magic !idOutData)#writeBytes (((!start ^ text) ^ !end_)));
            ignore ((Obj.magic !idOutData)#close ());
            ignore ((Obj.magic !idFile)#close ());
            true
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#iDLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "after", e))
            end;
            false
        end)
        end
        with Java_return value -> Obj.obj value
    

    method atEnd ((text : string)) : bool =
        begin
        (try
            let idFile : Obj.t ref = ref ((Obj.repr (new FileOutputStream.fileOutputStream (fileName)))) in ();
            let idOutData : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "DataOutputStream" (Obj.repr ((Obj.magic !idFile))))))) in ();
            ignore ((Obj.magic !idOutData)#writeBytes ((string ^ text)));
            true
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#iDLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "insertAtEnd", e))
            end;
            false
        end)
        end

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
let () = java_register_constructor "SmallInsert" (fun arguments -> Obj.repr (new smallInsert (Obj.obj arguments)))


