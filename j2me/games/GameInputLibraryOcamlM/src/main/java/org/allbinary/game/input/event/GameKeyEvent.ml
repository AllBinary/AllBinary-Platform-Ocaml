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
(* package org.allbinary.game.input.event *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)

class gameKeyEvent ((anyType : Obj.t), (sourceId_arg : int), (originalKey_arg : int), (gameActionKey_arg : int), (key_arg : int), (repeated_arg : bool)) =
  object (self)
    inherit AllBinaryEventObject.allBinaryEventObject (anyType)
    val mutable sourceId : int = 0
    method sourceId = sourceId
    method set_sourceId value' = sourceId <- value'
    val mutable repeated : bool = false
    method repeated = repeated
    method set_repeated value' = repeated <- value'
    val mutable key : int = 0
    method key = key
    method set_key value' = key <- value'
    val mutable gameActionKey : int = 0
    method gameActionKey = gameActionKey
    method set_gameActionKey value' = gameActionKey <- value'
    val mutable originalKey : int = 0
    method originalKey = originalKey
    method set_originalKey value' = originalKey <- value'
    
    

    method init : 'any1. 'any1 -> unit = fun (anyType) ->
        let anyType = Obj.repr anyType in
        begin
        ignore (self#setSource (anyType))
        end [@@warning "-7"]
    

    method setRepeatEvents ((repeated_arg : bool)) : unit =
        begin
        repeated <- repeated_arg
        end [@@warning "-7"]
    

    method hasRepeatEvents () : bool =
        begin
        repeated
        end [@@warning "-7"]
    

    method getKey () : int =
        begin
        key
        end [@@warning "-7"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("\nKey: "));
        ignore (!stringBuffer#appendint ((self#getKey ())));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]
    

    method getOriginalKey () : int =
        begin
        originalKey
        end [@@warning "-7"]
    

    method setOriginalKey ((originalKey_arg : int)) : unit =
        begin
        originalKey <- originalKey_arg
        end [@@warning "-7"]
    

    method getGameActionKey () : int =
        begin
        gameActionKey
        end [@@warning "-7"]
    

    method setGameActionKey ((gameActionKey_arg : int)) : unit =
        begin
        gameActionKey <- gameActionKey_arg
        end [@@warning "-7"]
    

    method getSourceId () : int =
        begin
        sourceId
        end [@@warning "-7"]

    initializer
      begin
        ();
        repeated <- false;
        ();
        gameActionKey <- 0;
        originalKey <- 0;
        ();
        (* super(...) is the inherit clause *) ();
        sourceId <- sourceId_arg;
        (self#setOriginalKey (originalKey_arg));
        key <- key_arg;
        (self#setGameActionKey (gameActionKey_arg));
        (self#setRepeatEvents (repeated_arg))
      end
  end
let () = java_register_constructor "GameKeyEvent" (fun arguments -> Obj.repr (new gameKeyEvent (Obj.obj arguments)))

let nONE = (new gameKeyEvent ((NullUtil.getInstance ())#nULL_OBJECT, (-1), (-1), (-1), (-1), false))
let get_nONE () = nONE
let () = java_register_static "GameKeyEvent.get_nONE" (fun _ -> Obj.repr (get_nONE ()))

let createEvent : 'any1. 'any1 * int * int -> _ = fun (anyType, (sourceId_arg : int), (key_arg : int)) ->
        let anyType = Obj.repr anyType in
        begin
        (new gameKeyEvent (anyType, sourceId_arg, 0, 0, key_arg, false))
        end
let () = java_register_static "GameKeyEvent.createEvent" (fun arguments -> Obj.repr (createEvent (Obj.obj arguments)))


