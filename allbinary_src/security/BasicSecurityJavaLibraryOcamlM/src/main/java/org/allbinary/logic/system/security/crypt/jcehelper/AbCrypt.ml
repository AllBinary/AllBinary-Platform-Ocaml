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
(* import java.security.Security *)
(* import java.security.spec.KeySpec *)
(* import javax.crypto.Cipher *)
(* import javax.crypto.SecretKey *)
(* import javax.crypto.SecretKeyFactory *)
(* import org.allbinary.TsUtil *)
(* import org.allbinary.init.crypt.jcehelper.CryptInterface *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.bouncycastle.jce.provider.BouncyCastleProvider *)

class abCrypt ((algorithm_arg : string)) =
  object (self)
    val mutable tsUtil : Obj.t = Obj.repr 0
    method tsUtil : 'r. 'r = Obj.magic tsUtil
    method set_tsUtil : 'v. 'v -> unit = fun value' -> tsUtil <- Obj.repr value'
    val mutable secretComposite : BaseSecretComposite.baseSecretComposite = (Obj.magic 0)
    method secretComposite = secretComposite
    method set_secretComposite value' = secretComposite <- value'
    val mutable algorithm : string = ""
    method algorithm = algorithm
    method set_algorithm value' = algorithm <- value'
    
    

    method init ((keyAsString : string)) : unit =
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        (try
            (try
                ignore (Security.addProvider ((new BouncyCastleProvider.bouncyCastleProvider ())))
            with e -> begin
                ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (!commonStrings#eXCEPTION, self, !commonStrings#iNIT, e))))
            end);
            let key : int array ref = ref (((Obj.magic tsUtil)#getByteArray (keyAsString))) in ();
            let keySpec : Obj.t ref = ref ((Obj.repr ((Obj.magic (java_call_static "KeySpecFactory.getInstance" (Obj.repr ())))#getInstance (algorithm, !key)))) in ();
            let keyFactory : Obj.t ref = ref ((Obj.repr (SecretKeyFactory.getInstance (algorithm)))) in ();
            let secretKey : Obj.t ref = ref ((Obj.repr ((Obj.magic !keyFactory)#generateSecret ((Obj.magic !keySpec))))) in ();
            let cipher : Obj.t ref = ref ((Obj.repr (Cipher.getInstance (algorithm)))) in ();
            secretComposite <- (new SecretComposite.secretComposite ((Obj.magic !secretKey), (Obj.magic !cipher), !key))
        with e -> begin
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr ("init Failed", self, !commonStrings#iNIT, e))))
        end)
        end
    

    method encrypt ((array : int array)) : int array =
        begin
        (try
            (secretComposite#encrypt (array))
        with e -> begin
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr ("Encrypt Failed", self, "encrypt", e))));
            (NullUtil.getInstance ())#nULL_BYTE_ARRAY
        end)
        end
    

    method decrypt ((array : int array)) : int array =
        begin
        (try
            (secretComposite#decrypt (array))
        with e -> begin
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr ("decrypt Failed", self, "decrypt", e))));
            (NullUtil.getInstance ())#nULL_BYTE_ARRAY
        end)
        end

    initializer
      begin
        tsUtil <- (Obj.repr (Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ()))));
        secretComposite <- ((BaseSecretComposite.get_nULL_SECRET_COMPOSITE ()) :> BaseSecretComposite.baseSecretComposite);
        ();
        ();
        algorithm <- algorithm_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "AbCrypt" (fun arguments -> Obj.repr (new abCrypt (Obj.obj arguments)))


