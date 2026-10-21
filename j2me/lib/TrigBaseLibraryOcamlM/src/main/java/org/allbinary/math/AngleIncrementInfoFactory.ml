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
(* package org.allbinary.math *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class angleIncrementInfoFactory () =
  object
    val mutable angleIncrementInfo : AngleIncrementInfo.angleIncrementInfo array = (Obj.magic 0)
    method angleIncrementInfo = angleIncrementInfo
    method set_angleIncrementInfo value' = angleIncrementInfo <- value'
    

    method getAt ((angleIncrement : int)) : AngleIncrementInfo.angleIncrementInfo =
        try
        begin
        let halfAngleIncrement : int ref = ref (((angleIncrement asr 1))) in ();
        let angleIncrementInfo_arg : AngleIncrementInfo.angleIncrementInfo ref = ref (((Obj.magic 0) :> AngleIncrementInfo.angleIncrementInfo)) in ();
        let angleIncrementInfoCanBeNull : AngleIncrementInfo.angleIncrementInfo ref = ref ((angleIncrementInfo.(!halfAngleIncrement) :> AngleIncrementInfo.angleIncrementInfo)) in ();
        if (!angleIncrementInfoCanBeNull == (Obj.magic 0)) then begin
            angleIncrementInfo_arg := (new AngleIncrementInfo.angleIncrementInfo (angleIncrement));
            angleIncrementInfo.(!halfAngleIncrement) <- (!angleIncrementInfo_arg :> AngleIncrementInfo.angleIncrementInfo);
            raise (Java_return (Obj.repr (!angleIncrementInfo_arg)))
        end else begin
            angleIncrementInfo_arg := !angleIncrementInfoCanBeNull
        end;
        (!angleIncrementInfo_arg :> AngleIncrementInfo.angleIncrementInfo)
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        angleIncrementInfo <- (Array.make ((java_to_int (Obj.repr ((AngleFactory.getInstance ())#tOTAL_ANGLE)))) (Obj.magic 0));
        ()
      end
  end
let () = java_register_constructor "AngleIncrementInfoFactory" (fun arguments -> Obj.repr (new angleIncrementInfoFactory (Obj.obj arguments)))

let instance = (new angleIncrementInfoFactory ())
let get_instance () = instance
let () = java_register_static "AngleIncrementInfoFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AngleIncrementInfoFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


