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
(* package org.allbinary.business.init.db *)

open Allbinary_java [@@warning "-33"]

let iNITFILE : string = "staticpagesbinitdata.dat"
let get_iNITFILE () = iNITFILE
let () = java_register_static "StaticPagesDbInitInfo.get_iNITFILE" (fun _ -> Obj.repr (get_iNITFILE ()))
class staticPagesDbInitInfo () =
  object
    inherit DbInitInfo.dbInitInfo (iNITFILE, true)
    
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "StaticPagesDbInitInfo" (fun arguments -> Obj.repr (new staticPagesDbInitInfo (Obj.obj arguments)))


