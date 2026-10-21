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
(* package org.allbinary.logic.java.characters *)

open Allbinary_java [@@warning "-33"]

class characterSetData () =
  object
    val mutable uS_ASCII : string = ""
    method uS_ASCII = uS_ASCII
    method set_uS_ASCII value' = uS_ASCII <- value'
    val mutable iSO_8859_1 : string = ""
    method iSO_8859_1 = iSO_8859_1
    method set_iSO_8859_1 value' = iSO_8859_1 <- value'
    val mutable uTF_8 : string = ""
    method uTF_8 = uTF_8
    method set_uTF_8 value' = uTF_8 <- value'
    val mutable uTF_16 : string = ""
    method uTF_16 = uTF_16
    method set_uTF_16 value' = uTF_16 <- value'
    val mutable uTF_16BE : string = ""
    method uTF_16BE = uTF_16BE
    method set_uTF_16BE value' = uTF_16BE <- value'
    val mutable uTF_16LE : string = ""
    method uTF_16LE = uTF_16LE
    method set_uTF_16LE value' = uTF_16LE <- value'
    

    initializer
      begin
        uS_ASCII <- "US-ASCII";
        iSO_8859_1 <- "ISO-8859-1";
        uTF_8 <- "UTF-8";
        uTF_16 <- "UTF-16";
        uTF_16BE <- "UTF-16BE";
        uTF_16LE <- "UTF-16LE";
        ();
        ()
      end
  end
let () = java_register_constructor "CharacterSetData" (fun arguments -> Obj.repr (new characterSetData (Obj.obj arguments)))

let instance = (new characterSetData ())
let get_instance () = instance
let () = java_register_static "CharacterSetData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "CharacterSetData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


