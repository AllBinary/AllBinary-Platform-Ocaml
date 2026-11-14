(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.math.permutations *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.TsUtil *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.util.visitor.Visitor *)
(* import org.allbinary.string.CommonSeps *)

class objectPermutationVisitor ((data_arg : Obj.t array)) =
  object (self)
    inherit Visitor.visitor ()
    val mutable data : Obj.t array = (Obj.magic 0)
    method data = data
    method set_data value' = data <- value'
    val mutable stringBuilder : StringMaker.stringMaker = (Obj.magic 0)
    method stringBuilder = stringBuilder
    method set_stringBuilder value' = stringBuilder <- value'
    
    

    method visit : 'any1. 'any1 -> Obj.t = fun (_anyType) ->
        begin
        ignore (stringBuilder#delete (0, (stringBuilder#length ())));
        (self#print (data, stringBuilder));
        (Obj.repr ((NullUtil.getInstance ())#nULL_OBJECT))
        end [@@warning "-7"]
    

    (* Java overload print(ArrayType) is not converted: OCaml has one method per name *)
    

    method print : 'any2. Obj.t array * 'any2 -> unit = fun ((data_arg : Obj.t array), stringBuilder_arg) ->
        let stringBuilder_arg = Obj.repr stringBuilder_arg in
        begin
        let tsUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ()))))) in ();
        let size : int ref = ref ((Array.length data_arg)) in ();
        for i = 0 to !size - 1 do
            ignore ((Obj.magic stringBuilder_arg)#appendint (((Obj.magic !tsUtil)#hashCode (data_arg.(i)))));
            ignore ((Obj.magic stringBuilder_arg)#append ((CommonSeps.getInstance ())#sPACE))
        done;
        (print_endline (java_string_of (Obj.repr ((java_string_of (Obj.repr (Obj.magic stringBuilder_arg)))))))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        stringBuilder <- ((new StringMaker.stringMaker ()) :> StringMaker.stringMaker);
        ();
        data <- data_arg
      end
  end
let () = java_register_constructor "ObjectPermutationVisitor" (fun arguments -> Obj.repr (new objectPermutationVisitor (Obj.obj arguments)))


