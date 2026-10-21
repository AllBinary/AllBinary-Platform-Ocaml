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
(* package org.allbinary.logic.communication.log *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.globals.Globals *)
(* import org.allbinary.string.CommonStrings *)

let pATH : string = "G:\\mnt\\bc\\mydev\\work\\allbinary_src\\licensing\\data\\"
let get_pATH () = pATH
let () = java_register_static "TestRemoteLogUtil.get_pATH" (fun _ -> Obj.repr (get_pATH ()))
class testRemoteLogUtil () =
  object (self)
    

    initializer
      begin
        ();
        ignore ((Globals.getInstance ())#init (((java_get_class (Obj.repr self))#getClassLoader ()), pATH));
        let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        ignore ((Obj.magic !logUtil)#put (!commonStrings#eXCEPTION, "Test", "TestClass", (Failure ("Pretend Exception"))))
      end
  end
let () = java_register_constructor "TestRemoteLogUtil" (fun arguments -> Obj.repr (new testRemoteLogUtil (Obj.obj arguments)))

let main ((_args : string array)) : unit =
        begin
        (new testRemoteLogUtil ())
        end
let () = java_register_static "TestRemoteLogUtil.main" (fun arguments -> Obj.repr (main (Obj.obj arguments)))


