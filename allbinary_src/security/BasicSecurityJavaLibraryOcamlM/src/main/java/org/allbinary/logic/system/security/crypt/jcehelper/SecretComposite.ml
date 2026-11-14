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

class secretComposite ((secretKey_arg : java_secret_key), (cipher_arg : java_cipher), (key_arg : int array)) =
  object (self)
    inherit BaseSecretComposite.baseSecretComposite ()
    val mutable byteUtil : ByteUtil.byteUtil = (Obj.magic 0)
    method byteUtil = byteUtil
    method set_byteUtil value' = byteUtil <- value'
    val mutable cipher : java_cipher = (Obj.magic 0)
    method cipher = cipher
    method set_cipher value' = cipher <- value'
    val mutable secretKey : java_secret_key = (Obj.magic 0)
    method secretKey = secretKey
    method set_secretKey value' = secretKey <- value'
    val mutable key : int array = (Obj.magic 0)
    method key = key
    method set_key value' = key <- value'
    
    

    method encrypt ((array : int array)) : int array =
        let array = ref array in
        begin
        array := (self#mutilate (!array));
        ignore (cipher#init (java_cipher_ENCRYPT_MODE, secretKey));
        (cipher#doFinal (!array))
        end [@@warning "-7"]
    

    method decrypt ((array : int array)) : int array =
        begin
        ignore (cipher#init (java_cipher_DECRYPT_MODE, secretKey));
        (self#mutilate ((cipher#doFinal (array))))
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
        secretKey <- secretKey_arg;
        cipher <- cipher_arg;
        key <- key_arg
      end
  end
let () = java_register_constructor "SecretComposite" (fun arguments -> Obj.repr (new secretComposite (Obj.obj arguments)))


