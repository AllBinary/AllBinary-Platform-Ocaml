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
(* package org.allbinary.business.init *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory *)
(* import org.allbinary.logic.communication.log.config.type.LogConfigTypes *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.java.bool.BooleanUtil *)
(* import org.allbinary.logic.string.StringUtil *)

class initInfo () =
  object (self)
    val mutable tESTING : string = ""
    method tESTING = tESTING
    method set_tESTING value' = tESTING <- value'
    val mutable mAINPATH : string = ""
    method mAINPATH = mAINPATH
    method set_mAINPATH value' = mAINPATH <- value'
    val mutable tESTHTMLPATH : string = ""
    method tESTHTMLPATH = tESTHTMLPATH
    method set_tESTHTMLPATH value' = tESTHTMLPATH <- value'
    val mutable testing : string = ""
    method testing = testing
    method set_testing value' = testing <- value'
    val mutable mainPath : AbPath.abPath = (Obj.magic 0)
    method mainPath = mainPath
    method set_mainPath value' = mainPath <- value'
    val mutable testHtmlPath : AbPath.abPath = (Obj.magic 0)
    method testHtmlPath = testHtmlPath
    method set_testHtmlPath value' = testHtmlPath <- value'
    val mutable hasRead : bool = false
    method hasRead = hasRead
    method set_hasRead value' = hasRead <- value'
    
    

    method set () : unit =
        begin
        (try
            let initInfoEntity : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "InitInfoEntity" (Obj.repr ()))))) in ();
            if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#pRELOADER)) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ("created entity", "InitInfo", "set()"))))
            end;
            if (not ((Obj.magic !initInfoEntity)#is ())) then begin
                if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#pRELOADER)) then begin
                    ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ("adding", "InitInfo", "set()"))))
                end;
                ignore ((Obj.magic !initInfoEntity)#add ())
            end else begin
                if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#pRELOADER)) then begin
                    ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ("update", "InitInfo", "set()"))))
                end;
                ignore ((Obj.magic !initInfoEntity)#update ())
            end;
            hasRead <- false
        with e -> begin
            if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#pRELOADERERROR)) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr ("error", "InitInfo", "set()", e))))
            end
        end)
        end
    

    (* Java overload set(HashMap) is not converted: OCaml has one method per name *)
    

    method get () : unit =
        begin
        (try
            testing <- (Obj.magic 0);
            mainPath <- (Obj.magic 0);
            testHtmlPath <- (Obj.magic 0);
            let initInfoEntity : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "InitInfoEntity" (Obj.repr ()))))) in ();
            ignore ((Obj.magic !initInfoEntity)#get ())
        with e -> begin
            if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#pRELOADERERROR)) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr ("error", "InitInfo", "set()", e))))
            end;
            ()
        end)
        end
    

    method setHasRead ((value : bool)) : unit =
        begin
        hasRead <- value
        end
    

    method updateIfNeeded () : unit =
        begin
        (try
            if (not hasRead) then begin
                hasRead <- true;
                (self#get ())
            end
        with e -> begin
            if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#pRELOADERERROR)) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr ("error", "InitInfo", "updateIfNeeded()", e))))
            end;
            ()
        end)
        end
    

    method isTesting () : bool =
        begin
        (try
            (self#updateIfNeeded ());
            ((BooleanUtil.getInstance ())#getFromString (testing))
        with e -> begin
            if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#pRELOADERERROR)) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr ("error", "InitInfo", "updateIfNeeded()", e))))
            end;
            false
        end)
        end
    

    method getTesting () : string =
        begin
        (self#updateIfNeeded ());
        testing
        end
    

    method getTestHtmlPath () : string =
        try
        begin
        (self#updateIfNeeded ());
        if (testHtmlPath != (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr ((java_string_of (Obj.repr testHtmlPath)))))
        end else begin
            raise (Java_return (Obj.repr ((Obj.magic 0))))
        end
        end
        with Java_return value -> Obj.obj value
    

    method getMainPath () : string =
        try
        begin
        (self#updateIfNeeded ());
        if (mainPath != (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr ((java_string_of (Obj.repr mainPath)))))
        end else begin
            raise (Java_return (Obj.repr ((Obj.magic 0))))
        end
        end
        with Java_return value -> Obj.obj value
    

    method setTesting ((value : string)) : unit =
        begin
        testing <- value
        end
    

    method setTestHtmlPath : 'any1. 'any1 -> unit = fun (value) ->
        let value = Obj.repr value in
        begin
        testHtmlPath <- (Obj.magic value)
        end [@@warning "-20"]
    

    method setMainPath : 'any1. 'any1 -> unit = fun (value) ->
        let value = Obj.repr value in
        begin
        mainPath <- (Obj.magic value)
        end [@@warning "-20"]
    

    method isMainPathValid : 'any1. 'any1 -> bool = fun (_abPath) ->
        begin
        true
        end [@@warning "-20"]
    

    method isTestHtmlPathValid : 'any1. 'any1 -> bool = fun (_abPath) ->
        begin
        true
        end [@@warning "-20"]
    

    method isTestingValid ((testing_arg : string)) : bool =
        begin
        ((BooleanUtil.getInstance ())#isStringBoolean (testing_arg))
        end
    

    method toHashMap () : java_hash_map =
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put (tESTING, (self#getTesting ())));
        ignore (!hashMap#put (mAINPATH, (self#getMainPath ())));
        ignore (!hashMap#put (tESTHTMLPATH, (self#getTestHtmlPath ())));
        (!hashMap :> java_hash_map)
        end

    initializer
      begin
        tESTING <- "TESTING";
        mAINPATH <- "MAINPATH";
        tESTHTMLPATH <- "TESTHTMLPATH";
        testing <- (Obj.magic 0);
        mainPath <- ((Obj.magic 0) :> AbPath.abPath);
        testHtmlPath <- ((Obj.magic 0) :> AbPath.abPath);
        hasRead <- false;
        ();
        ()
      end
  end
let () = java_register_constructor "InitInfo" (fun arguments -> Obj.repr (new initInfo (Obj.obj arguments)))

let instance = (new initInfo ())
let get_instance () = instance
let () = java_register_static "InitInfo.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "InitInfo.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


