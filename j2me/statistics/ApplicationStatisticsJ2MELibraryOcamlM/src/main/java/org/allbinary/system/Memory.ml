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
(* package org.allbinary.system *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.string.StringMaker *)


let getInfo () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("Memory: Free: "));
        ignore (!stringBuffer#appendlong ((java_to_int (Obj.repr ((let stats = Gc.stat () in max 0 ((stats.Gc.heap_words - stats.Gc.live_words) * (Sys.word_size / 8))))))));
        ignore (!stringBuffer#append (" Total: "));
        ignore (!stringBuffer#appendlong ((java_to_int (Obj.repr (((Gc.quick_stat ()).Gc.heap_words * (Sys.word_size / 8)))))));
        (java_string_of (Obj.repr !stringBuffer))
        end

let () = java_register_static "Memory.getInfo" (fun arguments -> Obj.repr (getInfo (Obj.obj arguments)))
class memory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "Memory" (fun arguments -> Obj.repr (new memory (Obj.obj arguments)))


