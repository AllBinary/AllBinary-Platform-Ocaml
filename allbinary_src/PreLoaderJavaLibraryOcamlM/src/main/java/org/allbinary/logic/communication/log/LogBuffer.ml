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
(* package org.allbinary.logic.communication.log *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.StdUtil *)

class logBuffer () =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable logEntryVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method logEntryVector = logEntryVector
    method set_logEntryVector value' = logEntryVector <- value'
    
    

    method add : 'any1. 'any1 -> unit = fun (log) ->
        let log = Obj.repr log in
        begin
        ignore (logEntryVector#add ((Obj.magic log)))
        end [@@warning "-20"]
    

    method logAll () : unit =
        begin
        let size : int ref = ref ((logEntryVector#size ())) in ();
        for index = 0 to !size - 1 do
            let log : Log.log ref = ref (((Obj.magic (logEntryVector#get (index))) :> Log.log)) in ();
            ignore ((Obj.magic logUtil)#putL (!log))
        done
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        logEntryVector <- (new BasicArrayListD.basicArrayListD ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "LogBuffer" (fun arguments -> Obj.repr (new logBuffer (Obj.obj arguments)))


