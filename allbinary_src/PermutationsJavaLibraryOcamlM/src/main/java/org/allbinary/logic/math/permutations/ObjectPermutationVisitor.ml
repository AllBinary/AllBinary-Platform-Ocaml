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
    

    method print ((data_arg : Obj.t array)) : unit =
        begin
        let stringBuilder_arg : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        (self#print (data_arg, !stringBuilder_arg))
        end [@@warning "-7"]
    

    (* Java overload print(ArrayType, StringMaker) is not converted: OCaml has one method per name *)

    initializer
      begin
        ();
        stringBuilder <- ((new StringMaker.stringMaker ()) :> StringMaker.stringMaker);
        ();
        data <- data_arg
      end
  end
let () = java_register_constructor "ObjectPermutationVisitor" (fun arguments -> Obj.repr (new objectPermutationVisitor (Obj.obj arguments)))


