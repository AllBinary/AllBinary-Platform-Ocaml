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
(* package org.allbinary.business.installer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.lang.reflect.Method *)
(* import org.allbinary.business.init.db.DbConnectionInfo *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)

class initDb () =
  object
    val mutable anyType : Obj.t = (Obj.magic 0)
    method anyType = anyType
    method set_anyType value' = anyType <- value'
    val mutable mETHOD_CALL_GET_HOST_NAME : string = ""
    method mETHOD_CALL_GET_HOST_NAME = mETHOD_CALL_GET_HOST_NAME
    method set_mETHOD_CALL_GET_HOST_NAME value' = mETHOD_CALL_GET_HOST_NAME <- value'
    val mutable mETHOD_CALL_ADD_USERS : string = ""
    method mETHOD_CALL_ADD_USERS = mETHOD_CALL_ADD_USERS
    method set_mETHOD_CALL_ADD_USERS value' = mETHOD_CALL_ADD_USERS <- value'
    val mutable mETHOD_CALL_ADD_DATABASES : string = ""
    method mETHOD_CALL_ADD_DATABASES = mETHOD_CALL_ADD_DATABASES
    method set_mETHOD_CALL_ADD_DATABASES value' = mETHOD_CALL_ADD_DATABASES <- value'
    val mutable mETHOD_CALL_ADD_TABLES : string = ""
    method mETHOD_CALL_ADD_TABLES = mETHOD_CALL_ADD_TABLES
    method set_mETHOD_CALL_ADD_TABLES value' = mETHOD_CALL_ADD_TABLES <- value'
    val mutable mETHOD_CALL_TEMP_MAIN_PATH : string = ""
    method mETHOD_CALL_TEMP_MAIN_PATH = mETHOD_CALL_TEMP_MAIN_PATH
    method set_mETHOD_CALL_TEMP_MAIN_PATH value' = mETHOD_CALL_TEMP_MAIN_PATH <- value'
    val mutable mETHOD_CALL_MAIN_PATH : string = ""
    method mETHOD_CALL_MAIN_PATH = mETHOD_CALL_MAIN_PATH
    method set_mETHOD_CALL_MAIN_PATH value' = mETHOD_CALL_MAIN_PATH <- value'
    
    
    

    method setHelper : 'any1. 'any1 -> unit = fun (anyType_arg) ->
        let anyType_arg = Obj.repr anyType_arg in
        begin
        anyType <- anyType_arg
        end
    

    method getHelper () : Obj.t =
        begin
        (Obj.repr (anyType))
        end
    

    method getHostName () : string =
        begin
        (try
            let dynamicClass : string ref = ref ((java_get_class (Obj.repr anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!dynamicClass#getMethod (mETHOD_CALL_GET_HOST_NAME, (Obj.magic 0))))) in ();
            let result : string ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (anyType, (Obj.magic 0))))) in ();
            !result
        with e -> begin
            (Obj.magic 0)
        end)
        end
    

    method addUsers () : bool =
        begin
        (try
            let dynamicClass : string ref = ref ((java_get_class (Obj.repr anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!dynamicClass#getMethod (mETHOD_CALL_ADD_USERS, (Obj.magic 0))))) in ();
            let result : bool ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (anyType, (Obj.magic 0))))) in ();
            (!result#booleanValue ())
        with e -> begin
            false
        end)
        end
    

    method addDatabases () : bool =
        begin
        (try
            let dynamicClass : string ref = ref ((java_get_class (Obj.repr anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!dynamicClass#getMethod (mETHOD_CALL_ADD_DATABASES, (Obj.magic 0))))) in ();
            let result : bool ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (anyType, (Obj.magic 0))))) in ();
            (!result#booleanValue ())
        with e -> begin
            false
        end)
        end
    

    method addTables () : bool =
        begin
        (try
            let dynamicClass : string ref = ref ((java_get_class (Obj.repr anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!dynamicClass#getMethod (mETHOD_CALL_ADD_TABLES, (Obj.magic 0))))) in ();
            let result : bool ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (anyType, (Obj.magic 0))))) in ();
            (!result#booleanValue ())
        with e -> begin
            false
        end)
        end
    

    method useTemporaryMainPath () : bool =
        begin
        (try
            let dynamicClass : string ref = ref ((java_get_class (Obj.repr anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!dynamicClass#getMethod (mETHOD_CALL_TEMP_MAIN_PATH, (Obj.magic 0))))) in ();
            let result : bool ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (anyType, (Obj.magic 0))))) in ();
            (!result#booleanValue ())
        with e -> begin
            false
        end)
        end
    

    method useNormalMainPath () : bool =
        begin
        (try
            let dynamicClass : string ref = ref ((java_get_class (Obj.repr anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!dynamicClass#getMethod (mETHOD_CALL_MAIN_PATH, (Obj.magic 0))))) in ();
            let result : bool ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (anyType, (Obj.magic 0))))) in ();
            (!result#booleanValue ())
        with e -> begin
            false
        end)
        end

    initializer
      begin
        anyType <- (Obj.repr (Obj.magic 0));
        mETHOD_CALL_GET_HOST_NAME <- "getHostName";
        mETHOD_CALL_ADD_USERS <- "addUsers";
        mETHOD_CALL_ADD_DATABASES <- "addDatabases";
        mETHOD_CALL_ADD_TABLES <- "addTables";
        mETHOD_CALL_TEMP_MAIN_PATH <- "useTemporaryMainPath";
        mETHOD_CALL_MAIN_PATH <- "useNormalMainPath";
        ();
        ()
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "InitDb" (fun arguments -> Obj.repr (new initDb (Obj.obj arguments)))


