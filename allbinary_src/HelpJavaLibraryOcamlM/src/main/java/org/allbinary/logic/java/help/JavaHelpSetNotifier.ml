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
(* package org.allbinary.logic.java.help *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.net.URL *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.help.HelpSet *)

let vector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList))
let get_vector () = !vector
let set_vector value' = vector := value'
let () = java_register_static "JavaHelpSetNotifier.get_vector" (fun _ -> Obj.repr (get_vector ()))

let get () : BasicArrayList.basicArrayList =
        begin
        (!vector :> BasicArrayList.basicArrayList)
        end

and isNotified : 'any1. 'any1 -> bool = fun (helpSet) ->
        let helpSet = Obj.repr helpSet in
        begin
        let isNotified : bool ref = ref (false) in ();
        let url : Obj.t ref = ref ((Obj.repr ((Obj.magic helpSet)#getHelpSetURL ()))) in ();
        let size : int ref = ref ((!vector#size ())) in ();
        let urlArray : Obj.t array ref = ref ((!vector#toArray ())) in ();
        for i = 0 to !size - 1 do
            let nextURL : Obj.t ref = ref ((Obj.repr (Obj.magic !urlArray.(i)))) in ();
            if ((String.compare (java_string_of (Obj.repr (Obj.magic !url))) ((java_string_of (Obj.repr (Obj.magic !nextURL))))) == 0) then begin
                isNotified := true
            end
        done;
        ignore (!vector#add ((Obj.magic !url)));
        !isNotified
        end [@@warning "-20"]

let () = java_register_static "JavaHelpSetNotifier.get" (fun arguments -> Obj.repr (get (Obj.obj arguments)))
let () = java_register_static "JavaHelpSetNotifier.isNotified" (fun arguments -> Obj.repr (isNotified (Obj.obj arguments)))
class javaHelpSetNotifier () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "JavaHelpSetNotifier" (fun arguments -> Obj.repr (new javaHelpSetNotifier (Obj.obj arguments)))


