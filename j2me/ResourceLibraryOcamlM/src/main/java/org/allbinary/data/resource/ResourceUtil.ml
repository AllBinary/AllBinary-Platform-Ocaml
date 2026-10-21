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
(* package org.allbinary.data.resource *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.InputStream *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)

let classLoader : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_classLoader () = !classLoader
let set_classLoader value' = classLoader := value'
let () = java_register_static "ResourceUtil.get_classLoader" (fun _ -> Obj.repr (get_classLoader ()))
class resourceUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method setLoadingPaths ((_path : string), (_ext : string)) : unit =
        begin
        ignore ((Obj.magic logUtil)#putF ((CommonStrings.getInstance ())#nOT_IMPLEMENTED, self, "setLoadingPaths"))
        end
    

    method setClassLoader : 'any1. 'any1 -> unit = fun (classLoader_arg) ->
        let classLoader_arg = Obj.repr classLoader_arg in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Resource Loader: "))#append ((java_get_class (Obj.repr (Obj.magic classLoader_arg))))))), self, "setClassLoader"));
        classLoader := (Obj.magic classLoader_arg)
        end [@@warning "-20"]
    

    method getResourceAsStream : 'return. string -> 'return = fun ((resource : string)) ->
        begin
        let inputStream : Obj.t ref = ref ((Obj.repr (self#getResourceAsStreamAtStart (resource, 2)))) in ();
        if ((Obj.magic !inputStream) == (Obj.magic 0)) then begin
            inputStream := Obj.repr ((self#getResourceAsStreamAtStart (resource, 1)));
            if ((Obj.magic !inputStream) == (Obj.magic 0)) then begin
                raise (Failure ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Unable to obtain: "))#append (resource))))))
            end
        end;
        (Obj.magic ((Obj.magic !inputStream)))
        end
    

    method getResourceAsStreamAtStart : 'return. string * int -> 'return = fun ((resource : string), (startIndex : int)) ->
        try
        begin
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        let index : int ref = ref ((java_string_index_of resource (Obj.repr (!commonSeps#cOLON)))) in ();
        let resourcePath : string ref = ref ((String.sub resource ((!index + startIndex)) (String.length resource - ((!index + startIndex))))) in ();
        let inputStream : Obj.t ref = ref ((Obj.repr ((java_get_class (Obj.repr resource))#getResourceAsStream (!resourcePath)))) in ();
        if ((Obj.magic !inputStream) != (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr ((Obj.magic !inputStream))))
        end;
        let classLoader_arg : Obj.t ref = ref ((Obj.repr (Obj.magic !classLoader))) in ();
        inputStream := Obj.repr (((Obj.magic !classLoader_arg)#getResourceAsStream (!resourcePath)));
        if ((Obj.magic !inputStream) != (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr ((Obj.magic !inputStream))))
        end;
        inputStream := Obj.repr ((((Obj.magic (java_call_static "Thread.currentThread" (Obj.repr ())))#getContextClassLoader ())#getResourceAsStream (!resourcePath)));
        if ((Obj.magic !inputStream) != (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr ((Obj.magic !inputStream))))
        end;
        (Obj.magic ((Obj.magic !inputStream)))
        end
        with Java_return value -> Obj.obj value
    

    method addResource ((_resource : string), (_value : int)) : unit =
        begin
        ()
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ResourceUtil" (fun arguments -> Obj.repr (new resourceUtil (Obj.obj arguments)))

let instance = (new resourceUtil ())
let get_instance () = instance
let () = java_register_static "ResourceUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ResourceUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


