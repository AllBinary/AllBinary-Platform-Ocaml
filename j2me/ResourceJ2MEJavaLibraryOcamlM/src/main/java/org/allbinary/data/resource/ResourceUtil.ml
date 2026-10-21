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
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)

class resourceUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method setLoadingPaths ((_path : string), (_ext : string)) : unit =
        begin
        ignore ((Obj.magic logUtil)#putF ((CommonStrings.getInstance ())#nOT_IMPLEMENTED, self, "setLoadingPaths"))
        end
    

    method getResourceAsStream : 'return. string -> 'return = fun ((resource : string)) ->
        begin
        let inputStream : Obj.t ref = ref ((Obj.repr ((java_get_class (Obj.repr resource))#getResourceAsStream (resource)))) in ();
        if ((Obj.magic !inputStream) == (Obj.magic 0)) then begin
            inputStream := Obj.repr ((self#getResourceAsStreamAtStart (resource, 2)));
            if ((Obj.magic !inputStream) == (Obj.magic 0)) then begin
                inputStream := Obj.repr ((self#getResourceAsStreamAtStart (resource, 1)));
                if ((Obj.magic !inputStream) == (Obj.magic 0)) then begin
                    let stringMaker : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                    let index : int ref = ref ((java_string_last_index_of resource (Obj.repr ('/')))) in ();
                    let resourcePath : string ref = ref ((String.sub resource ((!index + 1)) (String.length resource - ((!index + 1))))) in ();
                    inputStream := Obj.repr (((java_get_class (Obj.repr resource))#getResourceAsStream (!resourcePath)));
                    if ((Obj.magic !inputStream) == (Obj.magic 0)) then begin
                        resourcePath := (String.sub resource (!index) (String.length resource - (!index)));
                        inputStream := Obj.repr (((java_get_class (Obj.repr resource))#getResourceAsStream (!resourcePath)));
                        if ((Obj.magic !inputStream) == (Obj.magic 0)) then begin
                            let rES : string ref = ref ("res") in ();
                            resourcePath := (java_string_of (Obj.repr ((!stringMaker#append (!rES))#append ((String.sub resource (!index) (String.length resource - (!index)))))));
                            inputStream := Obj.repr (((java_get_class (Obj.repr resource))#getResourceAsStream (!resourcePath)));
                            if ((Obj.magic !inputStream) == (Obj.magic 0)) then begin
                                ignore (!stringMaker#delete (0, (!stringMaker#length ())));
                                resourcePath := (java_string_of (Obj.repr (((!stringMaker#append ("/"))#append (!rES))#append ((String.sub resource (!index) (String.length resource - (!index)))))));
                                inputStream := Obj.repr (((java_get_class (Obj.repr resource))#getResourceAsStream (!resourcePath)));
                                let cOLON : string ref = ref ((CommonSeps.getInstance ())#cOLON) in ();
                                if ((Obj.magic !inputStream) == (Obj.magic 0)) then begin
                                    ignore (!stringMaker#delete (0, (!stringMaker#length ())));
                                    resourcePath := (java_string_of (Obj.repr (((!stringMaker#append (!rES))#append (!cOLON))#append ((String.sub resource (!index) (String.length resource - (!index)))))));
                                    inputStream := Obj.repr (((java_get_class (Obj.repr resource))#getResourceAsStream (!resourcePath)));
                                    if ((Obj.magic !inputStream) == (Obj.magic 0)) then begin
                                        ignore (!stringMaker#delete (0, (!stringMaker#length ())));
                                        resourcePath := (java_string_of (Obj.repr (((!stringMaker#append (!rES))#append (!cOLON))#append ((String.sub resource ((!index + 1)) (String.length resource - ((!index + 1))))))));
                                        inputStream := Obj.repr (((java_get_class (Obj.repr resource))#getResourceAsStream (!resourcePath)));
                                        if ((Obj.magic !inputStream) == (Obj.magic 0)) then begin
                                            let rESOURCE_STRING : string ref = ref ("resource") in ();
                                            ignore (!stringMaker#delete (0, (!stringMaker#length ())));
                                            resourcePath := (java_string_of (Obj.repr (((!stringMaker#append (!rESOURCE_STRING))#append (!cOLON))#append ((String.sub resource (!index) (String.length resource - (!index)))))));
                                            inputStream := Obj.repr (((java_get_class (Obj.repr resource))#getResourceAsStream (!resourcePath)));
                                            if ((Obj.magic !inputStream) == (Obj.magic 0)) then begin
                                                ignore (!stringMaker#delete (0, (!stringMaker#length ())));
                                                resourcePath := (java_string_of (Obj.repr (((!stringMaker#append (!rESOURCE_STRING))#append (!cOLON))#append ((String.sub resource ((!index + 1)) (String.length resource - ((!index + 1))))))));
                                                inputStream := Obj.repr (((java_get_class (Obj.repr resource))#getResourceAsStream (!resourcePath)));
                                                if ((Obj.magic !inputStream) == (Obj.magic 0)) then begin
                                                    ignore (!stringMaker#delete (0, (!stringMaker#length ())));
                                                    raise (Failure ((java_string_of (Obj.repr ((!stringMaker#append ("Unable to obtain: "))#append (resource))))))
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end;
        (Obj.magic ((Obj.magic !inputStream)))
        end
    

    method getResourceAsStreamAtStart : 'return. string * int -> 'return = fun ((resource : string), (startIndex : int)) ->
        try
        begin
        let stringMaker : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let index : int ref = ref ((java_string_index_of resource (Obj.repr ((CommonSeps.getInstance ())#cOLON)))) in ();
        let resourcePath : string ref = ref ((String.sub resource ((!index + startIndex)) (String.length resource - ((!index + startIndex))))) in ();
        let inputStream : Obj.t ref = ref ((Obj.repr ((java_get_class (Obj.repr resource))#getResourceAsStream (!resourcePath)))) in ();
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

let instance = ref ((new resourceUtil ()))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "ResourceUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        !instance
        end
let () = java_register_static "ResourceUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


