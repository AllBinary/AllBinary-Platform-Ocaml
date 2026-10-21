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
(* package org.allbinary.logic.communication.log.config *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

let logConfigInfoList : BasicArrayList.basicArrayList ref = ref (((Obj.magic 0) :> BasicArrayList.basicArrayList))
let get_logConfigInfoList () = !logConfigInfoList
let set_logConfigInfoList value' = logConfigInfoList := value'
let () = java_register_static "LoggingInitInfo.get_logConfigInfoList" (fun _ -> Obj.repr (get_logConfigInfoList ()))
let hasRead : bool ref = ref (false)
let get_hasRead () = !hasRead
let set_hasRead value' = hasRead := value'
let () = java_register_static "LoggingInitInfo.get_hasRead" (fun _ -> Obj.repr (get_hasRead ()))

let write () : unit =
        begin
        (try
            hasRead := false
        with e -> begin
            raise e
        end)
        end

and read () : unit =
        begin
        (try
            ()
        with e -> begin
            raise e
        end)
        end

and setHasRead ((value : bool)) : unit =
        begin
        hasRead := value
        end

and set : 'any1. 'any1 -> unit = fun (logConfigInfoList_arg) ->
        let logConfigInfoList_arg = Obj.repr logConfigInfoList_arg in
        begin
        logConfigInfoList := (Obj.magic logConfigInfoList_arg)
        end [@@warning "-20"]

let () = java_register_static "LoggingInitInfo.write" (fun arguments -> Obj.repr (write (Obj.obj arguments)))
let () = java_register_static "LoggingInitInfo.read" (fun arguments -> Obj.repr (read (Obj.obj arguments)))
let () = java_register_static "LoggingInitInfo.setHasRead" (fun arguments -> Obj.repr (setHasRead (Obj.obj arguments)))
let () = java_register_static "LoggingInitInfo.set" (fun arguments -> Obj.repr (set (Obj.obj arguments)))
class loggingInitInfo () =
  object
    
    

    method isValid () : bool =
        begin
        (try
            true
        with e -> begin
            false
        end)
        end
    

    method getNumberOfLogConfigs () : int =
        begin
        (!logConfigInfoList#size ())
        end
    

    method toString () : string =
        begin
        (try
            (Obj.magic 0)
        with e -> begin
            "Error"
        end)
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "LoggingInitInfo" (fun arguments -> Obj.repr (new loggingInitInfo (Obj.obj arguments)))

let rec updateIfNeeded () : unit =
        begin
        if (not !hasRead) then begin
            ignore (read ());
            hasRead := true;
            if (!logConfigInfoList == (Obj.magic 0)) then begin
                raise (Failure ("Read Failed"))
            end
        end
        end

and get () : BasicArrayList.basicArrayList =
        begin
        ignore (updateIfNeeded ());
        (!logConfigInfoList :> BasicArrayList.basicArrayList)
        end

and getTypeList () : BasicArrayList.basicArrayList =
        begin
        ignore (updateIfNeeded ());
        let allLogTypeVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!logConfigInfoList#size ())) in ();
        for index = 0 to !size - 1 do
            let logConfigInfo : Obj.t ref = ref ((Obj.repr (Obj.magic !logConfigInfoList#objectArray.(index)))) in ();
            let logTypeVector : BasicArrayList.basicArrayList ref = ref ((((Obj.magic !logConfigInfo)#getTypeVector ()) :> BasicArrayList.basicArrayList)) in ();
            if ((Obj.magic !logConfigInfo)#isEnabled ()) then begin
                ignore (!allLogTypeVector#addAllList (!logTypeVector))
            end
        done;
        (!allLogTypeVector :> BasicArrayList.basicArrayList)
        end
let () = java_register_static "LoggingInitInfo.updateIfNeeded" (fun arguments -> Obj.repr (updateIfNeeded (Obj.obj arguments)))
let () = java_register_static "LoggingInitInfo.get" (fun arguments -> Obj.repr (get (Obj.obj arguments)))
let () = java_register_static "LoggingInitInfo.getTypeList" (fun arguments -> Obj.repr (getTypeList (Obj.obj arguments)))


