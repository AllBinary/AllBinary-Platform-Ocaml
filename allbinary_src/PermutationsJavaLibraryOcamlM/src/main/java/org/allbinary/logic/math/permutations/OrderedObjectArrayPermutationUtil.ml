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
(* package org.allbinary.logic.math.permutations *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Arrays *)
(* import org.allbinary.TsUtil *)
(* import org.allbinary.logic.util.visitor.Visitor *)

class orderedObjectArrayPermutationUtil () =
  object (self)
    val mutable tOTAL_ITERATIONS_TABLE : string = ""
    method tOTAL_ITERATIONS_TABLE = tOTAL_ITERATIONS_TABLE
    method set_tOTAL_ITERATIONS_TABLE value' = tOTAL_ITERATIONS_TABLE <- value'
    val mutable fINISHED : string = ""
    method fINISHED = fINISHED
    method set_fINISHED value' = fINISHED <- value'
    
    

    method getNext ((data : Obj.t array)) : unit =
        begin
        let length : int ref = ref ((Array.length data)) in ();
        let i : int ref = ref ((!length - 1)) in ();
        let tsUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ()))))) in ();
        while (((Obj.magic !tsUtil)#hashCode (data.((!i - 1)))) >= ((Obj.magic !tsUtil)#hashCode (data.(!i)))) do
            i := (!i - 1)
        done;
        let j : int ref = ref (!length) in ();
        while (((Obj.magic !tsUtil)#hashCode (data.((!j - 1)))) <= ((Obj.magic !tsUtil)#hashCode (data.((!i - 1))))) do
            j := (!j - 1)
        done;
        (self#swap (data, (!i - 1), (!j - 1)));
        i := !i + 1;
        j := !length;
        while (!i < !j) do
            (self#swap (data, (!i - 1), (!j - 1)));
            i := !i + 1;
            j := !j - 1
        done
        end
    

    method swap ((data : Obj.t array), (a : int), (b : int)) : unit =
        begin
        let temp : Obj.t ref = ref ((Obj.repr data.(a))) in ();
        data.(a) <- (Obj.repr (data.(b)));
        data.(b) <- (Obj.repr (!temp))
        end
    

    method factorial ((dataLength : int)) : int =
        begin
        let temp : int ref = ref (1) in ();
        if (dataLength > 1) then begin
            for i = 1 to dataLength do
                temp := (!temp * i)
            done
        end;
        !temp
        end
    

    method generate : 'any2. Obj.t array * 'any2 -> unit = fun ((data : Obj.t array), visitor) ->
        let visitor = Obj.repr visitor in
        begin
        let iterations : int ref = ref ((self#factorial ((Array.length data)))) in ();
        (print_string (java_string_of (Obj.repr (tOTAL_ITERATIONS_TABLE))));
        (print_endline (java_string_of (Obj.repr (!iterations))));
        for _count = 0 to (!iterations - 1) - 1 do
            (self#getNext (data));
            ignore ((Obj.magic visitor)#visit (self))
        done;
        (print_endline (java_string_of (Obj.repr (fINISHED))))
        end [@@warning "-20"]

    initializer
      begin
        tOTAL_ITERATIONS_TABLE <- "Total Iterations: ";
        fINISHED <- "\nFINISHED";
        ();
        ()
      end
  end
let () = java_register_constructor "OrderedObjectArrayPermutationUtil" (fun arguments -> Obj.repr (new orderedObjectArrayPermutationUtil (Obj.obj arguments)))

let instance = (new orderedObjectArrayPermutationUtil ())
let get_instance () = instance
let () = java_register_static "OrderedObjectArrayPermutationUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let rec getInstance () =
        begin
        instance
        end

and main ((_args : string array)) : unit =
        begin
        let tOTAL : int ref = ref (7) in ();
        let data : Obj.t array ref = ref ((Array.make (!tOTAL) (Obj.magic 0))) in ();
        for i = 0 to !tOTAL - 1 do
            !data.(i) <- (Obj.repr ((new ComparableObject.comparableObject ())))
        done;
        ignore (Arrays.sort (!data));
        let permutationVisitor : ObjectPermutationVisitor.objectPermutationVisitor ref = ref (((new ObjectPermutationVisitor.objectPermutationVisitor (!data)) :> ObjectPermutationVisitor.objectPermutationVisitor)) in ();
        let oRIGINAL_DATA_LABEL : string ref = ref ("Original Data: ") in ();
        (print_string (java_string_of (Obj.repr (!oRIGINAL_DATA_LABEL))));
        ignore (!permutationVisitor#visit (!data));
        ignore ((getInstance ())#generate (!data, !permutationVisitor))
        end
let () = java_register_static "OrderedObjectArrayPermutationUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
let () = java_register_static "OrderedObjectArrayPermutationUtil.main" (fun arguments -> Obj.repr (main (Obj.obj arguments)))


