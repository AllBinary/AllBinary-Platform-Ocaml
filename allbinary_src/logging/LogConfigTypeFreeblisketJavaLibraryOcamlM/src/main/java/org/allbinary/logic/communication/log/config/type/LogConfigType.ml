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
(* package org.allbinary.logic.communication.log.config.type *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

let availableLogConfigTypes : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList))
let get_availableLogConfigTypes () = !availableLogConfigTypes
let set_availableLogConfigTypes value' = availableLogConfigTypes := value'
let () = java_register_static "LogConfigType.get_availableLogConfigTypes" (fun _ -> Obj.repr (get_availableLogConfigTypes ()))
class logConfigType ((name_arg : string), (description_arg : string)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable description : string = ""
    method description = description
    method set_description value' = description <- value'
    
    

    method getName () : string =
        begin
        name
        end
    

    method getDescription () : string =
        begin
        description
        end
    

    method setName ((value : string)) : unit =
        begin
        name <- value
        end
    

    method setDescription ((value : string)) : unit =
        begin
        description <- value
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        ();
        name <- name_arg;
        description <- description_arg;
        ignore (!availableLogConfigTypes#add (self))
      end
  end [@@warning "-20"]
let () = java_register_constructor "LogConfigType" (fun arguments -> Obj.repr (new logConfigType (Obj.obj arguments)))


