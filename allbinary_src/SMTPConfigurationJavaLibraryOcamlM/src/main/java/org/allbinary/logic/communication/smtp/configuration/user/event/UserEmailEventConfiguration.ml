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
(* package org.allbinary.logic.communication.smtp.configuration.user.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringUtil *)

class userEmailEventConfiguration () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable eventListenerClassPath : string = ""
    method eventListenerClassPath = eventListenerClassPath
    method set_eventListenerClassPath value' = eventListenerClassPath <- value'
    
    
    

    method getName () : string =
        begin
        name
        end
    

    method setName ((name_arg : string)) : unit =
        begin
        name <- name_arg
        end
    

    method getEventListenerClassPath () : string =
        begin
        eventListenerClassPath
        end
    

    method setEventListenerClassPath ((eventListenerClassPath_arg : string)) : unit =
        begin
        eventListenerClassPath <- eventListenerClassPath_arg
        end
    

    method log () : string =
        begin
        (((("\nUser Email Event Log Info:" ^ "\nName: ") ^ (self#getName ())) ^ "\nEventListenerClassPath: ") ^ java_string_of (Obj.repr ((self#getEventListenerClassPath ()))))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        name <- "";
        eventListenerClassPath <- "";
        ();
        (self#setName ((StringUtil.getInstance ())#eMPTY_STRING));
        (self#setEventListenerClassPath ((StringUtil.getInstance ())#eMPTY_STRING));
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#eMAILLOGGING)) then begin
            ignore ((Obj.magic logUtil)#putF ("New", self, " Constructor"))
        end
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "UserEmailEventConfiguration" (fun arguments -> Obj.repr (new userEmailEventConfiguration (Obj.obj arguments)))


