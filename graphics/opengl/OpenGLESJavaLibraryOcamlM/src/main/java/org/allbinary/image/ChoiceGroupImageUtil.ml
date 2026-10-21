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
(* package org.allbinary.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.khronos.opengles.GL *)
(* import javax.microedition.lcdui.ChoiceGroupImageFactory *)
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.graphics.opengles.OpenGLFeatureFactory *)
(* import org.allbinary.game.configuration.feature.Features *)

class choiceGroupImageUtil () =
  object
    

    method init () : unit =
        begin
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        let choiceGroupFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "ChoiceGroupImageFactory.getInstance" (Obj.repr ()))))) in ();
        let imageArray : Obj.t ref = ref ((Obj.repr ((Obj.magic !choiceGroupFactory)#getImageArray ()))) in ();
        if (!features#isDefault ((OpenGLFeatureFactory.getInstance ())#oPENGL)) then begin
            let preResourceImageUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "PreResourceImageUtil.getInstance" (Obj.repr ()))))) in ();
            let size : int ref = ref ((Array.length (Obj.magic !imageArray))) in ();
            for index = 0 to !size - 1 do
                (Obj.magic !imageArray).(index) <- ((Obj.magic !preResourceImageUtil)#encapsulate ((Obj.magic !imageArray).(index)))
            done;
            ignore ((Obj.magic !choiceGroupFactory)#init ((Obj.magic !imageArray)))
        end
        end
    

    method update : 'any1. 'any1 -> unit = fun (gl) ->
        let gl = Obj.repr gl in
        begin
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        let choiceGroupFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "ChoiceGroupImageFactory.getInstance" (Obj.repr ()))))) in ();
        let imageArray : Obj.t ref = ref ((Obj.repr ((Obj.magic !choiceGroupFactory)#getImageArray ()))) in ();
        if (!features#isDefault ((OpenGLFeatureFactory.getInstance ())#oPENGL)) then begin
            let preResourceImageUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "PreResourceImageUtil.getInstance" (Obj.repr ()))))) in ();
            let size : int ref = ref ((Array.length (Obj.magic !imageArray))) in ();
            for index = 0 to !size - 1 do
                ignore ((Obj.magic !preResourceImageUtil)#updateGL ((Obj.magic gl), (Obj.magic !imageArray).(index)))
            done
        end;
        ignore ((Obj.magic !choiceGroupFactory)#init ((Obj.magic !imageArray)))
        end [@@warning "-20"]
    

    (* Java overload update(Graphics) is not converted: OCaml has one method per name *)

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ChoiceGroupImageUtil" (fun arguments -> Obj.repr (new choiceGroupImageUtil (Obj.obj arguments)))

let instance = (new choiceGroupImageUtil ())
let get_instance () = instance
let () = java_register_static "ChoiceGroupImageUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ChoiceGroupImageUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


