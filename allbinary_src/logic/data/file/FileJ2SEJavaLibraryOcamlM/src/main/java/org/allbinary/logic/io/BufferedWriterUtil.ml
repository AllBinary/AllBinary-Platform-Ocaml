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
(* import java.io.BufferedWriter *)
(* import java.io.FileWriter *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.file.AbFileNativeUtil *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStrings *)

class bufferedWriterUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable commonLabels : CommonLabels.commonLabels = (Obj.magic 0)
    method commonLabels = commonLabels
    method set_commonLabels value' = commonLabels <- value'
    val mutable rEMOVING_OLD : string = ""
    method rEMOVING_OLD = rEMOVING_OLD
    method set_rEMOVING_OLD value' = rEMOVING_OLD <- value'
    

    method overwrite ((path : string), (data : string)) : unit =
        begin
        let abFile : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr (path)))))) in ();
        if ((Obj.magic !abFile)#exists ()) then begin
            ignore ((Obj.magic logUtil)#putF ((rEMOVING_OLD ^ path), self, commonStrings#cREATE));
            ignore ((Obj.magic !abFile)#delete ())
        end else begin
            let name : string ref = ref (((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#removeNameFromPath (path))) in ();
            let abFileDirectory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr (!name)))))) in ();
            if ((Obj.magic !abFileDirectory)#exists ()) then begin
                ()
            end else begin
                let stringBuilder : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((!stringBuilder#append (commonStrings#cREATE))#append (commonLabels#cOLON_SEP))#append (!name)))), self, commonStrings#cREATE));
                let result : bool ref = ref (((Obj.magic !abFileDirectory)#mkdirs ())) in ();
                ignore (!stringBuilder#delete (0, (!stringBuilder#length ())));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((!stringBuilder#append (commonLabels#rESULT_))#appendboolean (!result)))), self, commonStrings#cREATE))
            end
        end;
        (self#write ((Obj.magic !abFile), data))
        end
    

    (* Java overload overwrite(AbFile, String) is not converted: OCaml has one method per name *)
    

    method write : 'any1. 'any1 * string -> unit = fun (abFile, (data : string)) ->
        let abFile = Obj.repr abFile in
        begin
        let fileOut : Obj.t ref = ref ((Obj.repr (new BufferedWriter.bufferedWriter ((new FileWriter.fileWriter ((AbFileNativeUtil.get ((Obj.magic abFile))))))))) in ();
        ignore ((Obj.magic !fileOut)#write (data, 0, (String.length data)));
        ignore ((Obj.magic !fileOut)#newLine ());
        ignore ((Obj.magic !fileOut)#flush ())
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        commonLabels <- ((CommonLabels.getInstance ()) :> CommonLabels.commonLabels);
        rEMOVING_OLD <- "Remove old for overwriting: ";
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "BufferedWriterUtil" (fun arguments -> Obj.repr (new bufferedWriterUtil (Obj.obj arguments)))

let instance = (new bufferedWriterUtil ())
let get_instance () = instance
let () = java_register_static "BufferedWriterUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "BufferedWriterUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


