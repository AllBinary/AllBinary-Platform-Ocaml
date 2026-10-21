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
(* package org.allbinary.graphics.pipeline *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class graphicsPipeline ((points : BasicArrayList.basicArrayList)) =
  object
    inherit BasicGraphicsPipeline.basicGraphicsPipeline (points)
    
    

    method rotateTheta ((aTheta : float)) : unit =
        begin
        let newVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((pointBasicArrayList#size ())) in ();
        for index = 0 to !size - 1 do
            let secondPoint : GPoint.gPoint ref = ref (((Obj.magic (pointBasicArrayList#get (index))) :> GPoint.gPoint)) in ();
            let secondX : float ref = ref (((((!secondPoint#getX ()) * (Float.cos (aTheta)))) - (((!secondPoint#getY ()) * (Float.sin (aTheta)))))) in ();
            let secondY : float ref = ref (((((!secondPoint#getX ()) * (Float.sin (aTheta)))) + (((!secondPoint#getY ()) * (Float.cos (aTheta)))))) in ();
            let point : GPoint.gPoint ref = ref ((((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#createXY (((int_of_float (!secondX))), ((int_of_float (!secondY))))) :> GPoint.gPoint)) in ();
            ignore (!newVector#add (!point))
        done;
        pointBasicArrayList <- !newVector
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "GraphicsPipeline" (fun arguments -> Obj.repr (new graphicsPipeline (Obj.obj arguments)))


