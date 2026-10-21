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
(* package org.allbinary.logic.communication.log *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.java.exception.ExceptionUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.time.TimeStampUtil *)

class logFormatUtil () =
  object
    
    

    method get : 'any4. string * string * string * 'any4 -> string = fun ((_className : string), (_functionName : string), (_specialMessage : string), _exception_) ->
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getS ((_className : string), (_functionName : string), (_specialMessage : string)) : string =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getO : 'any1. 'any1 -> string = fun (_exception_) ->
        begin
        raise (Failure ("RuntimeException"))
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "LogFormatUtil" (fun arguments -> Obj.repr (new logFormatUtil (Obj.obj arguments)))

let instance = (new logFormatUtil ())
let get_instance () = instance
let () = java_register_static "LogFormatUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "LogFormatUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


