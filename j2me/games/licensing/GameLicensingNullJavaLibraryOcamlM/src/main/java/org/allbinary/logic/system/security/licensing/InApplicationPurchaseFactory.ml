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
(* package org.allbinary.logic.system.security.licensing *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.string.StringUtil *)

class inApplicationPurchaseFactory () =
  object
    
    

    method init : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_anyType, _stateObject) ->
        begin
        ()
        end
    

    method onCreate : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_anyType, _stateObject) ->
        begin
        ()
        end
    

    method onStart () : unit =
        begin
        ()
        end
    

    method onResult : 'any3. int * int * 'any3 -> unit = fun ((_requestCode : int), (_resultCode : int), _data) ->
        begin
        ()
        end
    

    method onSaveState : 'any1. 'any1 -> unit = fun (_anyType) ->
        begin
        ()
        end
    

    method onStop () : unit =
        begin
        ()
        end
    

    method onDestroy () : unit =
        begin
        ()
        end
    

    method purchase : 'any1. 'any1 -> unit = fun (_lockableFeature) ->
        begin
        ()
        end [@@warning "-20"]
    

    method isPurchased : 'any1. 'any1 -> bool = fun (_lockableFeature) ->
        begin
        false
        end [@@warning "-20"]
    

    method add : 'any1. 'any1 -> unit = fun (_lockableFeature) ->
        begin
        ()
        end [@@warning "-20"]
    

    method getUserName () : string =
        begin
        (StringUtil.getInstance ())#eMPTY_STRING
        end
    

    method isEnabled () : bool =
        begin
        false
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "InApplicationPurchaseFactory" (fun arguments -> Obj.repr (new inApplicationPurchaseFactory (Obj.obj arguments)))

let instance = (new inApplicationPurchaseFactory ())
let get_instance () = instance
let () = java_register_static "InApplicationPurchaseFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "InApplicationPurchaseFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


