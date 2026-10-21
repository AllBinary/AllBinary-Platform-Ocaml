(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.business.user.role *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class basicUserRoles () =
  object (self)
    val mutable roleVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method roleVector = roleVector
    method set_roleVector value' = roleVector <- value'
    

    method getRole : 'return. string -> 'return = fun ((role : string)) ->
        try
        begin
        let roleVector_arg : BasicArrayList.basicArrayList ref = ref (((self#getAll ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!roleVector_arg#size ())) in ();
        for index = 0 to !size - 1 do
            let userRole : Obj.t ref = ref ((Obj.repr (Obj.magic (!roleVector_arg#get (index))))) in ();
            if ((String.compare role ((java_string_of (Obj.repr (Obj.magic !userRole))))) == 0) then begin
                raise (Java_return (Obj.repr ((Obj.magic !userRole))))
            end
        done;
        raise (Failure ("Unable to get role - Unknown Role"))
        end
        with Java_return value -> Obj.obj value
    

    method getAll () : BasicArrayList.basicArrayList =
        begin
        (roleVector :> BasicArrayList.basicArrayList)
        end

    initializer
      begin
        roleVector <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ()
      end
  end
let () = java_register_constructor "BasicUserRoles" (fun arguments -> Obj.repr (new basicUserRoles (Obj.obj arguments)))

let instance = (new basicUserRoles ())
let get_instance () = instance
let () = java_register_static "BasicUserRoles.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "BasicUserRoles.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


