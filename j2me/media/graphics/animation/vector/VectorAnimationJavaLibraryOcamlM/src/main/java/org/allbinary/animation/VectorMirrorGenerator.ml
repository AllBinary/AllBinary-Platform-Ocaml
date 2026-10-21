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
(* package org.allbinary.animation *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.pipeline.BasicGraphicsPipeline *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListS *)

class vectorMirrorGenerator () =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable vectorAnimationUtil : VectorAnimationUtil.vectorAnimationUtil = (Obj.magic 0)
    method vectorAnimationUtil = vectorAnimationUtil
    method set_vectorAnimationUtil value' = vectorAnimationUtil <- value'
    
    

    (* Java overload getInstance(ArrayType, INT) is not converted: OCaml has one method per name *)
    

    (* Java overload getInstance(BasicArrayList, INT) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        vectorAnimationUtil <- ((VectorAnimationUtil.getInstance ()) :> VectorAnimationUtil.vectorAnimationUtil);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "VectorMirrorGenerator" (fun arguments -> Obj.repr (new vectorMirrorGenerator (Obj.obj arguments)))

let instance = (new vectorMirrorGenerator ())
let get_instance () = instance
let () = java_register_static "VectorMirrorGenerator.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "VectorMirrorGenerator.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


