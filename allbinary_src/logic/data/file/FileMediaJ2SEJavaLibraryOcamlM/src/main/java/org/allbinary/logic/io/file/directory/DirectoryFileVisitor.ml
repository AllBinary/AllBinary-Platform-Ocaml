(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.io.file.directory *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.File *)
(* import java.io.FileFilter *)
(* import org.allbinary.logic.util.visitor.VisitorInterface *)

class directoryFileVisitor () =
  object (self)
    
    

    method accept : 'any1. 'any1 -> bool = fun (arg0) ->
        let arg0 = Obj.repr arg0 in
        begin
        (((Obj.magic (self#visit ((Obj.magic (Obj.magic arg0))))))#booleanValue ())
        end [@@warning "-20"]
    

    method visit : 'any1. 'any1 -> Obj.t = fun (anyType) ->
        let anyType = Obj.repr anyType in
        try
        begin
        let file : Obj.t ref = ref ((Obj.repr (Obj.magic anyType))) in ();
        let index : int ref = ref (1) in ();
        let aFile : Obj.t ref = ref ((Obj.repr ((Obj.magic !file)#getParentFile ()))) in ();
        while (((aFile := Obj.repr (((Obj.magic !aFile)#getParentFile ())); (Obj.magic !aFile))) != (Obj.magic 0)) do
            index := !index + 1
        done;
        if (((Obj.magic !file)#isDirectory ()) && (!index < 5)) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        (Obj.repr (false))
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "DirectoryFileVisitor" (fun arguments -> Obj.repr (new directoryFileVisitor (Obj.obj arguments)))


