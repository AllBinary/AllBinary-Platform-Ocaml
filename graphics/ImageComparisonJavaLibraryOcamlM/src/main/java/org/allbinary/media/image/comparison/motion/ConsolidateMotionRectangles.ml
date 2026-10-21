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
(* package org.allbinary.media.image.comparison.motion *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)

let nAME : string = "consolidatedMotionRectangles_"
let get_nAME () = nAME
let () = java_register_static "ConsolidateMotionRectangles.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
class consolidateMotionRectangles (motionRectangles) =
  object (self)
    inherit MotionRectangles.motionRectangles (nAME, (motionRectangles#getImageComparisonResult ()))
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method consolidateMotionRectangles () : unit =
        begin
        let vector : BasicArrayList.basicArrayList ref = ref (((self#getVector ()) :> BasicArrayList.basicArrayList)) in ();
        ignore ((Obj.magic logUtil)#putF (("Start - Size Before: " ^ java_string_of (Obj.repr ((!vector#size ())))), self, "consolidateMotionRectangleConstraints"));
        let removeVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!vector#size ())) in ();
        for index = 0 to !size - 1 do
            let motionRectangle : Obj.t ref = ref ((Obj.repr (Obj.magic (!vector#get (index))))) in ();
            for i = (index + 1) to (!vector#size ()) - 1 do
                let motionRectangle2 : Obj.t ref = ref ((Obj.repr (Obj.magic (!vector#get (i))))) in ();
                let rectangle : Obj.t ref = ref ((Obj.repr ((Obj.magic !motionRectangle)#getRectangle ()))) in ();
                let rectangle2 : Obj.t ref = ref ((Obj.repr ((Obj.magic !motionRectangle2)#getRectangle ()))) in ();
                let x2 : int ref = ref (((Obj.magic !rectangle)#x + (Obj.magic !rectangle)#width)) in ();
                let y2 : int ref = ref (((Obj.magic !rectangle)#y + (Obj.magic !rectangle)#height)) in ();
                let rightX : int ref = ref (((Obj.magic !rectangle2)#x + (Obj.magic !rectangle2)#width)) in ();
                let bottomY : int ref = ref (((Obj.magic !rectangle2)#y + (Obj.magic !rectangle2)#height)) in ();
                if (((((Obj.magic !rectangle)#x <= (Obj.magic !rectangle2)#x) && ((Obj.magic !rectangle)#y <= (Obj.magic !rectangle2)#y)) && (!x2 >= !rightX)) && (!y2 >= !bottomY)) then begin
                    ignore (!removeVector#add ((Obj.magic !motionRectangle2)))
                end
            done
        done;
        (self#remove (!removeVector))
        end [@@warning "-7"]
    

    method remove : 'any1. 'any1 -> unit = fun (removeVector) ->
        let removeVector = Obj.repr removeVector in
        begin
        let vector : BasicArrayList.basicArrayList ref = ref (((self#getVector ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref (((Obj.magic removeVector)#size ())) in ();
        for index = 0 to !size - 1 do
            ignore (!vector#remove (((Obj.magic removeVector)#get (index))))
        done
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ();
        let vector : BasicArrayList.basicArrayList ref = ref (((motionRectangles#getVector ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!vector#size ())) in ();
        for index = 0 to !size - 1 do
            let motionRectangle : Obj.t ref = ref ((Obj.repr (Obj.magic (!vector#get (index))))) in ();
            ignore (!vector#add (((Obj.magic !motionRectangle)#clone ())))
        done;
        (self#consolidateMotionRectangles ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "ConsolidateMotionRectangles" (fun arguments -> Obj.repr (new consolidateMotionRectangles (Obj.obj arguments)))


