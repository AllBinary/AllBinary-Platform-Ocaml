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
(* package org.allbinary.logic.visual.transform *)

open Allbinary_java [@@warning "-33"]
(* import java.io.InputStream *)
(* import javax.xml.transform.URIResolver *)
(* import javax.xml.transform.stream.StreamSource *)
(* import org.allbinary.logic.visual.transform.info.CompositeTransformInfoInterface *)

class virtual basicTransformerInterface =
  object
    inherit CompositeTransformInfoInterface.compositeTransformInfoInterface
    method virtual setInputStream : 'any1 . 'any1 -> unit
    method virtual setURIResolver : 'any1 . 'any1 -> unit
    method virtual getStreamSource : 'return . unit -> 'return
    method virtual getInputStream : 'return . unit -> 'return
    method virtual getURIResolver : 'return . unit -> 'return
    method virtual translate : string -> string
  end


