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
(* package org.allbinary.logic.math *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.string.StringMaker *)

class primitiveLongSingleton () =
  object
    val mutable uNK : char array = (Obj.magic 0)
    method uNK = uNK
    method set_uNK value' = uNK <- value'
    val mutable nUMBER_ARRAY : int array = (Obj.magic 0)
    method nUMBER_ARRAY = nUMBER_ARRAY
    method set_nUMBER_ARRAY value' = nUMBER_ARRAY <- value'
    val mutable nUMBER_CHAR_ARRAY : char array = (Obj.magic 0)
    method nUMBER_CHAR_ARRAY = nUMBER_CHAR_ARRAY
    method set_nUMBER_CHAR_ARRAY value' = nUMBER_CHAR_ARRAY <- value'
    val mutable nUMBER_CHAR_ARRAYS : char array array = (Obj.magic 0)
    method nUMBER_CHAR_ARRAYS = nUMBER_CHAR_ARRAYS
    method set_nUMBER_CHAR_ARRAYS value' = nUMBER_CHAR_ARRAYS <- value'
    val mutable zERO : char array = (Obj.magic 0)
    method zERO = zERO
    method set_zERO value' = zERO <- value'
    

    method getNumberFromChar ((numberAsChar : char)) : int =
        try
        begin
        let size : int ref = ref ((Array.length nUMBER_CHAR_ARRAY)) in ();
        for index = 0 to !size - 1 do
            if (nUMBER_CHAR_ARRAY.(index) = numberAsChar) then begin
                raise (Java_return (Obj.repr (nUMBER_ARRAY.(index))))
            end
        done;
        raise (Failure ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("numberAsChar was not in array: "))#appendchar (numberAsChar))))))
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        uNK <- [| 'U'; 'n'; 'k' |];
        nUMBER_ARRAY <- [| 0; 1; 2; 3; 4; 5; 6; 7; 8; 9 |];
        nUMBER_CHAR_ARRAY <- [| '0'; '1'; '2'; '3'; '4'; '5'; '6'; '7'; '8'; '9' |];
        nUMBER_CHAR_ARRAYS <- [| [| '0' |]; [| '1' |]; [| '2' |]; [| '3' |]; [| '4' |]; [| '5' |]; [| '6' |]; [| '7' |]; [| '8' |]; [| '9' |] |];
        zERO <- [| nUMBER_CHAR_ARRAY.(0) |];
        ()
      end
  end
let () = java_register_constructor "PrimitiveLongSingleton" (fun arguments -> Obj.repr (new primitiveLongSingleton (Obj.obj arguments)))

let instance = (new primitiveLongSingleton ())
let get_instance () = instance
let () = java_register_static "PrimitiveLongSingleton.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PrimitiveLongSingleton.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


