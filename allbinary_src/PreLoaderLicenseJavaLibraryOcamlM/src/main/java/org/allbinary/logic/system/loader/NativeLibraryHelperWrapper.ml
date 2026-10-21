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
(* package org.allbinary.logic.system.loader *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.lang.reflect.Constructor *)
(* import java.lang.reflect.Method *)
(* import org.allbinary.string.CommonStrings *)

class nativeLibraryHelperWrapper ((libraryName_arg : string)) =
  object (self)
    val mutable libraryName : string = ""
    method libraryName = libraryName
    method set_libraryName value' = libraryName <- value'
    val mutable loader : Obj.t = Obj.repr 0
    method loader : 'r. 'r = Obj.magic loader
    method set_loader : 'v. 'v -> unit = fun value' -> loader <- Obj.repr value'
    val mutable anyType : Obj.t = (Obj.magic 0)
    method anyType = anyType
    method set_anyType value' = anyType <- value'
    
    

    method load () : unit =
        begin
        let params : Obj.t array ref = ref ((Array.make (1) (Obj.magic 0))) in ();
        !params.(0) <- (Obj.repr ((self#getLibraryName ())));
        let classes : string array ref = ref ((Array.make (1) (Obj.magic 0))) in ();
        !classes.(0) <- (java_get_class (Obj.repr (self#getLibraryName ())));
        loader <- Obj.repr ((new NativeLibraryClassLoader.nativeLibraryClassLoader (((java_get_class (Obj.repr self))#getClassLoader ()))));
        let myClass : string ref = ref (((Obj.magic loader)#loadClass ("dynamic.NativeLibraryHelper"))) in ();
        let constructor : Obj.t ref = ref ((Obj.repr (!myClass#getConstructor (!classes)))) in ();
        anyType <- ((Obj.magic !constructor)#newInstance (!params));
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        let method_ : Obj.t ref = ref ((Obj.repr ((java_get_class (Obj.repr anyType))#getMethod (!commonStrings#lOAD, (Obj.magic 0))))) in ();
        ignore ((Obj.magic !method_)#invoke (anyType, (Obj.magic 0)))
        end
    

    method unload () : unit =
        begin
        anyType <- (Obj.magic 0);
        loader <- Obj.repr ((Obj.magic 0));
        ignore (Gc.full_major ());
        ignore (Gc.full_major ())
        end
    

    method toString () : string =
        begin
        ("Library: " ^ java_string_of (Obj.repr ((self#getLibraryName ()))))
        end
    

    method getLibraryName () : string =
        begin
        libraryName
        end
    

    method setLibraryName ((libraryName_arg : string)) : unit =
        begin
        libraryName <- libraryName_arg
        end

    initializer
      begin
        libraryName <- "";
        loader <- (Obj.repr (Obj.magic 0));
        anyType <- (Obj.repr (Obj.magic 0));
        ();
        (self#setLibraryName (libraryName_arg))
      end
  end [@@warning "-20"]
let () = java_register_constructor "NativeLibraryHelperWrapper" (fun arguments -> Obj.repr (new nativeLibraryHelperWrapper (Obj.obj arguments)))


