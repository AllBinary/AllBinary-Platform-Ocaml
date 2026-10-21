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
(* package org.allbinary.animation *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.media.ScaleProperties *)

class baseAnimationInterfaceFactoryInterfaceComposite ((basicAnimationInterfaceFactoryInterfaceArray_arg : BasicAnimationInterfaceFactoryInterface.basicAnimationInterfaceFactoryInterface array)) =
  object
    val mutable basicAnimationInterfaceFactoryInterfaceArray : BasicAnimationInterfaceFactoryInterface.basicAnimationInterfaceFactoryInterface array = (Obj.magic 0)
    method basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray
    method set_basicAnimationInterfaceFactoryInterfaceArray value' = basicAnimationInterfaceFactoryInterfaceArray <- value'
    
    

    method getInstance : 'return. int -> 'return = fun ((_instanceId : int)) ->
        begin
        (Obj.magic (((NullAnimationFactory.getFactoryInstance ())#getInstance (0))))
        end
    

    method getBasicAnimationInterfaceFactoryInterfaceArray () : BasicAnimationInterfaceFactoryInterface.basicAnimationInterfaceFactoryInterface array =
        begin
        basicAnimationInterfaceFactoryInterfaceArray
        end
    

    method setBasicAnimationInterfaceFactoryInterfaceArray ((basicAnimationInterfaceFactoryInterfaceArray_arg : BasicAnimationInterfaceFactoryInterface.basicAnimationInterfaceFactoryInterface array)) : unit =
        begin
        basicAnimationInterfaceFactoryInterfaceArray <- basicAnimationInterfaceFactoryInterfaceArray_arg
        end
    

    method setInitialScale : 'any1. 'any1 -> unit = fun (_scaleProperties) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        basicAnimationInterfaceFactoryInterfaceArray <- basicAnimationInterfaceFactoryInterfaceArray_arg
      end
  end
let () = java_register_constructor "BaseAnimationInterfaceFactoryInterfaceComposite" (fun arguments -> Obj.repr (new baseAnimationInterfaceFactoryInterfaceComposite (Obj.obj arguments)))


