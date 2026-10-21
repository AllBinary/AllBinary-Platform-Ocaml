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
(* package org.allbinary.logic.java.byteutil *)

open Allbinary_java [@@warning "-33"]

class byteUtil () =
  object (self)
    
    

    method xor ((array : int array), (mask : int)) : int array =
        begin
        let bytes : int array ref = ref ((Array.make ((Array.length array)) 0)) in ();
        let size : int ref = ref ((Array.length array)) in ();
        let index : int ref = ref (0) in ();
        let currentByte : int ref = ref (0) in ();
        while (!index < !size) do
            currentByte := array.(!index);
            !bytes.(!index) <- ((!currentByte lxor mask));
            index := !index + 1
        done;
        !bytes
        end
    

    method not_ ((array : int array)) : int array =
        begin
        let bytes : int array ref = ref ((Array.make ((Array.length array)) 0)) in ();
        let size : int ref = ref ((Array.length array)) in ();
        let index : int ref = ref (0) in ();
        while (!index < !size) do
            !bytes.(!index) <- (lnot array.(!index));
            index := !index + 1
        done;
        !bytes
        end
    

    method xorByte ((array : int array), (index : int)) : int array =
        begin
        let mask : int ref = ref (0) in ();
        if (index = 0) then begin
            mask := 1
        end;
        if (index = 1) then begin
            mask := 2
        end;
        if (index = 2) then begin
            mask := 4
        end;
        if (index = 3) then begin
            mask := 8
        end;
        if (index = 4) then begin
            mask := 16
        end;
        if (index = 5) then begin
            mask := 32
        end;
        if (index = 6) then begin
            mask := 64
        end;
        if (index = 7) then begin
            mask := (-127)
        end;
        (self#xor (array, !mask))
        end
    

    method compare ((newByteArray : int array), (oldByteArray : int array)) : bool =
        try
        begin
        if ((Array.length newByteArray) <> (Array.length oldByteArray)) then begin
            raise (Java_return (Obj.repr (false)))
        end else begin
            ()
        end;
        let size : int ref = ref ((Array.length newByteArray)) in ();
        for index = 0 to !size - 1 do
            if (newByteArray.(index) <> oldByteArray.(index)) then begin
                raise (Java_return (Obj.repr (false)))
            end
        done;
        true
        end
        with Java_return value -> Obj.obj value
    

    method compareWithStats ((newByteArray : int array), (newSize : int), (oldByteArray : int array), (stats : int array)) : bool =
        try
        begin
        if (newSize <> (Array.length oldByteArray)) then begin
            stats.(0) <- (-1);
            stats.(2) <- newSize;
            stats.(3) <- (Array.length oldByteArray);
            raise (Java_return (Obj.repr (false)))
        end else begin
            stats.(0) <- newSize
        end;
        stats.(1) <- 0;
        let size : int ref = ref (newSize) in ();
        for index = 0 to !size - 1 do
            if (newByteArray.(index) <> oldByteArray.(index)) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            stats.(1) <- stats.(1) + 1
        done;
        true
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ByteUtil" (fun arguments -> Obj.repr (new byteUtil (Obj.obj arguments)))

let instance = (new byteUtil ())
let get_instance () = instance
let () = java_register_static "ByteUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ByteUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


