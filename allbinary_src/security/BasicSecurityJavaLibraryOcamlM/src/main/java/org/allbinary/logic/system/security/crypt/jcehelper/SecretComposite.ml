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
(* package org.allbinary.logic.system.security.crypt.jcehelper *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.crypto.Cipher *)
(* import javax.crypto.SecretKey *)
(* import org.allbinary.logic.java.byteutil.ByteUtil *)

class secretComposite (secretKey_arg, cipher_arg, (key_arg : int array)) =
  object (self)
    inherit BaseSecretComposite.baseSecretComposite ()
    val mutable byteUtil : ByteUtil.byteUtil = (Obj.magic 0)
    method byteUtil = byteUtil
    method set_byteUtil value' = byteUtil <- value'
    val mutable cipher : Obj.t = Obj.repr 0
    method cipher : 'r. 'r = Obj.magic cipher
    method set_cipher : 'v. 'v -> unit = fun value' -> cipher <- Obj.repr value'
    val mutable secretKey : Obj.t = Obj.repr 0
    method secretKey : 'r. 'r = Obj.magic secretKey
    method set_secretKey : 'v. 'v -> unit = fun value' -> secretKey <- Obj.repr value'
    val mutable key : int array = (Obj.magic 0)
    method key = key
    method set_key value' = key <- value'
    
    

    method encrypt ((array : int array)) : int array =
        let array = ref array in
        begin
        array := (self#mutilate (!array));
        ignore ((Obj.magic cipher)#init ((Cipher.get_eNCRYPT_MODE ()), (Obj.magic secretKey)));
        ((Obj.magic cipher)#doFinal (!array))
        end [@@warning "-7"]
    

    method decrypt ((array : int array)) : int array =
        begin
        ignore ((Obj.magic cipher)#init ((Cipher.get_dECRYPT_MODE ()), (Obj.magic secretKey)));
        (self#mutilate (((Obj.magic cipher)#doFinal (array))))
        end [@@warning "-7"]
    

    method mutilate ((array : int array)) : int array =
        let array = ref array in
        begin
        for index = 0 to (Array.length key) - 1 do
            let value : int ref = ref (key.(index)) in ();
            if ((!value < 8) && (!value > 0)) then begin
                array := (byteUtil#xorByte (!array, !value))
            end
        done;
        !array
        end [@@warning "-7"]

    initializer
      begin
        byteUtil <- ((ByteUtil.getInstance ()) :> ByteUtil.byteUtil);
        ();
        ();
        ();
        ();
        secretKey <- Obj.repr (secretKey_arg);
        cipher <- Obj.repr (cipher_arg);
        key <- key_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "SecretComposite" (fun arguments -> Obj.repr (new secretComposite (Obj.obj arguments)))


