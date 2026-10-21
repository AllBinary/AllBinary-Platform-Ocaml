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
(* package org.allbinary.bounds *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.Rectangle *)

class topULayerBounds (rectangle) =
  object
    inherit LayerBounds.layerBounds (rectangle)
    
    

    method visit : 'any1. 'any1 -> unit = fun (boundsVisitorInterface) ->
        let boundsVisitorInterface = Obj.repr boundsVisitorInterface in
        begin
        if (((Obj.magic boundsVisitorInterface)#getX ()) > (rectangle#getMaxX ())) then begin
            ignore ((Obj.magic boundsVisitorInterface)#maxX ())
        end;
        if (((Obj.magic boundsVisitorInterface)#getX ()) < ((rectangle#getPoint ())#getX ())) then begin
            ignore ((Obj.magic boundsVisitorInterface)#minX ())
        end;
        if (((Obj.magic boundsVisitorInterface)#getY ()) < ((rectangle#getPoint ())#getY ())) then begin
            ignore ((Obj.magic boundsVisitorInterface)#minY ())
        end
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "TopULayerBounds" (fun arguments -> Obj.repr (new topULayerBounds (Obj.obj arguments)))


