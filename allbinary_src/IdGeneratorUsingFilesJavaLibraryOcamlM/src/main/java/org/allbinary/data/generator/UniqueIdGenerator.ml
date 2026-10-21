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
(* package org.allbinary.data.generator *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.IOException *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.AbDataInputStream *)
(* import org.allbinary.logic.io.AbDataOutputStream *)
(* import org.allbinary.logic.io.AbFileInputStream *)
(* import org.allbinary.logic.io.AbFileOutputStream *)
(* import org.allbinary.logic.io.DataOutputStreamFactory *)
(* import org.allbinary.logic.io.StreamUtil *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.string.CommonStrings *)

let eXT : string = ".unq"
let get_eXT () = eXT
let () = java_register_static "UniqueIdGenerator.get_eXT" (fun _ -> Obj.repr (get_eXT ()))
class uniqueIdGenerator () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable newFile : Obj.t = Obj.repr 0
    method newFile : 'r. 'r = Obj.magic newFile
    method set_newFile : 'v. 'v -> unit = fun value' -> newFile <- Obj.repr value'
    val mutable id : int = 0
    method id = id
    method set_id value' = id <- value'
    
    

    method initialize ((value : int)) : unit =
        begin
        (try
            ignore ((Obj.magic newFile)#createNewFile ());
            let idData : AbDataOutputStream.abDataOutputStream ref = ref ((((Obj.magic (java_call_static "DataOutputStreamFactory.getInstance" (Obj.repr ())))#getInstanceForAbFile ((Obj.magic newFile))) :> AbDataOutputStream.abDataOutputStream)) in ();
            ignore (!idData#writeLong (value))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#iDLOGGING)) then begin
                let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
                ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, "initialize", e))
            end
        end)
        end
    

    method setFile ((filePathName : string), (_name : string)) : unit =
        begin
        newFile <- Obj.repr ((Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr (filePathName)))))
        end
    

    method getNext () : string =
        begin
        let idData : AbDataInputStream.abDataInputStream ref = ref (((Obj.magic 0) :> AbDataInputStream.abDataInputStream)) in ();
        let idOutData : AbDataOutputStream.abDataOutputStream ref = ref (((Obj.magic 0) :> AbDataOutputStream.abDataOutputStream)) in ();
        Fun.protect ~finally:(fun () -> 
            ignore ((StreamUtil.getInstance ())#close (!idData));
            ignore ((StreamUtil.getInstance ())#close (!idOutData))
        ) (fun () -> (try
            let idFile : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "AbFileInputStream" (Obj.repr ((Obj.magic newFile))))))) in ();
            idData := (new AbDataInputStream.abDataInputStream ((Obj.magic !idFile)));
            id <- (!idData#readLong ());
            let idOutFile : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFileOutputStream.createFromAbFile" (Obj.repr ((Obj.magic newFile))))))) in ();
            idOutData := (new AbDataOutputStream.abDataOutputStream ((Obj.magic !idOutFile)));
            ignore (!idOutData#writeLong ((id + 1)));
            let idLong : int ref = ref ((Obj.obj (java_new "Long" (Obj.repr (id))))) in ();
            (string_of_int !idLong)
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#iDLOGGING)) then begin
                let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
                ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, "getNext", e))
            end;
            "Error"
        end))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        newFile <- (Obj.repr (Obj.magic 0));
        id <- 0;
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "UniqueIdGenerator" (fun arguments -> Obj.repr (new uniqueIdGenerator (Obj.obj arguments)))


