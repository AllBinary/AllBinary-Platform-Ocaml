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
(* import org.allbinary.TsUtil *)
(* import org.allbinary.init.crypt.jcehelper.CryptInterface *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.java.byteutil.ByteUtil *)
(* import org.allbinary.string.CommonStrings *)

class basicCrypt ((keyAsString : string)) =
  object (self)
    val mutable byteUtil : ByteUtil.byteUtil = (Obj.magic 0)
    method byteUtil = byteUtil
    method set_byteUtil value' = byteUtil <- value'
    val mutable key : int array = (Obj.magic 0)
    method key = key
    method set_key value' = key <- value'
    
    

    method encrypt ((array : int array)) : int array =
        begin
        (try
            (self#mutilate (array))
        with e -> begin
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr ("Encrypt Failed", self, "encrypt", e))));
            (NullUtil.getInstance ())#nULL_BYTE_ARRAY
        end)
        end
    

    method decrypt ((array : int array)) : int array =
        begin
        (try
            (self#mutilate (array))
        with e -> begin
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr ("decrypt Failed", self, "decrypt", e))));
            (NullUtil.getInstance ())#nULL_BYTE_ARRAY
        end)
        end
    

    method mutilate ((array : int array)) : int array =
        let array = ref array in
        begin
        let value : int ref = ref (0) in ();
        for index = 0 to (Array.length key) - 1 do
            value := key.(index);
            array := (byteUtil#xor (!array, !value))
        done;
        !array
        end

    initializer
      begin
        byteUtil <- ((ByteUtil.getInstance ()) :> ByteUtil.byteUtil);
        ();
        ();
        let key_arg : int array ref = ref ((NullUtil.getInstance ())#nULL_BYTE_ARRAY) in ();
        (try
            key_arg := ((Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ())))#getByteArray (keyAsString))
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (!commonStrings#eXCEPTION, self, "AbCrypt(alg,key)", e))))
        end);
        key <- !key_arg
      end
  end
let () = java_register_constructor "BasicCrypt" (fun arguments -> Obj.repr (new basicCrypt (Obj.obj arguments)))


