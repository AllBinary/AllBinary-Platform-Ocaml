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
(* import java.security.Provider *)
(* import java.security.Security *)
(* import java.security.spec.KeySpec *)
(* import javax.crypto.Cipher *)
(* import javax.crypto.SecretKey *)
(* import javax.crypto.SecretKeyFactory *)
(* import org.allbinary.init.crypt.jcehelper.CryptInterface *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.string.CommonStrings *)

class abBasicCrypt ((algorithm_arg : string), (key_arg : string)) =
  object (self)
    val mutable cipher : java_cipher = (Obj.magic 0)
    method cipher = cipher
    method set_cipher value' = cipher <- value'
    val mutable secretKey : java_secret_key = (Obj.magic 0)
    method secretKey = secretKey
    method set_secretKey value' = secretKey <- value'
    val mutable algorithm : string = ""
    method algorithm = algorithm
    method set_algorithm value' = algorithm <- value'
    val mutable key : int array = (Obj.magic 0)
    method key = key
    method set_key value' = key <- value'
    
    

    method init () : unit =
        begin
        (try
            let sunJce : java_provider ref = ref (((new SunJCE.sunJCE ()) :> java_provider)) in ();
            ignore (java_security_add_provider (!sunJce));
            let keySpec : Obj.t ref = ref ((Obj.repr ((KeySpecFactory.getInstance ())#getInstance (algorithm, key)))) in ();
            let keyFactory : java_secret_key_factory ref = ref (((java_secret_key_factory_get_instance (algorithm)) :> java_secret_key_factory)) in ();
            secretKey <- (!keyFactory#generateSecret ((Obj.magic !keySpec)));
            cipher <- (java_cipher_get_instance (algorithm))
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr ("init Failed", (Obj.magic self), !commonStrings#iNIT, e))))
        end)
        end
    

    method encrypt ((array : int array)) : int array =
        begin
        (try
            ignore (cipher#init (java_cipher_ENCRYPT_MODE, secretKey));
            let ivArray : int array ref = ref ((secretKey#getEncoded ())) in ();
            let encrypted : int array ref = ref ((cipher#doFinal (array))) in ();
            let result : int array ref = ref ((Array.make (((Array.length !ivArray) + (Array.length !encrypted))) 0)) in ();
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (("ivArray Length: " ^ java_string_of (Obj.repr ((Array.length !ivArray)))), (Obj.magic self), "encrypt"))));
            for index = 0 to (Array.length !ivArray) - 1 do
                !result.(index) <- !ivArray.(index)
            done;
            for index = 0 to (Array.length !encrypted) - 1 do
                !result.((index + (Array.length !ivArray))) <- !encrypted.(index)
            done;
            !result
        with e -> begin
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr ("Encrypt Failed", (Obj.magic self), "encrypt", e))));
            (Obj.magic 0)
        end)
        end
    

    method decrypt ((array : int array)) : int array =
        begin
        (try
            ignore (cipher#init (java_cipher_DECRYPT_MODE, secretKey));
            let ivArray : int array ref = ref ((Array.make (8) 0)) in ();
            for index = 0 to 8 - 1 do
                !ivArray.(index) <- array.(index)
            done;
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (("ivArray Length: " ^ java_string_of (Obj.repr ((Array.length !ivArray)))), (Obj.magic self), "encrypt"))));
            let result : int array ref = ref ((Array.make (((Array.length array) - (Array.length !ivArray))) 0)) in ();
            for index = (Array.length !ivArray) to (Array.length array) - 1 do
                !result.((index - (Array.length !ivArray))) <- array.(index)
            done;
            let decrypted : int array ref = ref ((cipher#doFinal (!result))) in ();
            !result
        with e -> begin
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr ("decrypt Failed", (Obj.magic self), "decrypt", e))));
            (Obj.magic 0)
        end)
        end

    initializer
      begin
        cipher <- ((Obj.magic 0) :> java_cipher);
        secretKey <- ((Obj.magic 0) :> java_secret_key);
        algorithm <- "";
        key <- (Obj.magic 0);
        ();
        (try
            algorithm <- algorithm_arg;
            key <- (key_arg#getBytes ());
            (self#init ())
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (!commonStrings#eXCEPTION, (Obj.magic self), "AbCrypt(alg,key)", e))))
        end)
      end
  end
let () = java_register_constructor "AbBasicCrypt" (fun arguments -> Obj.repr (new abBasicCrypt (Obj.obj arguments)))


