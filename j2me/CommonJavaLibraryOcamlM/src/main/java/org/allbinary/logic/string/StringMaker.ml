(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.string *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import jsinterop.annotations.JsType *)
(* import jsinterop.annotations.JsMethod *)
(* import jsinterop.annotations.JsConstructor *)

class stringMaker () =
  object (self)
    val mutable charArray : char array = (Obj.magic 0)
    method charArray = charArray
    method set_charArray value' = charArray <- value'
    val mutable currentLength : int = 0
    method currentLength = currentLength
    method set_currentLength value' = currentLength <- value'
    
    

    method append ((string : string)) =
        begin
        let stringLength : int ref = ref ((String.length string)) in ();
        (self#ensureCapacity ((currentLength + !stringLength)));
        ignore (java_string_get_chars string (0, !stringLength, charArray, currentLength));
        currentLength <- (currentLength + !stringLength);
        self
        end
    

    method appendchar ((c : char)) =
        begin
        (self#ensureCapacity ((currentLength + 1)));
        charArray.((let value = currentLength in currentLength <- currentLength + 1; value)) <- c;
        self
        end
    

    method appendCharArray ((charArray_arg : char array), (start : int), (end_ : int)) =
        begin
        (self#ensureCapacity ((currentLength + ((end_ - start)))));
        for index = start to end_ - 1 do
            charArray.((let value = currentLength in currentLength <- currentLength + 1; value)) <- charArray_arg.(index)
        done;
        self
        end
    

    method appendbyte ((b : int)) =
        begin
        ignore (self#append ((string_of_int (b))));
        self
        end
    

    method appendshort ((b : int)) =
        begin
        ignore (self#append ((string_of_int (b))));
        self
        end
    

    method appendint ((i : int)) =
        begin
        ignore (self#append ((string_of_int (i))));
        self
        end
    

    method appendlong ((l : int)) =
        begin
        ignore (self#append ((string_of_int (l))));
        self
        end
    

    method appendfloat ((f : float)) =
        begin
        ignore (self#append ((string_of_float (f))));
        self
        end
    

    method appendboolean ((bool : bool)) =
        begin
        if bool then begin
            (self#ensureCapacity ((currentLength + 4)));
            charArray.((let value = currentLength in currentLength <- currentLength + 1; value)) <- 't';
            charArray.((let value = currentLength in currentLength <- currentLength + 1; value)) <- 'r';
            charArray.((let value = currentLength in currentLength <- currentLength + 1; value)) <- 'u';
            charArray.((let value = currentLength in currentLength <- currentLength + 1; value)) <- 'e'
        end else begin
            (self#ensureCapacity ((currentLength + 5)));
            charArray.((let value = currentLength in currentLength <- currentLength + 1; value)) <- 'f';
            charArray.((let value = currentLength in currentLength <- currentLength + 1; value)) <- 'a';
            charArray.((let value = currentLength in currentLength <- currentLength + 1; value)) <- 'l';
            charArray.((let value = currentLength in currentLength <- currentLength + 1; value)) <- 's';
            charArray.((let value = currentLength in currentLength <- currentLength + 1; value)) <- 'e'
        end;
        self
        end
    

    method ensureCapacity ((minSize : int)) : unit =
        begin
        let oldCapacity : int ref = ref ((Array.length charArray)) in ();
        if (minSize > !oldCapacity) then begin
            let newCapacity : int ref = ref ((!oldCapacity * 3)) in ();
            if (!newCapacity < minSize) then begin
                newCapacity := minSize
            end;
            let copy : char array ref = ref ((Array.make (!newCapacity) '\000')) in ();
            let min : int ref = ref ((self#min ((Array.length charArray), !newCapacity))) in ();
            ignore (Array.blit (charArray) (0) (!copy) (0) (!min));
            charArray <- !copy
        end
        end
    

    method min ((value : int), (value2 : int)) : int =
        begin
        (if ((value <= value2)) then value else value2)
        end
    

    method delete ((start : int), (end_ : int)) =
        begin
        currentLength <- (currentLength - ((end_ - start)));
        self
        end
    

    method length () : int =
        begin
        currentLength
        end
    

    method toString () : string =
        begin
        (Obj.obj (java_new "String" (Obj.repr (charArray, 0, currentLength))))
        end

    initializer
      begin
        ();
        currentLength <- 0;
        ();
        charArray <- (Array.make (20) '\000')
      end
  end
let () = java_register_constructor "StringMaker" (fun arguments -> Obj.repr (new stringMaker (Obj.obj arguments)))


