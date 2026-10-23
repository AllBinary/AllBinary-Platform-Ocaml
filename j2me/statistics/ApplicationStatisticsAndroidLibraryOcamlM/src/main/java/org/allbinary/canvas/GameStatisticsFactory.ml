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
(* package org.allbinary.canvas *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.string.StringMaker *)

class gameStatisticsFactory () =
  object
    inherit AndroidGameStatistics.androidGameStatistics () as super
    val mutable stringBuffer : StringMaker.stringMaker = (Obj.magic 0)
    method stringBuffer = stringBuffer
    method set_stringBuffer value' = stringBuffer <- value'
    

    method add ((string : string)) : unit =
        begin
        if ((stringBuffer#length ()) > 12000) then begin
            ignore (stringBuffer#delete (0, (stringBuffer#length ())));
            ignore (stringBuffer#append ("Old Stats Cleared"))
        end;
        ignore (stringBuffer#append (string))
        end [@@warning "-7"]
    

    method toString () : string =
        begin
        (java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ((super#toString ())))#append ((java_string_of (Obj.repr stringBuffer))))))
        end [@@warning "-7"]

    initializer
      begin
        stringBuffer <- ((new StringMaker.stringMaker ()) :> StringMaker.stringMaker);
        ()
      end
  end
let () = java_register_constructor "GameStatisticsFactory" (fun arguments -> Obj.repr (new gameStatisticsFactory (Obj.obj arguments)))

let sINGLETON : AndroidGameStatistics.androidGameStatistics = ((new gameStatisticsFactory ()) :> AndroidGameStatistics.androidGameStatistics)
let get_sINGLETON () = sINGLETON
let () = java_register_static "GameStatisticsFactory.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () : AndroidGameStatistics.androidGameStatistics =
        begin
        (sINGLETON :> AndroidGameStatistics.androidGameStatistics)
        end
let () = java_register_static "GameStatisticsFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


