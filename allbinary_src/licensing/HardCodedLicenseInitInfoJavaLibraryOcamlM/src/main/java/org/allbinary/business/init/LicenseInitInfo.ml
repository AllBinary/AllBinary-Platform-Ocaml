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
(* package org.allbinary.business.init *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.debug.DebugFactory *)
(* import org.allbinary.debug.NoDebug *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class licenseInitInfo () =
  object
    val mutable id : string = ""
    method id = id
    method set_id value' = id <- value'
    val mutable serverList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method serverList = serverList
    method set_serverList value' = serverList <- value'
    
    

    method getLicenseId () : string =
        begin
        id
        end
    

    method getServer ((index : int)) : string =
        begin
        (Obj.magic (serverList#get (index)))
        end
    

    method getNumberOfServers () : int =
        begin
        (serverList#size ())
        end
    

    method setLicenseId ((value : string)) : unit =
        begin
        id <- value
        end
    

    method clearServers () : unit =
        begin
        ignore (serverList#clear ())
        end
    

    method setServer ((value : string), (index : int)) : unit =
        begin
        ignore (serverList#addAt (index, value))
        end
    

    method addServer ((value : string)) : unit =
        begin
        ignore (serverList#add (value))
        end
    

    method getServerList () : BasicArrayList.basicArrayList =
        begin
        (serverList :> BasicArrayList.basicArrayList)
        end
    

    method setServerList : 'any1. 'any1 -> unit = fun (servers) ->
        let servers = Obj.repr servers in
        begin
        if ((Obj.repr (DebugFactory.getInstance ())) == (Obj.repr (NoDebug.getInstance ()))) then begin
            serverList <- (Obj.magic servers)
        end
        end [@@warning "-20"]

    initializer
      begin
        id <- (StringUtil.getInstance ())#eMPTY_STRING;
        serverList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ()
      end
  end
let () = java_register_constructor "LicenseInitInfo" (fun arguments -> Obj.repr (new licenseInitInfo (Obj.obj arguments)))


