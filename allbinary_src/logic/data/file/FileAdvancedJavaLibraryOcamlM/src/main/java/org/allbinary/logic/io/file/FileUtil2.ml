(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.io.file *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.AbFileInputStream *)
(* import org.allbinary.logic.io.StreamUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)

class fileUtil2 () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable streamUtil : StreamUtil.streamUtil = (Obj.magic 0)
    method streamUtil = streamUtil
    method set_streamUtil value' = streamUtil <- value'
    
    

    method loadFileAsList : 'any1. 'any1 * int * int array -> BasicArrayList.basicArrayList = fun (file, (max : int), (byteArray1 : int array)) ->
        let file = Obj.repr file in
        begin
        let inputStream : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        (try
            inputStream := Obj.repr ((Obj.obj (java_new "AbFileInputStream" (Obj.repr ((Obj.magic file))))))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#aDD, e))
        end);
        (((SimpleFileUtil.getInstance ())#loadFileAsList ((Obj.magic !inputStream), max, byteArray1)) :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        streamUtil <- ((StreamUtil.getInstance ()) :> StreamUtil.streamUtil);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "FileUtil2" (fun arguments -> Obj.repr (new fileUtil2 (Obj.obj arguments)))

let instance = (new fileUtil2 ())
let get_instance () = instance
let () = java_register_static "FileUtil2.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "FileUtil2.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


