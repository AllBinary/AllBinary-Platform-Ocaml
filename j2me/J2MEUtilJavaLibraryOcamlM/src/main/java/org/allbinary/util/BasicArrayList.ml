(* Generated Code Do Not Modify *)
(* package org.allbinary.util *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import jsinterop.annotations.JsType *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonSeps *)
(* import jsinterop.annotations.JsMethod *)
(* import jsinterop.annotations.JsConstructor *)
(* import jsinterop.annotations.JsProperty *)

let sIZE : string = ", Size: "
let get_sIZE () = sIZE
let () = java_register_static "BasicArrayList.get_sIZE" (fun _ -> Obj.repr (get_sIZE ()))
class basicArrayList ((objectArray_arg : Obj.t array)) =
  object (self)
    val mutable arrayUtil : ArrayUtil.arrayUtil = (Obj.magic 0)
    method arrayUtil = arrayUtil
    method set_arrayUtil value' = arrayUtil <- value'
    val mutable objectArray : Obj.t array = (Obj.magic 0)
    method objectArray = objectArray
    method set_objectArray value' = objectArray <- value'
    val mutable currentIndex : int = 0
    method currentIndex = currentIndex
    method set_currentIndex value' = currentIndex <- value'
    
    

    method addAt : 'any2. int * 'any2 -> unit = fun ((index : int), element) ->
        let element = Obj.repr element in
        begin
        if ((index > currentIndex) || (index < 0)) then begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ((CommonLabels.getInstance ())#iNDEX_LABEL));
            ignore (!stringBuffer#appendint (index));
            ignore (!stringBuffer#append (sIZE));
            ignore (!stringBuffer#appendint (currentIndex));
            raise (Failure ((java_string_of (Obj.repr !stringBuffer))))
        end;
        (self#ensureCapacity ((currentIndex + 1)));
        ignore (Array.blit (objectArray) (index) (objectArray) ((index + 1)) ((currentIndex - index)));
        objectArray.(index) <- (Obj.repr (element));
        currentIndex <- currentIndex + 1
        end
    

    method add : 'any1. 'any1 -> bool = fun (anyType) ->
        let anyType = Obj.repr anyType in
        begin
        (self#ensureCapacity ((currentIndex + 1)));
        objectArray.((let value = currentIndex in currentIndex <- currentIndex + 1; value)) <- (Obj.repr (anyType));
        true
        end
    

    method removeAt ((index : int)) : Obj.t =
        begin
        if (index >= currentIndex) then begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ((CommonLabels.getInstance ())#iNDEX_LABEL));
            ignore (!stringBuffer#appendint (index));
            ignore (!stringBuffer#append (sIZE));
            ignore (!stringBuffer#appendint (currentIndex));
            raise (Failure ((java_string_of (Obj.repr !stringBuffer))))
        end;
        let oldValue : Obj.t ref = ref ((Obj.repr objectArray.(index))) in ();
        let numMoved : int ref = ref (((currentIndex - index) - 1)) in ();
        if (!numMoved > 0) then begin
            ignore (Array.blit (objectArray) ((index + 1)) (objectArray) (index) (!numMoved))
        end;
        objectArray.((currentIndex <- currentIndex - 1; currentIndex)) <- (Obj.magic 0);
        (Obj.repr (!oldValue))
        end
    

    method remove : 'any1. 'any1 -> bool = fun (anyType) ->
        let anyType = Obj.repr anyType in
        try
        begin
        if (anyType == (Obj.magic 0)) then begin
            for index = 0 to currentIndex - 1 do
                if (objectArray.(index) == (Obj.magic 0)) then begin
                    let numMoved : int ref = ref (((currentIndex - index) - 1)) in ();
                    if (!numMoved > 0) then begin
                        ignore (Array.blit (objectArray) ((index + 1)) (objectArray) (index) (!numMoved))
                    end;
                    objectArray.((currentIndex <- currentIndex - 1; currentIndex)) <- (Obj.magic 0);
                    raise (Java_return (Obj.repr (true)))
                end
            done
        end else begin
            for index = 0 to currentIndex - 1 do
                if (((Obj.repr anyType) == (Obj.repr objectArray.(index))) || (java_equals (Obj.repr anyType) (Obj.repr (objectArray.(index))))) then begin
                    let numMoved : int ref = ref (((currentIndex - index) - 1)) in ();
                    if (!numMoved > 0) then begin
                        ignore (Array.blit (objectArray) ((index + 1)) (objectArray) (index) (!numMoved))
                    end;
                    objectArray.((currentIndex <- currentIndex - 1; currentIndex)) <- (Obj.magic 0);
                    raise (Java_return (Obj.repr (true)))
                end
            done
        end;
        false
        end
        with Java_return value -> Obj.obj value
    

    method removeAll2 : 'any1. 'any1 -> bool = fun (list) ->
        let list = Obj.repr list in
        begin
        let result : bool ref = ref (true) in ();
        let size : int ref = ref (((Obj.magic list)#size ())) in ();
        for index = 0 to !size - 1 do
            if (self#remove (((Obj.magic list)#get (index)))) then begin
                ()
            end else begin
                result := false
            end
        done;
        !result
        end [@@warning "-20"]
    

    method addAll2 : 'any1. 'any1 -> bool = fun (list) ->
        let list = Obj.repr list in
        begin
        (self#ensureCapacity ((currentIndex + (Obj.magic list)#currentIndex)));
        let listSize : int ref = ref ((Obj.magic list)#currentIndex) in ();
        for index = 0 to !listSize - 1 do
            objectArray.((let value = currentIndex in currentIndex <- currentIndex + 1; value)) <- (Obj.repr ((Obj.magic list)#objectArray.(index)))
        done;
        true
        end [@@warning "-20"]
    

    method addAllList : 'any1. 'any1 -> bool = fun (list) ->
        let list = Obj.repr list in
        begin
        let newObjectArray : Obj.t array ref = ref (((Obj.magic list)#toArray ())) in ();
        (self#addAll (!newObjectArray))
        end [@@warning "-20"]
    

    method addAll ((newObjectArray : Obj.t array)) : bool =
        begin
        let numSize : int ref = ref ((Array.length newObjectArray)) in ();
        (self#ensureCapacity ((currentIndex + !numSize)));
        ignore (Array.blit (newObjectArray) (0) (objectArray) (currentIndex) (!numSize));
        currentIndex <- (currentIndex + !numSize);
        (!numSize <> 0)
        end
    

    method ensureCapacity ((minSize : int)) : unit =
        begin
        let oldCapacity : int ref = ref ((Array.length objectArray)) in ();
        if (minSize > !oldCapacity) then begin
            let newCapacity : int ref = ref ((((((!oldCapacity * 3)) asr 1)) + 1)) in ();
            if (!newCapacity < minSize) then begin
                newCapacity := minSize
            end;
            objectArray <- (arrayUtil#copyOf (objectArray, !newCapacity))
        end
        end
    

    method trimToSize () : unit =
        begin
        let oldCapacity : int ref = ref ((Array.length objectArray)) in ();
        if (currentIndex < !oldCapacity) then begin
            objectArray <- (arrayUtil#copyOf (objectArray, currentIndex))
        end
        end
    

    method indexOf : 'any1. 'any1 -> int = fun (anyType) ->
        let anyType = Obj.repr anyType in
        try
        begin
        if (anyType == (Obj.magic 0)) then begin
            for i = 0 to currentIndex - 1 do
                if (objectArray.(i) == (Obj.magic 0)) then begin
                    raise (Java_return (Obj.repr (i)))
                end
            done
        end else begin
            for i = 0 to currentIndex - 1 do
                if (java_equals (Obj.repr anyType) (Obj.repr (objectArray.(i)))) then begin
                    raise (Java_return (Obj.repr (i)))
                end
            done
        end;
        (-1)
        end
        with Java_return value -> Obj.obj value
    

    method lastIndexOf : 'any1. 'any1 -> int = fun (anyType) ->
        let anyType = Obj.repr anyType in
        try
        begin
        if (anyType == (Obj.magic 0)) then begin
            for i = (currentIndex - 1) downto 0 do
                if (objectArray.(i) == (Obj.magic 0)) then begin
                    raise (Java_return (Obj.repr (i)))
                end
            done
        end else begin
            for i = (currentIndex - 1) downto 0 do
                if (java_equals (Obj.repr anyType) (Obj.repr (objectArray.(i)))) then begin
                    raise (Java_return (Obj.repr (i)))
                end
            done
        end;
        (-1)
        end
        with Java_return value -> Obj.obj value
    

    method get ((index : int)) : Obj.t =
        begin
        if (index >= currentIndex) then begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ((CommonLabels.getInstance ())#iNDEX_LABEL));
            ignore (!stringBuffer#appendint (index));
            ignore (!stringBuffer#append (sIZE));
            ignore (!stringBuffer#appendint (currentIndex));
            raise (Failure ((java_string_of (Obj.repr !stringBuffer))))
        end;
        (Obj.repr (objectArray.(index)))
        end
    

    method set : 'any2. int * 'any2 -> Obj.t = fun ((index : int), element) ->
        let element = Obj.repr element in
        begin
        if (index >= currentIndex) then begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ((CommonLabels.getInstance ())#iNDEX_LABEL));
            ignore (!stringBuffer#appendint (index));
            ignore (!stringBuffer#append (sIZE));
            ignore (!stringBuffer#appendint (currentIndex));
            raise (Failure ((java_string_of (Obj.repr !stringBuffer))))
        end;
        let oldValue : Obj.t ref = ref ((Obj.repr objectArray.(index))) in ();
        objectArray.(index) <- (Obj.repr (element));
        (Obj.repr (!oldValue))
        end
    

    method clear () : unit =
        begin
        for i = 0 to currentIndex - 1 do
            objectArray.(i) <- (Obj.magic 0)
        done;
        currentIndex <- 0
        end
    

    method size () : int =
        begin
        currentIndex
        end
    

    method isEmpty () : bool =
        begin
        (currentIndex = 0)
        end
    

    method contains : 'any1. 'any1 -> bool = fun (anyType) ->
        let anyType = Obj.repr anyType in
        begin
        ((self#indexOf (anyType)) >= 0)
        end
    

    method toArray () : Obj.t array =
        begin
        (arrayUtil#copyOf (objectArray, currentIndex))
        end
    

    method toArrayType ((objectArray_arg : Obj.t array)) : Obj.t array =
        try
        begin
        if ((Array.length objectArray_arg) < currentIndex) then begin
            raise (Java_return (Obj.repr ((arrayUtil#copyOfType (objectArray, currentIndex, (java_get_class (Obj.repr objectArray_arg)))))))
        end;
        ignore (Array.blit (objectArray) (0) (objectArray_arg) (0) (currentIndex));
        if ((Array.length objectArray_arg) > currentIndex) then begin
            objectArray_arg.(currentIndex) <- (Obj.magic 0)
        end;
        objectArray_arg
        end
        with Java_return value -> Obj.obj value
    

    method clone () : Obj.t =
        begin
        let size : int ref = ref ((self#size ())) in ();
        let list : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "BasicArrayListS" (Obj.repr (!size)))))) in ();
        let anyType : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        for index = 0 to !size - 1 do
            anyType := objectArray.(index);
            ignore ((Obj.magic !list)#add (!anyType))
        done;
        (Obj.repr ((Obj.magic !list)))
        end
    

    method toString () : string =
        begin
        let cOMMA_SEP : string ref = ref ((CommonSeps.getInstance ())#cOMMA_SEP) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        for index = 0 to currentIndex - 1 do
            ignore (!stringBuffer#append ((java_string_of (Obj.repr objectArray.(index)))));
            ignore (!stringBuffer#append (!cOMMA_SEP))
        done;
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        arrayUtil <- ((ArrayUtil.getInstance ()) :> ArrayUtil.arrayUtil);
        ();
        currentIndex <- 0;
        ();
        objectArray <- objectArray_arg
      end
  end
let () = java_register_constructor "BasicArrayList" (fun arguments -> Obj.repr (new basicArrayList (Obj.obj arguments)))


