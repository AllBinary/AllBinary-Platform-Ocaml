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
(* package org.allbinary.logic.java.anyType *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.lang.reflect.Constructor *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)


let view : 'any1. 'any1 * string -> string = fun (constructor, (lineBreak : string)) ->
        let constructor = Obj.repr constructor in
        try
        begin
        if ((Obj.magic constructor) != (Obj.magic 0)) then begin
            let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append (((Obj.magic constructor)#getName ())));
            let classes : string array ref = ref (((Obj.magic constructor)#getParameterTypes ())) in ();
            for index = 0 to (Array.length !classes) - 1 do
                ignore (!stringBuffer#append (!commonSeps#sPACE));
                ignore (!stringBuffer#append ((!classes.(index)#getName ())));
                ignore (!stringBuffer#append (!commonSeps#cOLON));
                ignore (!stringBuffer#appendint (index))
            done;
            ignore (!stringBuffer#append (lineBreak));
            raise (Java_return (Obj.repr ((java_string_of (Obj.repr !stringBuffer)))))
        end else begin
            "Constructor Null"
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

let () = java_register_static "ConstructorUtil.view" (fun arguments -> Obj.repr (view (Obj.obj arguments)))
class constructorUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ConstructorUtil" (fun arguments -> Obj.repr (new constructorUtil (Obj.obj arguments)))

let viewAll ((myClass : string), (lineBreak : string)) : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let constructor : Obj.t ref = ref ((Obj.repr (myClass#getConstructors ()))) in ();
        ignore (!stringBuffer#append ("Constructors: "));
        ignore (!stringBuffer#append (lineBreak));
        for index = 0 to (Array.length (Obj.magic !constructor)) - 1 do
            ignore (!stringBuffer#append ((view ((Obj.magic !constructor).(index), lineBreak))))
        done;
        (java_string_of (Obj.repr !stringBuffer))
        end
let () = java_register_static "ConstructorUtil.viewAll" (fun arguments -> Obj.repr (viewAll (Obj.obj arguments)))


