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
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class abstractArrayListPool ((cacheableInterfaceFactoryInterface_arg : CacheableInterfaceFactoryInterface.cacheableInterfaceFactoryInterface)) =
  object
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable buffers : BasicArrayList.basicArrayList = (Obj.magic 0)
    method buffers = buffers
    method set_buffers value' = buffers <- value'
    val mutable cacheableInterfaceFactoryInterface : CacheableInterfaceFactoryInterface.cacheableInterfaceFactoryInterface = (Obj.magic 0)
    method cacheableInterfaceFactoryInterface = cacheableInterfaceFactoryInterface
    method set_cacheableInterfaceFactoryInterface value' = cacheableInterfaceFactoryInterface <- value'
    
    

    method clear () : unit =
        begin
        raise (Failure (commonStrings#nOT_IMPLEMENTED))
        end
    

    method remove : 'any1. 'any1 -> CacheableInterface.cacheableInterface = fun (_key) ->
        begin
        raise (Failure (commonStrings#nOT_IMPLEMENTED))
        end
    

    method add : 'any1. 'any1 -> unit = fun (cacheableInterface) ->
        let cacheableInterface = Obj.repr cacheableInterface in
        begin
        ignore (buffers#add ((Obj.magic cacheableInterface)))
        end [@@warning "-20"]
    

    method addArray ((cacheableInterfaces : CacheableInterface.cacheableInterface array)) : unit =
        begin
        for index = 0 to (Array.length cacheableInterfaces) - 1 do
            ignore (buffers#add (cacheableInterfaces.(index)))
        done
        end

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        buffers <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ();
        cacheableInterfaceFactoryInterface <- cacheableInterfaceFactoryInterface_arg
      end
  end
let () = java_register_constructor "AbstractArrayListPool" (fun arguments -> Obj.repr (new abstractArrayListPool (Obj.obj arguments)))


