(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.media.graphics.geography.map *)

open Allbinary_java [@@warning "-33"]

class geographicMapCellHistoryProgressBase () =
  object
    
    

    method init () : unit =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method isAnyProgress () : bool =
        begin
        raise (Failure ("RuntimeException"))
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "GeographicMapCellHistoryProgressBase" (fun arguments -> Obj.repr (new geographicMapCellHistoryProgressBase (Obj.obj arguments)))

let instance = (new geographicMapCellHistoryProgressBase ())
let get_instance () = instance
let () = java_register_static "GeographicMapCellHistoryProgressBase.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GeographicMapCellHistoryProgressBase.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


