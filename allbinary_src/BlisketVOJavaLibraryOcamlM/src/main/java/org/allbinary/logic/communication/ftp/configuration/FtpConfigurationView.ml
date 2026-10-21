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
(* package org.allbinary.logic.communication.ftp.configuration *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.data.tree.dom.DomNodeHelper *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

class ftpConfigurationView (node) =
  object (self)
    val mutable ftpConfigurationInterface : FtpConfigurationInterface.ftpConfigurationInterface = (Obj.magic 0)
    method ftpConfigurationInterface = ftpConfigurationInterface
    method set_ftpConfigurationInterface value' = ftpConfigurationInterface <- value'
    
    
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let ftpConfigurationMapping : FtpConfigurationMapping.ftpConfigurationMapping ref = ref (((new FtpConfigurationMapping.ftpConfigurationMapping ((self#getFtpConfigurationInterface ()))) :> FtpConfigurationMapping.ftpConfigurationMapping)) in ();
        let hashMap : java_hash_map ref = ref (((!ftpConfigurationMapping#toHashMap ()) :> java_hash_map)) in ();
        let node : Obj.t ref = ref ((Obj.repr (ModDomHelper.createNameValueNodes ((Obj.magic document), (FtpConfigurationData.get_nAME ()), !hashMap)))) in ();
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]
    

    method getFtpConfigurationInterface () : FtpConfigurationInterface.ftpConfigurationInterface =
        begin
        (ftpConfigurationInterface :> FtpConfigurationInterface.ftpConfigurationInterface)
        end
    

    method setFtpConfigurationInterface : 'any1. 'any1 -> unit = fun (ftpConfigurationInterface_arg) ->
        let ftpConfigurationInterface_arg = Obj.repr ftpConfigurationInterface_arg in
        begin
        ftpConfigurationInterface <- (Obj.magic ftpConfigurationInterface_arg)
        end [@@warning "-20"]

    initializer
      begin
        ftpConfigurationInterface <- ((Obj.magic 0) :> FtpConfigurationInterface.ftpConfigurationInterface);
        ();
        (self#setFtpConfigurationInterface ((Obj.magic (new FtpConfiguration.ftpConfiguration ()))));
        let chileNodeList : Obj.t ref = ref ((Obj.repr (node#getChildNodes ()))) in ();
        let server : string ref = ref ((DomNodeHelper.getTextNodeValue ((FtpConfigurationData.get_sERVER ()), (Obj.magic !chileNodeList)))) in ();
        ignore ((self#getFtpConfigurationInterface ())#setServer (!server));
        let userName : string ref = ref ((DomNodeHelper.getTextNodeValue ((FtpConfigurationData.get_uSERNAME ()), (Obj.magic !chileNodeList)))) in ();
        ignore ((self#getFtpConfigurationInterface ())#setUserName (!userName));
        let password : string ref = ref ((DomNodeHelper.getTextNodeValue ((FtpConfigurationData.get_pASSWORD ()), (Obj.magic !chileNodeList)))) in ();
        ignore ((self#getFtpConfigurationInterface ())#setPassword (!password));
        let path : string ref = ref ((DomNodeHelper.getTextNodeValue ((FtpConfigurationData.get_pATH ()), (Obj.magic !chileNodeList)))) in ();
        ignore ((self#getFtpConfigurationInterface ())#setPath (!path))
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "FtpConfigurationView" (fun arguments -> Obj.repr (new ftpConfigurationView (Obj.obj arguments)))


