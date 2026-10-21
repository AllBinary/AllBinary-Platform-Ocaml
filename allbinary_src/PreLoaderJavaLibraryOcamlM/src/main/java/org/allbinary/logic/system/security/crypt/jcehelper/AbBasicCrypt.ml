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
    val mutable cipher : Obj.t = Obj.repr 0
    method cipher : 'r. 'r = Obj.magic cipher
    method set_cipher : 'v. 'v -> unit = fun value' -> cipher <- Obj.repr value'
    val mutable secretKey : Obj.t = Obj.repr 0
    method secretKey : 'r. 'r = Obj.magic secretKey
    method set_secretKey : 'v. 'v -> unit = fun value' -> secretKey <- Obj.repr value'
    val mutable algorithm : string = ""
    method algorithm = algorithm
    method set_algorithm value' = algorithm <- value'
    val mutable key : int array = (Obj.magic 0)
    method key = key
    method set_key value' = key <- value'
    
    

    method init () : unit =
        begin
        (try
            let sunJce : Obj.t ref = ref ((Obj.repr (new SunJCE.sunJCE ()))) in ();
            ignore (Security.addProvider ((Obj.magic !sunJce)));
            let keySpec : Obj.t ref = ref ((Obj.repr ((Obj.magic (java_call_static "KeySpecFactory.getInstance" (Obj.repr ())))#getInstance (algorithm, key)))) in ();
            let keyFactory : Obj.t ref = ref ((Obj.repr (SecretKeyFactory.getInstance (algorithm)))) in ();
            secretKey <- Obj.repr (((Obj.magic !keyFactory)#generateSecret ((Obj.magic !keySpec))));
            cipher <- Obj.repr ((Cipher.getInstance (algorithm)))
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr ("init Failed", self, !commonStrings#iNIT, e))))
        end)
        end
    

    method encrypt ((array : int array)) : int array =
        begin
        (try
            ignore ((Obj.magic cipher)#init ((Cipher.get_eNCRYPT_MODE ()), (Obj.magic secretKey)));
            let ivArray : int array ref = ref (((Obj.magic secretKey)#getEncoded ())) in ();
            let encrypted : int array ref = ref (((Obj.magic cipher)#doFinal (array))) in ();
            let result : int array ref = ref ((Array.make (((Array.length !ivArray) + (Array.length !encrypted))) 0)) in ();
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (("ivArray Length: " ^ java_string_of (Obj.repr ((Array.length !ivArray)))), self, "encrypt"))));
            for index = 0 to (Array.length !ivArray) - 1 do
                !result.(index) <- !ivArray.(index)
            done;
            for index = 0 to (Array.length !encrypted) - 1 do
                !result.((index + (Array.length !ivArray))) <- !encrypted.(index)
            done;
            !result
        with e -> begin
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr ("Encrypt Failed", self, "encrypt", e))));
            (Obj.magic 0)
        end)
        end
    

    method decrypt ((array : int array)) : int array =
        begin
        (try
            ignore ((Obj.magic cipher)#init ((Cipher.get_dECRYPT_MODE ()), (Obj.magic secretKey)));
            let ivArray : int array ref = ref ((Array.make (8) 0)) in ();
            for index = 0 to 8 - 1 do
                !ivArray.(index) <- array.(index)
            done;
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (("ivArray Length: " ^ java_string_of (Obj.repr ((Array.length !ivArray)))), self, "encrypt"))));
            let result : int array ref = ref ((Array.make (((Array.length array) - (Array.length !ivArray))) 0)) in ();
            for index = (Array.length !ivArray) to (Array.length array) - 1 do
                !result.((index - (Array.length !ivArray))) <- array.(index)
            done;
            let decrypted : int array ref = ref (((Obj.magic cipher)#doFinal (!result))) in ();
            !result
        with e -> begin
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr ("decrypt Failed", self, "decrypt", e))));
            (Obj.magic 0)
        end)
        end

    initializer
      begin
        cipher <- (Obj.repr (Obj.magic 0));
        secretKey <- (Obj.repr (Obj.magic 0));
        algorithm <- "";
        key <- (Obj.magic 0);
        ();
        (try
            algorithm <- algorithm_arg;
            key <- (key_arg#getBytes ());
            (self#init ())
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (!commonStrings#eXCEPTION, self, "AbCrypt(alg,key)", e))))
        end)
      end
  end [@@warning "-20"]
let () = java_register_constructor "AbBasicCrypt" (fun arguments -> Obj.repr (new abBasicCrypt (Obj.obj arguments)))


