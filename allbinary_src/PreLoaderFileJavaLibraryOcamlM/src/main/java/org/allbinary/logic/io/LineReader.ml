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
(* import java.io.DataInputStream *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)

class lineReader ((fileName_arg : string)) =
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
    val mutable index : int = 0
    method index = index
    method set_index value' = index <- value'
    val mutable idFile : Obj.t = Obj.repr 0
    method idFile : 'r. 'r = Obj.magic idFile
    method set_idFile : 'v. 'v -> unit = fun value' -> idFile <- Obj.repr value'
    val mutable idData : Obj.t = Obj.repr 0
    method idData : 'r. 'r = Obj.magic idData
    method set_idData : 'v. 'v -> unit = fun value' -> idData <- Obj.repr value'
    
    

    method hasNext () : bool =
        try
        begin
        (try
            let nextIndex : int ref = ref ((java_string_index_of_from string (Obj.repr ((CommonSeps.getInstance ())#nEW_LINE)) (index))) in ();
            if (!nextIndex = (-1)) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            true
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "hasNext", e));
            begin
                ()
            end;
            false
        end)
        end
        with Java_return value -> Obj.obj value
    

    method next () : string =
        begin
        (try
            let nextIndex : int ref = ref ((java_string_index_of_from string (Obj.repr ((CommonSeps.getInstance ())#nEW_LINE)) (index))) in ();
            if (!nextIndex = (-1)) then begin
                raise (Failure ("next() should have been called first"))
            end;
            let temp : string ref = ref ((String.sub string (index) ((!nextIndex) - (index)))) in ();
            index <- (!nextIndex + 1);
            !temp
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "next", e));
            begin
                ()
            end;
            raise e
        end)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        fileName <- "";
        string <- "";
        index <- 0;
        idFile <- (Obj.repr (Obj.magic 0));
        idData <- (Obj.repr (Obj.magic 0));
        ();
        (try
            let bytes : int array ref = ref ((Array.make (100000) 0)) in ();
            fileName <- fileName_arg;
            idFile <- Obj.repr ((Obj.obj (java_new "AbFileInputStream" (Obj.repr (fileName_arg)))));
            ignore ((Obj.magic idFile)#read (!bytes));
            string <- (Obj.obj (java_new "String" (Obj.repr (!bytes))))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (("File: " ^ fileName_arg), self, "LineReader", e));
            begin
                ()
            end
        end)
      end
  end [@@warning "-20"]
let () = java_register_constructor "LineReader" (fun arguments -> Obj.repr (new lineReader (Obj.obj arguments)))


