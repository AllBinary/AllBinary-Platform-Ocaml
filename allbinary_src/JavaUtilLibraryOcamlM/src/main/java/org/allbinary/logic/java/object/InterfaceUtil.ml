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
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)


let viewAll ((myClass : string), (lineBreak : string)) : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let interfaces : string array ref = ref ((myClass#getInterfaces ())) in ();
        ignore (!stringBuffer#append (lineBreak));
        ignore (!stringBuffer#append ("Interfaces: "));
        ignore (!stringBuffer#append (lineBreak));
        for index = 0 to (Array.length !interfaces) - 1 do
            ignore (!stringBuffer#append ("Interface: "));
            ignore (!stringBuffer#append ((!interfaces.(index)#getName ())));
            ignore (!stringBuffer#append (lineBreak))
        done;
        (java_string_of (Obj.repr !stringBuffer))
        end

and getClass ((interfaceName : string), (interfaces : string array)) : string =
        try
        begin
        if (((interfaceName <> (Obj.magic 0)) && (interfaces != (Obj.magic 0))) && ((Array.length interfaces) > 0)) then begin
            for index = 0 to (Array.length interfaces) - 1 do
                if (((interfaces.(index)#getName ())#indexOf (interfaceName)) >= 0) then begin
                    raise (Java_return (Obj.repr (interfaces.(index))))
                end
            done
        end;
        (Obj.magic 0)
        end
        with Java_return value -> Obj.obj value

and isImplemented : 'any2. string * 'any2 -> bool = fun ((clazz : string), anyType) ->
        let anyType = Obj.repr anyType in
        begin
        let classes : string array ref = ref (((java_get_class (Obj.repr anyType))#getInterfaces ())) in ();
        for index = 0 to (Array.length !classes) - 1 do
            if ((clazz#compareTo ((!classes.(index)#getName ()))) == 0) then begin
                true
            end
        done;
        false
        end

(* Java overload isImplemented(String, Any) is not converted: OCaml has one method per name *)

and isImplementedView : 'any2. string * 'any2 -> string = fun ((clazz : string), anyType) ->
        let anyType = Obj.repr anyType in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let classes : string array ref = ref (((java_get_class (Obj.repr anyType))#getInterfaces ())) in ();
        ignore (!stringBuffer#append ("isImplementedView: \n"));
        for index = 0 to (Array.length !classes) - 1 do
            ignore (!stringBuffer#append (clazz));
            ignore (!stringBuffer#append (" should be = "));
            ignore (!stringBuffer#append ((!classes.(index)#getName ())));
            ignore (!stringBuffer#append ((!classes.(index)#getName ())));
            ignore (!stringBuffer#append ((CommonSeps.getInstance ())#nEW_LINE))
        done;
        (java_string_of (Obj.repr !stringBuffer))
        end

let () = java_register_static "InterfaceUtil.viewAll" (fun arguments -> Obj.repr (viewAll (Obj.obj arguments)))
let () = java_register_static "InterfaceUtil.getClass" (fun arguments -> Obj.repr (getClass (Obj.obj arguments)))
let () = java_register_static "InterfaceUtil.isImplemented" (fun arguments -> Obj.repr (isImplemented (Obj.obj arguments)))
let () = java_register_static "InterfaceUtil.isImplementedView" (fun arguments -> Obj.repr (isImplementedView (Obj.obj arguments)))
class interfaceUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "InterfaceUtil" (fun arguments -> Obj.repr (new interfaceUtil (Obj.obj arguments)))


