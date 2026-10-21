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
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.PreLogUtil *)

class dbInitInfo ((_initFileName : string), (_read : bool)) =
  object (self)
    inherit DbConnectionInfo.dbConnectionInfo () as super
    
    

    method getUrl () : string =
        begin
        let url : string ref = ref ((super#getUrl ())) in ();
        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (("Url: " ^ !url), self, "getUrl"))));
        !url
        end [@@warning "-7"]
    

    method write () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method load () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method setHasRead ((_value : bool)) : unit =
        begin
        ()
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "DbInitInfo" (fun arguments -> Obj.repr (new dbInitInfo (Obj.obj arguments)))


