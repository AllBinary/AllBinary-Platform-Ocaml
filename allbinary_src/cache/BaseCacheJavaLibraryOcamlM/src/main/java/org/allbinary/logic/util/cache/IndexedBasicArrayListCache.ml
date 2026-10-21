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
(* package org.allbinary.logic.util.cache *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import jsinterop.annotations.JsType *)
(* import org.allbinary.string.CommonStrings *)
(* import jsinterop.annotations.JsMethod *)
(* import jsinterop.annotations.JsConstructor *)
(* import jsinterop.annotations.JsProperty *)

class indexedBasicArrayListCache () =
  object (self)
    inherit BaseBasicArrayListCache.baseBasicArrayListCache ()
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable size : int = 0
    method size = size
    method set_size value' = size <- value'
    val mutable index : int = 0
    method index = index
    method set_index value' = index <- value'
    
    

    method init ((size_arg : int)) : unit =
        begin
        if (size < size_arg) then begin
            ignore (list#ensureCapacity (size_arg));
            for _index_arg = (size_arg - 1) downto size do
                (self#addDefault ())
            done;
            size <- size_arg
        end
        end [@@warning "-7"]
    

    method getAt ((index_arg : int)) : Obj.t =
        begin
        (Obj.repr (list#objectArray.(index_arg)))
        end [@@warning "-7"]
    

    method addDefault () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method addObject : 'any1. 'any1 -> unit = fun (anyType) ->
        let anyType = Obj.repr anyType in
        begin
        ignore (list#add (anyType))
        end [@@warning "-7"]
    

    method add : 'any1. 'any1 -> unit = fun (cacheableInterface) ->
        let cacheableInterface = Obj.repr cacheableInterface in
        begin
        ignore (list#add ((Obj.magic cacheableInterface)))
        end [@@warning "-7-20"]
    

    method addArray ((_cacheableInterfaces : CacheableInterface.cacheableInterface array)) : unit =
        begin
        raise (Failure ("No Imple"))
        end [@@warning "-7"]
    

    method clear () : unit =
        begin
        index <- 0
        end [@@warning "-7"]

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        size <- 0;
        index <- 0;
        ();
        ()
      end
  end
let () = java_register_constructor "IndexedBasicArrayListCache" (fun arguments -> Obj.repr (new indexedBasicArrayListCache (Obj.obj arguments)))

let createCache ((size_arg : int)) =
        begin
        let indexedBasicArrayListCache : Obj.t ref = ref ((Obj.repr (new indexedBasicArrayListCache ()))) in ();
        ignore ((Obj.magic !indexedBasicArrayListCache)#init (size_arg));
        (Obj.magic !indexedBasicArrayListCache)
        end
let () = java_register_static "IndexedBasicArrayListCache.createCache" (fun arguments -> Obj.repr (createCache (Obj.obj arguments)))


