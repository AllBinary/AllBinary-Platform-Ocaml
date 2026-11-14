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
(* package org.allbinary.logic.system.security.crypt.jcehelper *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.security.spec.KeySpec *)
(* import javax.crypto.spec.DESKeySpec *)
(* import javax.crypto.spec.DESedeKeySpec *)
(* import org.allbinary.TsUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.string.CommonStrings *)

class keySpecFactory () =
  object (self)
    val mutable dES : string = ""
    method dES = dES
    method set_dES value' = dES <- value'
    val mutable dESEDE : string = ""
    method dESEDE = dESEDE
    method set_dESEDE value' = dESEDE <- value'
    val mutable bLOWFISH : string = ""
    method bLOWFISH = bLOWFISH
    method set_bLOWFISH value' = bLOWFISH <- value'
    
    

    method getInstance : 'return. string * int array -> 'return = fun ((algorithm : string), (keyData : int array)) ->
        try
        begin
        (try
            let tsUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ()))))) in ();
            if (((Obj.magic !tsUtil)#compareTo (algorithm, dES)) = 0) then begin
                raise (Java_return (Obj.repr ((new java_des_key_spec (keyData)))))
            end else if (((Obj.magic !tsUtil)#compareTo (algorithm, dESEDE)) = 0) then begin
                raise (Java_return (Obj.repr ((new java_des_key_spec (keyData)))))
            end else begin
                raise (Failure ("RuntimeException"))
            end
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (!commonStrings#eXCEPTION, (Obj.magic self), !commonStrings#gET_INSTANCE, e))));
            raise (Failure ("RuntimeException"))
        end)
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        dES <- "DES";
        dESEDE <- "DESede";
        bLOWFISH <- "Blowfish";
        ();
        ()
      end
  end
let () = java_register_constructor "KeySpecFactory" (fun arguments -> Obj.repr (new keySpecFactory (Obj.obj arguments)))

let instance = (new keySpecFactory ())
let get_instance () = instance
let () = java_register_static "KeySpecFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (instance))
        end
let () = java_register_static "KeySpecFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


