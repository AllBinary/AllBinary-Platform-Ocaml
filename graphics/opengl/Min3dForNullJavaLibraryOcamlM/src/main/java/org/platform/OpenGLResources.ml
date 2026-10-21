(* Generated Code Do Not Modify *)
(* package org.platform *)

open Allbinary_java [@@warning "-33"]
(* import java.io.InputStream *)

class openGLResources () =
  object
    

    method init () : unit =
        begin
        ()
        end
    

    method isExcluded ((_name : string)) : bool =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getIdentifier ((_name : string), (_defType : string), (_defPackage : string)) : int =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method openRawResource : 'return. int -> 'return = fun ((_id : int)) ->
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method openRawResourceFromName : 'return. string -> 'return = fun ((_resourceName : string)) ->
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getResourceAsStream : 'return. string -> 'return = fun ((_resourceName : string)) ->
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getPackageName () : string =
        begin
        raise (Failure ("RuntimeException"))
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "OpenGLResources" (fun arguments -> Obj.repr (new openGLResources (Obj.obj arguments)))

let instance = (new openGLResources ())
let get_instance () = instance
let () = java_register_static "OpenGLResources.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "OpenGLResources.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


