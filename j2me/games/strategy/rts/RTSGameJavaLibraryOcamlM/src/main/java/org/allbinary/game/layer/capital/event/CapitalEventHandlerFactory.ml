(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer.capital.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.identification.Group *)

let capitalEventHandlerArray : CapitalEventHandler.capitalEventHandler array = (Obj.magic 0)
let get_capitalEventHandlerArray () = capitalEventHandlerArray
let () = java_register_static "CapitalEventHandlerFactory.get_capitalEventHandlerArray" (fun _ -> Obj.repr (get_capitalEventHandlerArray ()))

let getInstance : 'any1. 'any1 -> CapitalEventHandler.capitalEventHandler = fun (groupInterface) ->
        let groupInterface = Obj.repr groupInterface in
        begin
        (capitalEventHandlerArray.((java_to_int (Obj.repr (((Obj.magic groupInterface)#getGroupId ()))))) :> CapitalEventHandler.capitalEventHandler)
        end [@@warning "-20"]

and removeAll () : unit =
        begin
        for index = ((Array.length capitalEventHandlerArray) - 1) downto 0 do
            ignore (capitalEventHandlerArray.(index)#removeAllListeners ())
        done
        end

let () = java_register_static "CapitalEventHandlerFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
let () = java_register_static "CapitalEventHandlerFactory.removeAll" (fun arguments -> Obj.repr (removeAll (Obj.obj arguments)))
class capitalEventHandlerFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "CapitalEventHandlerFactory" (fun arguments -> Obj.repr (new capitalEventHandlerFactory (Obj.obj arguments)))

let () =
        begin
        capitalEventHandlerArray <- (Array.make (10) (Obj.magic 0));
        for index = ((Array.length capitalEventHandlerArray) - 1) downto 0 do
            capitalEventHandlerArray.(index) <- (new CapitalEventHandler.capitalEventHandler ())
        done
        end


