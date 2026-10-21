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
(* import java.io.FileInputStream *)
(* import java.io.IOException *)
(* import java.util.Map *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogBuffer *)
(* import org.allbinary.logic.communication.log.LogFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.StreamUtil *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.system.security.AbCryptUtil *)

let classes : Obj.t ref = ref ((Obj.repr ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ())))
let get_classes () = Obj.magic !classes
let set_classes value' = classes := Obj.repr value'
let () = java_register_static "AbeClassLoader.get_classes" (fun _ -> Obj.repr (get_classes ()))
let pATH : string ref = ref ((Obj.magic 0))
let get_pATH () = !pATH
let set_pATH value' = pATH := value'
let () = java_register_static "AbeClassLoader.get_pATH" (fun _ -> Obj.repr (get_pATH ()))
class abeClassLoader (parent, (key_arg : string)) =
  object (self)
    inherit ClassLoader.classLoader (parent) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable abCryptUtil : AbCryptUtil.abCryptUtil = (Obj.magic 0)
    method abCryptUtil = abCryptUtil
    method set_abCryptUtil value' = abCryptUtil <- value'
    val mutable lOAD_CLASS : string = ""
    method lOAD_CLASS = lOAD_CLASS
    method set_lOAD_CLASS value' = lOAD_CLASS <- value'
    val mutable eNCRYPTED_EXTENSION : string = ""
    method eNCRYPTED_EXTENSION = eNCRYPTED_EXTENSION
    method set_eNCRYPTED_EXTENSION value' = eNCRYPTED_EXTENSION <- value'
    val mutable key : string = ""
    method key = key
    method set_key value' = key <- value'
    
    

    method findLoadedClass1 ((name : string)) : string =
        begin
        (Obj.magic ((Obj.magic !classes)#get (name)))
        end [@@warning "-7"]
    

    method loadClass ((name : string)) : string =
        begin
        (self#loadClass (name, false))
        end [@@warning "-7"]
    

    (* Java overload loadClass(String, BOOLEAN) is not converted: OCaml has one method per name *)
    

    method loadClassBytesFromFile ((name : string)) : int array =
        begin
        let in_ : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let cname : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING) in ();
        (try
            cname := ((java_string_of (Obj.repr (!pATH)) ^ (java_string_replace name (Obj.repr ('.')) (Obj.repr ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATORCHAR)))) ^ eNCRYPTED_EXTENSION);
            in_ := Obj.repr ((new FileInputStream.fileInputStream (!cname)));
            let decrypted : int array ref = ref ((abCryptUtil#decrypt ((Obj.magic !in_), key))) in ();
            !decrypted
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#lOADERERROR)) then begin
                ignore ((Obj.magic logUtil)#put (((("(Before LogBuffer Output) Failure loading Encrypted: " ^ name) ^ " File: ") ^ !cname), "AbeClassLoader", "loadClassBytes", e))
            end;
            ignore ((StreamUtil.getInstance ())#close ((Obj.magic !in_)))
        end);
        (Obj.magic 0)
        end [@@warning "-7"]
    

    method oldLoadClass ((name : string), (resolve : bool)) : string =
        try
        begin
        let loadedWith : string ref = ref ("findLoadedClass1") in ();
        (try
            let myClass : string ref = ref ((self#findLoadedClass1 (name))) in ();
            if (!myClass == (Obj.magic 0)) then begin
                (try
                    loadedWith := "super.loadClass";
                    let normalClass : string ref = ref ((super#loadClass (name, resolve))) in ();
                    if (!normalClass != (Obj.magic 0)) then begin
                        raise (Java_return (Obj.repr (!normalClass)))
                    end
                with e -> begin
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#lOADER)) then begin
                        ignore ((Obj.magic logUtil)#putF (((("Failed Loaded Class: " ^ name) ^ " with: ") ^ !loadedWith), self, lOAD_CLASS))
                    end
                end);
                loadedWith := "loadClassBytes";
                let classBytes : int array ref = ref ((self#loadClassBytesFromFile (name))) in ();
                if (!classBytes == (Obj.magic 0)) then begin
                    raise (Failure (("Bytes not loaded for: " ^ name)))
                end;
                myClass := (self#defineClass (name, !classBytes, 0, (Array.length !classBytes)));
                if (!myClass == (Obj.magic 0)) then begin
                    raise (Failure (("Class Not Defineable for: " ^ name)))
                end;
                ignore ((Obj.magic !classes)#put (name, !myClass))
            end else begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#lOADER)) then begin
                    ignore ((Obj.magic logUtil)#putF (((("Already Loaded: " ^ name) ^ " with: ") ^ !loadedWith), self, lOAD_CLASS))
                end
            end;
            ignore (self#resolveClass (!myClass));
            !myClass
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#lOADERERROR)) then begin
                ignore ((Obj.magic logUtil)#put (("Failure loading: " ^ name), "AbeClassLoader", lOAD_CLASS, e))
            end;
            (Obj.magic 0)
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        abCryptUtil <- ((AbCryptUtil.getInstance ()) :> AbCryptUtil.abCryptUtil);
        lOAD_CLASS <- "loadClass";
        eNCRYPTED_EXTENSION <- (java_string_of (Obj.repr ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#eXTENSION_SEP)) ^ "abc");
        ();
        ();
        (* super(...) is the inherit clause *) ();
        key <- key_arg;
        pATH := (java_string_of (Obj.repr (((org.get_allbinary ())#globals#uRLGLOBALS#getWebappPath ()))) ^ "WEB-INF/classes/")
      end
  end [@@warning "-20"]
let () = java_register_constructor "AbeClassLoader" (fun arguments -> Obj.repr (new abeClassLoader (Obj.obj arguments)))


