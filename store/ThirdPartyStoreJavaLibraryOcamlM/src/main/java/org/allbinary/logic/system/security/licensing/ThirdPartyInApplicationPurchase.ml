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

class thirdPartyInApplicationPurchase () =
  object
    

    method isPurchased : 'any1. 'any1 -> bool = fun (_lockableFeature) ->
        begin
        false
        end [@@warning "-20"]
    

    method onCreate : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_anyType, _stateObject) ->
        begin
        ()
        end
    

    method onDestroy () : unit =
        begin
        ()
        end
    

    method onStart () : unit =
        begin
        ()
        end
    

    method onActivityResult : 'any3. int * int * 'any3 -> unit = fun ((_requestCode : int), (_resultCode : int), _dataObject) ->
        begin
        ()
        end
    

    method onSaveInstanceState : 'any1. 'any1 -> unit = fun (_anyType) ->
        begin
        ()
        end
    

    method onStop () : unit =
        begin
        ()
        end
    

    method requestPurchase : 'any1. 'any1 -> unit = fun (_lockableFeature) ->
        begin
        ()
        end [@@warning "-20"]
    

    method requestReceipts () : unit =
        begin
        ()
        end
    

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
    

    method requestProducts () : unit =
        begin
        ()
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ThirdPartyInApplicationPurchase" (fun arguments -> Obj.repr (new thirdPartyInApplicationPurchase (Obj.obj arguments)))


