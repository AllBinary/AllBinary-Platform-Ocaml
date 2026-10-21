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
(* package org.allbinary.data.tree.dom *)

open Allbinary_java [@@warning "-33"]

let iD : string = "id"
let get_iD () = iD
let () = java_register_static "DomData.get_iD" (fun _ -> Obj.repr (get_iD ()))
let cHILD : string = "child"
let get_cHILD () = cHILD
let () = java_register_static "DomData.get_cHILD" (fun _ -> Obj.repr (get_cHILD ()))
let nAME : string = "name"
let get_nAME () = nAME
let () = java_register_static "DomData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
let vALUE : string = "value"
let get_vALUE () = vALUE
let () = java_register_static "DomData.get_vALUE" (fun _ -> Obj.repr (get_vALUE ()))
let iNDEX : string = "index"
let get_iNDEX () = iNDEX
let () = java_register_static "DomData.get_iNDEX" (fun _ -> Obj.repr (get_iNDEX ()))
class domData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "DomData" (fun arguments -> Obj.repr (new domData (Obj.obj arguments)))


