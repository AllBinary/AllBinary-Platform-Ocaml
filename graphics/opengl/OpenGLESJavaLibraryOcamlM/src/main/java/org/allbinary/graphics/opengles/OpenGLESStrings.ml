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
(* package org.allbinary.graphics.opengles *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.khronos.opengles.GL10 *)
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)

class openGLESStrings () =
  object
    

    method set : 'any1. 'any1 -> unit = fun (_gl) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method initFont : 'any1. 'any1 * int * int -> unit = fun (_gl, (_width : int), (_height : int)) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method update : 'any1. 'any1 * int * int -> unit = fun (_gl, (_width : int), (_height : int)) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method drawChar : 'any1 'any2. 'any1 * 'any2 * char * int * int * int -> unit = fun (_gl, _graphics, (_character : char), (_x : int), (_y : int), (_anchor : int)) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method drawChars : 'any1 'any2. 'any1 * 'any2 * char array * int * int * int * int * int -> unit = fun (_gl, _graphics, (_data : char array), (_offset : int), (_length : int), (_x : int), (_y : int), (_anchor : int)) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method drawString : 'any1 'any2. 'any1 * 'any2 * string * int * int * int -> unit = fun (_gl, _graphics, (_string : string), (_x : int), (_y : int), (_anchor : int)) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method drawSubstring : 'any1 'any2. 'any1 * 'any2 * string * int * int * int * int * int -> unit = fun (_gl, _graphics, (_string : string), (_offset : int), (_len : int), (_x : int), (_y : int), (_anchor : int)) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method charWidth ((_ch : char)) : int =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method charsWidth ((_ch : char array), (_offset : int), (_length : int)) : int =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method stringWidth ((_string : string)) : int =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    (* Java overload stringWidth(String, INT, INT) is not converted: OCaml has one method per name *)

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "OpenGLESStrings" (fun arguments -> Obj.repr (new openGLESStrings (Obj.obj arguments)))


