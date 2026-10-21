(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.math *)

open Allbinary_java [@@warning "-33"]
(* import jsinterop.annotations.JsType *)

class mathUtil () =
  object
    val mutable aCCURACY : int = 0
    method aCCURACY = aCCURACY
    method set_aCCURACY value' = aCCURACY <- value'
    

    method getTotalDigits ((digits : int)) : int =
        let digits = ref digits in
        begin
        let total : int ref = ref (0) in ();
        while (!digits > 0) do
            digits := (!digits / 10);
            total := !total + 1
        done;
        !total
        end
    

    method sqrt ((value : int)) : int =
        try
        begin
        if (value <= 1) then begin
            raise (Java_return (Obj.repr (value)))
        end;
        let accumulated : int ref = ref ((value asr 1)) in ();
        let result : int ref = ref ((((!accumulated + ((value / !accumulated)))) asr 1)) in ();
        (try while true do
            accumulated := !result;
            result := (((!accumulated + ((value / !accumulated)))) asr 1);
            if not ((!accumulated > !result)) then raise Java_break
        done with Java_break -> ());
        !accumulated
        end
        with Java_return value -> Obj.obj value
    

    method sqrtd ((x : int)) : float =
        try
        begin
        if (x = 0) then begin
            raise (Java_return (Obj.repr (0.0)))
        end;
        if (x < 0) then begin
            raise (Java_return (Obj.repr ((-.1.0))))
        end;
        let result : float ref = ref ((float_of_int (x))) in ();
        for _index = 0 to aCCURACY - 1 do
            result := (((!result +. (((float_of_int (x)) /. !result)))) /. 2.)
        done;
        !result
        end
        with Java_return value -> Obj.obj value
    

    method abs ((value : int)) : int =
        begin
        (if ((value < 0)) then (-value) else value)
        end
    

    method abslong ((value : int)) : int =
        begin
        (if ((value < 0)) then (-value) else value)
        end
    

    method min ((value : int), (value2 : int)) : int =
        begin
        (if ((value <= value2)) then value else value2)
        end
    

    method max ((value : int), (value2 : int)) : int =
        begin
        (if ((value >= value2)) then value else value2)
        end

    initializer
      begin
        aCCURACY <- 100;
        ()
      end
  end
let () = java_register_constructor "MathUtil" (fun arguments -> Obj.repr (new mathUtil (Obj.obj arguments)))

let instance = (new mathUtil ())
let get_instance () = instance
let () = java_register_static "MathUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "MathUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


