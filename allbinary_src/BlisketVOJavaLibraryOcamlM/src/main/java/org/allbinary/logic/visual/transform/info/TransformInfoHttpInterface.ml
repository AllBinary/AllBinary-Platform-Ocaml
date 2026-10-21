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
(* package org.allbinary.logic.visual.transform.info *)

open Allbinary_java [@@warning "-33"]
(* import java.util.HashMap *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface *)

class virtual transformInfoHttpInterface =
  object
    inherit TransformInfoInterface.transformInfoInterface
    method virtual getWeblisketSession : unit -> WeblisketSessionInterface.weblisketSessionInterface
    method virtual getPageContext : 'return . unit -> 'return
    method virtual getPropertiesHashMap : unit -> java_hash_map
  end


