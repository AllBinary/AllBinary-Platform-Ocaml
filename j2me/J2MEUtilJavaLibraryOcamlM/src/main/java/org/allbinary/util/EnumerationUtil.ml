(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.util *)

open Allbinary_java [@@warning "-33"]
(* import jsinterop.annotations.JsType *)
(* import java.util.Enumeration *)
(* import jsinterop.annotations.JsMethod *)

class enumerationUtil () =
  object (self)
    

    method hasMoreElements ((enumeration : java_enumeration)) : bool =
        begin
        (enumeration#hasMoreElements ())
        end
    

    method nextElement ((enumeration : java_enumeration)) : Obj.t =
        begin
        (Obj.repr ((enumeration#nextElement ())))
        end
    

    method getAsArray ((enumeration : java_enumeration)) : Obj.t array =
        begin
        let basicArrayList : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        while (self#hasMoreElements (enumeration)) do
            ignore (!basicArrayList#add ((self#nextElement (enumeration))))
        done;
        (!basicArrayList#toArray ())
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "EnumerationUtil" (fun arguments -> Obj.repr (new enumerationUtil (Obj.obj arguments)))

let instance = (new enumerationUtil ())
let get_instance () = instance
let () = java_register_static "EnumerationUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "EnumerationUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


