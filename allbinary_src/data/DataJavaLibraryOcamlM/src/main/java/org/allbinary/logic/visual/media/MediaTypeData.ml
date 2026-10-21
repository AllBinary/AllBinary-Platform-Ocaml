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
(* package org.allbinary.logic.visual.media *)

open Allbinary_java [@@warning "-33"]

class mediaTypeData () =
  object
    val mutable rESIZABLE_MEDIA : string = ""
    method rESIZABLE_MEDIA = rESIZABLE_MEDIA
    method set_rESIZABLE_MEDIA value' = rESIZABLE_MEDIA <- value'
    val mutable nOT_RESIZABLE_MEDIA : string = ""
    method nOT_RESIZABLE_MEDIA = nOT_RESIZABLE_MEDIA
    method set_nOT_RESIZABLE_MEDIA value' = nOT_RESIZABLE_MEDIA <- value'
    

    initializer
      begin
        rESIZABLE_MEDIA <- "RESIZABLE_MEDIA";
        nOT_RESIZABLE_MEDIA <- "NOT_RESIZABLE_MEDIA";
        ();
        ()
      end
  end
let () = java_register_constructor "MediaTypeData" (fun arguments -> Obj.repr (new mediaTypeData (Obj.obj arguments)))

let instance = (new mediaTypeData ())
let get_instance () = instance
let () = java_register_static "MediaTypeData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "MediaTypeData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


