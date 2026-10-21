(* Generated Code Do Not Modify *)
(* package org.allbinary.util *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import jsinterop.annotations.JsType *)
(* import org.allbinary.logic.math.MathUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonSeps *)
(* import jsinterop.annotations.JsMethod *)

class arrayUtil () =
  object (self)
    val mutable mathUtil : MathUtil.mathUtil = (Obj.magic 0)
    method mathUtil = mathUtil
    method set_mathUtil value' = mathUtil <- value'
    

    method copyOf ((original : Obj.t array), (newLength : int)) : Obj.t array =
        begin
        (self#copyOfType (original, newLength, (java_get_class (Obj.repr original))))
        end
    

    method copyOfType ((original : Obj.t array), (newLength : int), (_newType : string)) : Obj.t array =
        begin
        let copy : Obj.t array ref = ref ((Array.make (newLength) (Obj.magic 0))) in ();
        ignore (Array.blit (original) (0) (!copy) (0) ((mathUtil#min ((Array.length original), newLength))));
        !copy
        end
    

    method copyOfbyte ((original : int array), (newLength : int)) : int array =
        begin
        let copy : int array ref = ref ((Array.make (newLength) 0)) in ();
        ignore (Array.blit (original) (0) (!copy) (0) ((mathUtil#min ((Array.length original), newLength))));
        !copy
        end
    

    method copyOfshort ((original : int array), (newLength : int)) : int array =
        begin
        let copy : int array ref = ref ((Array.make (newLength) 0)) in ();
        ignore (Array.blit (original) (0) (!copy) (0) ((mathUtil#min ((Array.length original), newLength))));
        !copy
        end
    

    method copyOfint ((original : int array), (newLength : int)) : int array =
        begin
        let copy : int array ref = ref ((Array.make (newLength) 0)) in ();
        ignore (Array.blit (original) (0) (!copy) (0) ((mathUtil#min ((Array.length original), newLength))));
        !copy
        end
    

    method copyOflong ((original : int array), (newLength : int)) : int array =
        begin
        let copy : int array ref = ref ((Array.make (newLength) 0)) in ();
        ignore (Array.blit (original) (0) (!copy) (0) ((mathUtil#min ((Array.length original), newLength))));
        !copy
        end
    

    method copyOfchar ((original : char array), (newLength : int)) : char array =
        begin
        let copy : char array ref = ref ((Array.make (newLength) '\000')) in ();
        ignore (Array.blit (original) (0) (!copy) (0) ((mathUtil#min ((Array.length original), newLength))));
        !copy
        end
    

    method copyOffloat ((original : float array), (newLength : int)) : float array =
        begin
        let copy : float array ref = ref ((Array.make (newLength) 0.0)) in ();
        ignore (Array.blit (original) (0) (!copy) (0) ((mathUtil#min ((Array.length original), newLength))));
        !copy
        end
    

    method copyOfdouble ((original : float array), (newLength : int)) : float array =
        begin
        let copy : float array ref = ref ((Array.make (newLength) 0.0)) in ();
        ignore (Array.blit (original) (0) (!copy) (0) ((mathUtil#min ((Array.length original), newLength))));
        !copy
        end
    

    method copyOfboolean ((original : bool array), (newLength : int)) : bool array =
        begin
        let copy : bool array ref = ref ((Array.make (newLength) false)) in ();
        ignore (Array.blit (original) (0) (!copy) (0) ((mathUtil#min ((Array.length original), newLength))));
        !copy
        end
    

    method reverse ((intArray : int array)) : unit =
        begin
        let length : int ref = ref (((Array.length intArray) - 1)) in ();
        let temp : int ref = ref (0) in ();
        let size : int ref = ref ((!length / 2)) in ();
        for index = 0 to !size do
            temp := intArray.(index);
            intArray.(index) <- intArray.((!length - index));
            intArray.((!length - index)) <- !temp
        done
        end
    

    method flip ((intArray : int array), (width : int), (height : int)) : unit =
        begin
        let length : int ref = ref ((height - 1)) in ();
        let temp : int ref = ref (0) in ();
        let index : int ref = ref (0) in ();
        let rowIndex : int ref = ref (0) in ();
        for y = 0 to (!length / 2) do
            for x = 0 to width - 1 do
                rowIndex := ((((!length - y)) * width));
                index := (x + ((y * width)));
                temp := intArray.(!index);
                intArray.(!index) <- intArray.((!rowIndex + x));
                intArray.((!rowIndex + x)) <- !temp
            done
        done
        end
    

    method toStringFromTwoDimensionaArray ((twoDimensionalIntArray : int array array)) : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        let endIndex : int ref = ref ((Array.length twoDimensionalIntArray)) in ();
        let endIndex2 : int ref = ref ((Array.length twoDimensionalIntArray.(0))) in ();
        for index = 0 to !endIndex - 1 do
            ignore (!stringBuffer#append (!commonSeps#bRACE_OPEN));
            for index2 = 0 to !endIndex2 - 1 do
                ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (twoDimensionalIntArray.(index).(index2))))));
                ignore (!stringBuffer#append (!commonSeps#cOMMA_SEP))
            done;
            ignore (!stringBuffer#append (!commonSeps#bRACE_CLOSE));
            ignore (!stringBuffer#append (!commonSeps#nEW_LINE))
        done;
        (java_string_of (Obj.repr !stringBuffer))
        end
    

    method toStringFromObjectArray ((objectArray : Obj.t array)) : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        for index = 0 to (Array.length objectArray) - 1 do
            ignore (!stringBuffer#append (((StringUtil.getInstance ())#toString (objectArray.(index)))));
            ignore (!stringBuffer#append (!commonSeps#cOMMA_SEP))
        done;
        (java_string_of (Obj.repr !stringBuffer))
        end
    

    method toStringFromByteArray ((byteArray : int array)) : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        for index = 0 to (Array.length byteArray) - 1 do
            ignore (!stringBuffer#appendbyte (byteArray.(index)));
            ignore (!stringBuffer#append (!commonSeps#cOMMA_SEP))
        done;
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        mathUtil <- ((MathUtil.getInstance ()) :> MathUtil.mathUtil);
        ()
      end
  end
let () = java_register_constructor "ArrayUtil" (fun arguments -> Obj.repr (new arrayUtil (Obj.obj arguments)))

let instance = (new arrayUtil ())
let get_instance () = instance
let () = java_register_static "ArrayUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ArrayUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


