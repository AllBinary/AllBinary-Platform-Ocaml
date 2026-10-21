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
(* package org.allbinary.animation.resource *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.animation.BasicAnimationInterfaceFactoryInterface *)
(* import org.allbinary.animation.NullAnimationFactory *)
(* import org.allbinary.game.resource.ResourceLoadingLevelFactory *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.RectangleFactory *)
(* import org.allbinary.image.ImageCache *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.ABHashtable *)

class baseResourceAnimationInterfaceFactoryInterfaceFactory ((name_arg : string), hashtable_arg, rectangleHashtable_arg, rectangleArrayHashtable) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable hashtable : Obj.t = Obj.repr 0
    method hashtable : 'r. 'r = Obj.magic hashtable
    method set_hashtable : 'v. 'v -> unit = fun value' -> hashtable <- Obj.repr value'
    val mutable rectangleHashtable : Obj.t = Obj.repr 0
    method rectangleHashtable : 'r. 'r = Obj.magic rectangleHashtable
    method set_rectangleHashtable : 'v. 'v -> unit = fun value' -> rectangleHashtable <- Obj.repr value'
    val mutable rectangleArrayOfArraysHashtable : Obj.t = Obj.repr 0
    method rectangleArrayOfArraysHashtable : 'r. 'r = Obj.magic rectangleArrayOfArraysHashtable
    method set_rectangleArrayOfArraysHashtable : 'v. 'v -> unit = fun value' -> rectangleArrayOfArraysHashtable <- Obj.repr value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable initialized : bool = false
    method initialized = initialized
    method set_initialized value' = initialized <- value'
    
    

    method getName () : string =
        begin
        name
        end
    

    method init ((_level : int)) : unit =
        begin
        let commonStrings_arg : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Available List of Animations: "))#append ((java_string_of (Obj.repr (Obj.magic hashtable))))))), self, !commonStrings_arg#iNIT));
        (self#setInitialized (true))
        end
    

    method initImageCache : 'any1. 'any1 * int -> unit = fun (_imageCache, (_level : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method add : 'any2. string * 'any2 -> unit = fun ((resource : string), animationInterfaceFactoryInterface) ->
        let animationInterfaceFactoryInterface = Obj.repr animationInterfaceFactoryInterface in
        begin
        if ((Obj.magic hashtable)#containsKey ((Obj.magic resource))) then begin
            raise (Failure ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Resource Already Created: "))#append (resource))))))
        end;
        ignore ((Obj.magic hashtable)#put (resource, (Obj.magic animationInterfaceFactoryInterface)))
        end [@@warning "-20"]
    

    method getBasicAnimationInterfaceFactoryInstance ((resource : string)) : BasicAnimationInterfaceFactoryInterface.basicAnimationInterfaceFactoryInterface =
        try
        begin
        let basicAnimationInterfaceFactoryInterfaceCanBeNull : Obj.t ref = ref ((Obj.repr ((Obj.magic hashtable)#get (resource)))) in ();
        if (!basicAnimationInterfaceFactoryInterfaceCanBeNull == (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr ((NullAnimationFactory.get_nULL_NOT_FOR_USE_ANIMATION_FACTORY ()))))
        end;
        ((Obj.magic !basicAnimationInterfaceFactoryInterfaceCanBeNull) :> BasicAnimationInterfaceFactoryInterface.basicAnimationInterfaceFactoryInterface)
        end
        with Java_return value -> Obj.obj value
    

    method getRectangle : 'return. string -> 'return = fun ((resource : string)) ->
        try
        begin
        let rectangleCanBeNull : Obj.t ref = ref ((Obj.repr ((Obj.magic rectangleHashtable)#get (resource)))) in ();
        if (!rectangleCanBeNull == (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr ((RectangleFactory.get_sINGLETON ()))))
        end;
        (Obj.magic ((Obj.magic !rectangleCanBeNull)))
        end
        with Java_return value -> Obj.obj value
    

    method addRectangle : 'any2. string * 'any2 -> unit = fun ((resource : string), rectangle) ->
        let rectangle = Obj.repr rectangle in
        begin
        ignore ((Obj.magic rectangleHashtable)#put (resource, (Obj.magic rectangle)))
        end [@@warning "-20"]
    

    method getRectangleArrayOfArrays : 'return. string -> 'return = fun ((resource : string)) ->
        try
        begin
        let valueCanBeNull : Obj.t ref = ref ((Obj.repr ((Obj.magic rectangleArrayOfArraysHashtable)#get (resource)))) in ();
        if (!valueCanBeNull != (Obj.magic 0)) then begin
            let rectangleArrayOfArrays : Obj.t ref = ref ((Obj.repr (Obj.magic !valueCanBeNull))) in ();
            raise (Java_return (Obj.repr ((Obj.magic !rectangleArrayOfArrays))))
        end else begin
            raise (Java_return (Obj.repr ((RectangleFactory.get_aRRAY_OF_ARRAYS ()))))
        end
        end
        with Java_return value -> Obj.obj value
    

    method addRectangleArrayOfArrays ((resource : string), rectangleArrayOfArrays) : unit =
        begin
        ignore ((Obj.magic rectangleArrayOfArraysHashtable)#put (resource, rectangleArrayOfArrays))
        end
    

    method isFeature () : bool =
        begin
        false
        end
    

    method isLoadingLevel ((level : int)) : bool =
        try
        begin
        let resourceLoadingLevelFactory : ResourceLoadingLevelFactory.resourceLoadingLevelFactory ref = ref (((ResourceLoadingLevelFactory.getInstance ()) :> ResourceLoadingLevelFactory.resourceLoadingLevelFactory)) in ();
        if (level = (!resourceLoadingLevelFactory#lOAD_ALL#getLevel ())) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method toString () : string =
        begin
        (java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append ((java_get_class (Obj.repr self))))#append ((CommonSeps.getInstance ())#sEMICOLON))#append ((CommonSeps.getInstance ())#sPACE))#append (name))))
        end
    

    method getHashtable : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic hashtable)))
        end
    

    method getRectangleHashtable : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic rectangleHashtable)))
        end
    

    method getRectangleArrayOfArraysHashtable : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic rectangleArrayOfArraysHashtable)))
        end
    

    method setInitialized ((initialized_arg : bool)) : unit =
        begin
        initialized <- initialized_arg
        end
    

    method isInitialized () : bool =
        begin
        initialized
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        ();
        ();
        initialized <- false;
        ();
        hashtable <- Obj.repr (hashtable_arg);
        rectangleHashtable <- Obj.repr (rectangleHashtable_arg);
        rectangleArrayOfArraysHashtable <- Obj.repr (rectangleArrayHashtable);
        name <- name_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "BaseResourceAnimationInterfaceFactoryInterfaceFactory" (fun arguments -> Obj.repr (new baseResourceAnimationInterfaceFactoryInterfaceFactory (Obj.obj arguments)))


