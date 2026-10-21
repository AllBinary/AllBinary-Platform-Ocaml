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
(* package org.allbinary.game.rand *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Random *)
(* import jsinterop.annotations.JsType *)
(* import jsinterop.annotations.JsMethod *)
(* import jsinterop.annotations.JsConstructor *)
(* import org.allbinary.logic.math.MathUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)

class myRandomFactory () =
  object (self)
    val mutable mathUtil : MathUtil.mathUtil = (Obj.magic 0)
    method mathUtil = mathUtil
    method set_mathUtil value' = mathUtil <- value'
    val mutable rand : java_random = (Obj.magic 0)
    method rand = rand
    method set_rand value' = rand <- value'
    
    

    method setSeed ((seed : int)) : unit =
        begin
        rand <- (Obj.obj (java_new "Random" (Obj.repr (seed))))
        end
    

    method getNextInt ((range : int)) : int =
        begin
        let div : int ref = ref ((((2147483647 / range)) + 1)) in ();
        (java_to_int (Obj.repr ((((rand#nextInt ()) / !div)))))
        end
    

    method getAbsoluteNextInt ((range : int)) : int =
        begin
        (mathUtil#abs ((self#getNextInt (range))))
        end
    

    method getAbsoluteNextIntAllowZero ((range : int)) : int =
        try
        begin
        if (range = 0) then begin
            raise (Java_return (Obj.repr (0)))
        end else begin
            raise (Java_return (Obj.repr ((mathUtil#abs ((self#getNextInt (range)))))))
        end
        end
        with Java_return value -> Obj.obj value
    

    method shuffle ((intArray : int array)) : unit =
        begin
        (self#shuffleTotal (intArray, ((Array.length intArray) * 7)))
        end
    

    method shuffleTotal ((intArray : int array), (shuffleTotal : int)) : unit =
        begin
        let size : int ref = ref ((Array.length intArray)) in ();
        let randomIndex : int ref = ref (0) in ();
        let randomIndex2 : int ref = ref (0) in ();
        let value : int ref = ref (0) in ();
        for _index = 0 to shuffleTotal - 1 do
            randomIndex := (self#getAbsoluteNextIntAllowZero (!size));
            randomIndex2 := (self#getAbsoluteNextIntAllowZero (!size));
            value := intArray.(!randomIndex);
            intArray.(!randomIndex) <- intArray.(!randomIndex2);
            intArray.(!randomIndex2) <- !value
        done
        end
    

    method shuffle2 ((intArray : int array), (intArray2 : int array)) : unit =
        begin
        (self#shuffle2Total (intArray, intArray2, ((Array.length intArray) * 7)))
        end
    

    method shuffle2Total ((intArray : int array), (intArray2 : int array), (shuffleTotal : int)) : unit =
        begin
        let size : int ref = ref ((Array.length intArray)) in ();
        let randomIndex : int ref = ref (0) in ();
        let randomIndex2 : int ref = ref (0) in ();
        let value : int ref = ref (0) in ();
        let value2 : int ref = ref (0) in ();
        for _index = 0 to shuffleTotal - 1 do
            randomIndex := (self#getAbsoluteNextIntAllowZero (!size));
            randomIndex2 := (self#getAbsoluteNextIntAllowZero (!size));
            value := intArray.(!randomIndex);
            value2 := intArray2.(!randomIndex);
            intArray.(!randomIndex) <- intArray.(!randomIndex2);
            intArray.(!randomIndex2) <- !value;
            intArray2.(!randomIndex) <- intArray2.(!randomIndex2);
            intArray2.(!randomIndex2) <- !value2
        done
        end

    initializer
      begin
        mathUtil <- ((MathUtil.getInstance ()) :> MathUtil.mathUtil);
        ();
        ();
        rand <- (Obj.obj (java_new "Random" (Obj.repr ((Float.to_int (Unix.gettimeofday () *. 1000.0))))))
      end
  end
let () = java_register_constructor "MyRandomFactory" (fun arguments -> Obj.repr (new myRandomFactory (Obj.obj arguments)))

let instance = (new myRandomFactory ())
let get_instance () = instance
let () = java_register_static "MyRandomFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let rec getInstance () =
        begin
        instance
        end

and main ((_args : string array)) : unit =
        begin
        let randomFactory : Obj.t ref = ref ((Obj.repr (getInstance ()))) in ();
        let stringBuilder : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        let size2 : int ref = ref (100) in ();
        for _index = 0 to !size2 - 1 do
            ignore ((!stringBuilder#appendint ((java_to_int (Obj.repr (((Obj.magic !randomFactory)#getAbsoluteNextInt (3)))))))#append (!commonSeps#cOMMA))
        done;
        (print_endline (java_string_of (Obj.repr ((java_string_of (Obj.repr !stringBuilder))))));
        ignore (!stringBuilder#delete (0, (!stringBuilder#length ())));
        let intArray : int array ref = ref ((Array.make (52) 0)) in ();
        let intArray2 : int array ref = ref ((Array.make (52) 0)) in ();
        let size : int ref = ref ((Array.length !intArray)) in ();
        for index = 0 to !size - 1 do
            !intArray.(index) <- index;
            !intArray2.(index) <- index
        done;
        ignore ((Obj.magic !randomFactory)#shuffle2 (!intArray, !intArray2));
        for index = 0 to !size - 1 do
            ignore ((!stringBuilder#appendint (!intArray.(index)))#append (!commonSeps#cOMMA))
        done;
        (print_endline (java_string_of (Obj.repr ((java_string_of (Obj.repr !stringBuilder))))));
        ignore (!stringBuilder#delete (0, (!stringBuilder#length ())));
        for index = 0 to !size - 1 do
            ignore ((!stringBuilder#appendint (!intArray2.(index)))#append (!commonSeps#cOMMA))
        done;
        (print_endline (java_string_of (Obj.repr ((java_string_of (Obj.repr !stringBuilder))))));
        let found : bool ref = ref (false) in ();
        for index = 0 to !size - 1 do
            found := false;
            for index2 = 0 to !size - 1 do
                if (!intArray.(index2) = index) then begin
                    found := true
                end
            done;
            if (not !found) then begin
                raise (Failure ("RuntimeException"))
            end
        done
        end
let () = java_register_static "MyRandomFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
let () = java_register_static "MyRandomFactory.main" (fun arguments -> Obj.repr (main (Obj.obj arguments)))


