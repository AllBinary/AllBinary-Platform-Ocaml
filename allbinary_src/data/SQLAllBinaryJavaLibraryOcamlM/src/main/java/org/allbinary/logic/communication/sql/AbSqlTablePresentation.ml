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
(* package org.allbinary.logic.communication.sql *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.business.init.db.DbConnectionInfo *)

class abSqlTablePresentation ((databaseConnectionInfoInterface : DbConnectionInfo.dbConnectionInfo)) =
  object
    inherit AbSqlBasic.abSqlBasic (databaseConnectionInfoInterface)
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "AbSqlTablePresentation" (fun arguments -> Obj.repr (new abSqlTablePresentation (Obj.obj arguments)))


