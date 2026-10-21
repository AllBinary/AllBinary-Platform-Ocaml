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

class logUtil () =
  object
    
    

    method putP : 'any1. 'any1 -> unit = fun (_log) ->
        begin
        ()
        end [@@warning "-20"]
    

    method putF : 'any2. string * 'any2 * string -> unit = fun ((_specialMessage : string), _anyType, (_functionName : string)) ->
        begin
        ()
        end
    

    (* Java overload putF(String, String, String) is not converted: OCaml has one method per name *)
    

    method put : 'any2 'any4. string * 'any2 * string * 'any4 -> unit = fun ((_specialMessage : string), _anyType, (_functionName : string), _exception_) ->
        begin
        ()
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "LogUtil" (fun arguments -> Obj.repr (new logUtil (Obj.obj arguments)))

let instance = (new logUtil ())
let get_instance () = instance
let () = java_register_static "LogUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "LogUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


