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
(* package org.allbinary.logic.io.file *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.nio.channels.FileChannel *)
(* import java.nio.channels.FileLock *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.AbFileOutputStream *)
(* import org.allbinary.logic.io.StreamUtil *)

class fileLockUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method getAll : 'any1. 'any1 * bool -> BasicArrayList.basicArrayList = fun (vector, (isReturnOnFailure : bool)) ->
        let vector = Obj.repr vector in
        try
        begin
        let fileLockVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref (((Obj.magic vector)#size ())) in ();
        for index = 0 to !size - 1 do
            let file : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic vector)#get (index))))) in ();
            let fileLock : Obj.t ref = ref ((Obj.repr (self#getLock ((Obj.magic !file))))) in ();
            if ((Obj.magic !fileLock) != (Obj.magic 0)) then begin
                ignore ((Obj.magic logUtil)#putF (("File Lock Obtained: " ^ java_string_of (Obj.repr (((Obj.magic !file)#getAbsolutePath ())))), self, "getAll"));
                ignore (!fileLockVector#add ((Obj.magic !fileLock)))
            end else if isReturnOnFailure then begin
                ignore ((Obj.magic logUtil)#putF (("Total Locks Obtained: " ^ java_string_of (Obj.repr ((!fileLockVector#size ())))), self, "getAll"));
                raise (Java_return (Obj.repr (!fileLockVector)))
            end
        done;
        ignore ((Obj.magic logUtil)#putF (("Total Locks Obtained: " ^ java_string_of (Obj.repr ((!fileLockVector#size ())))), self, "getAll"));
        (!fileLockVector :> BasicArrayList.basicArrayList)
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method getAllPossible : 'any1. 'any1 -> BasicArrayList.basicArrayList = fun (vector) ->
        let vector = Obj.repr vector in
        begin
        ((self#getAll ((Obj.magic vector), false)) :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]
    

    method getAllOrNone : 'any1. 'any1 -> BasicArrayList.basicArrayList = fun (vector) ->
        let vector = Obj.repr vector in
        try
        begin
        let fileLockVector : BasicArrayList.basicArrayList ref = ref (((self#getAll ((Obj.magic vector), true)) :> BasicArrayList.basicArrayList)) in ();
        if (((Obj.magic vector)#size ()) <> (!fileLockVector#size ())) then begin
            raise (Java_return (Obj.repr ((new BasicArrayListD.basicArrayListD ()))))
        end else begin
            raise (Java_return (Obj.repr (!fileLockVector)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method getLock : 'any1 'return. 'any1 -> 'return = fun (file) ->
        let file = Obj.repr file in
        begin
        Fun.protect ~finally:(fun () -> 
            ()
        ) (fun () -> (try
            (Obj.magic ((self#getLock ((Obj.magic (java_call_static "AbFileOutputStream.createFromAbFileAppend" (Obj.repr ((Obj.magic file), true))))))))
        with e -> begin
            ignore ((Obj.magic logUtil)#put ("Exception returns null", self, "getLock", e));
            (Obj.magic ((Obj.magic 0)))
        end))
        end [@@warning "-20"]
    

    (* Java overload getLock(AbFileOutputStream) is not converted: OCaml has one method per name *)
    

    (* Java overload getLock(FileChannel) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "FileLockUtil" (fun arguments -> Obj.repr (new fileLockUtil (Obj.obj arguments)))

let instance = (new fileLockUtil ())
let get_instance () = instance
let () = java_register_static "FileLockUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "FileLockUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


