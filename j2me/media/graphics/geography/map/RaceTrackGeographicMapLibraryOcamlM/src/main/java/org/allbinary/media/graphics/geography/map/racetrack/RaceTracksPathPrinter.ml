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
(* package org.allbinary.media.graphics.geography.map.racetrack *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.string.CommonLabels *)

class raceTracksPathPrinter () =
  object (self)
    

    method printPath : 'any1. 'any1 -> unit = fun (list) ->
        let list = Obj.repr list in
        begin
        let size : int ref = ref (((Obj.magic list)#size ())) in ();
        for index = 0 to !size - 1 do
            let anyType : Obj.t ref = ref ((Obj.repr ((Obj.magic list)#get (index)))) in ();
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append ("pathList.add(cellPositionFactory.getInstance"))#append ((java_string_of (Obj.repr !anyType))))#append (");")))), self, "printPath"))))
        done
        end [@@warning "-20"]
    

    method printPaths : 'any1. 'any1 -> unit = fun (list) ->
        let list = Obj.repr list in
        begin
        let size : int ref = ref (((Obj.magic list)#size ())) in ();
        for index = 0 to !size - 1 do
            (print_endline (java_string_of (Obj.repr ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append (" Path "))#appendint (index))#append ((CommonLabels.getInstance ())#cOLON_SEP))))))));
            (self#printPath ((Obj.magic ((Obj.magic list)#get (index)))))
        done
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "RaceTracksPathPrinter" (fun arguments -> Obj.repr (new raceTracksPathPrinter (Obj.obj arguments)))


