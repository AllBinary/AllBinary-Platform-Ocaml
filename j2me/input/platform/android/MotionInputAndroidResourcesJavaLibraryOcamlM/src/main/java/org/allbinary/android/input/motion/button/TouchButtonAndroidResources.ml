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
(* package org.allbinary.android.input.motion.button *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.AndroidResources *)
(* import org.allbinary.data.resource.ResourceUtil *)
(* import org.allbinary.init.Init *)
(* import org.allbinary.input.motion.button.CommonButtons *)
(* import org.allbinary.input.motion.button.TouchButtonBlankResource *)
(* import org.allbinary.input.motion.button.TouchButtonDownResource *)
(* import org.allbinary.input.motion.button.TouchButtonGenericActionResource *)
(* import org.allbinary.input.motion.button.TouchButtonResource *)
(* import org.allbinary.input.motion.button.TouchButtonStartResource *)
(* import org.allbinary.input.motion.button.TouchButtonStrafeLeftResource *)
(* import org.allbinary.input.motion.button.TouchButtonStrafeRightResource *)
(* import org.allbinary.input.motion.button.TouchButtonTurnLeftResource *)
(* import org.allbinary.input.motion.button.TouchButtonTurnRightResource *)
(* import org.allbinary.input.motion.button.TouchButtonUpResource *)
(* import org.allbinary.logic.system.os.OperatingSystemFactory *)

class touchButtonAndroidResources () =
  object
    inherit Init.init ()
    

    method init () : unit =
        begin
        let resourceUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "ResourceUtil.getInstance" (Obj.repr ()))))) in ();
        let androidResources : AndroidResources.androidResources ref = ref (((AndroidResources.getInstance ()) :> AndroidResources.androidResources)) in ();
        let rESOURCE_STRING_ARRAY : TouchButtonResource.touchButtonResource array ref = ref ([| (TouchButtonBlankResource.getInstance ()); (TouchButtonGenericActionResource.getInstance ()); (TouchButtonStartResource.getInstance ()); (TouchButtonUpResource.getInstance ()); (TouchButtonDownResource.getInstance ()); (TouchButtonTurnLeftResource.getInstance ()); (TouchButtonTurnRightResource.getInstance ()); (TouchButtonStrafeLeftResource.getInstance ()); (TouchButtonStrafeRightResource.getInstance ()) |]) in ();
        let rESOURCE_ARRAY : int array ref = ref ((Array.make ((Array.length !rESOURCE_STRING_ARRAY)) 0)) in ();
        if ((CommonButtons.getInstance ())#sTANDARD_BUTTON_SIZE == 128) then begin
            !rESOURCE_ARRAY.(0) <- !androidResources#raw#touch_button_128_by_128;
            !rESOURCE_ARRAY.(1) <- !androidResources#raw#touch_button_generic_action_128_by_128;
            !rESOURCE_ARRAY.(2) <- !androidResources#raw#touch_button_start_128_by_128;
            !rESOURCE_ARRAY.(3) <- !androidResources#raw#touch_button_up_arrow_128_by_128;
            !rESOURCE_ARRAY.(4) <- !androidResources#raw#touch_button_down_arrow_128_by_128;
            !rESOURCE_ARRAY.(5) <- !androidResources#raw#touch_button_turn_left_arrow_128_by_128;
            !rESOURCE_ARRAY.(6) <- !androidResources#raw#touch_button_turn_right_arrow_128_by_128;
            !rESOURCE_ARRAY.(7) <- !androidResources#raw#touch_button_strafe_left_arrow_128_by_128;
            !rESOURCE_ARRAY.(8) <- !androidResources#raw#touch_button_strafe_right_arrow_128_by_128;
            if (((Obj.magic (java_call_static "OperatingSystemFactory.getInstance" (Obj.repr ())))#getOperatingSystemInstance ())#isOverScan ()) then begin
                ignore ((Obj.magic !resourceUtil)#addResource (!rESOURCE_STRING_ARRAY.(2)#hINT, (string_of_int (!androidResources#raw#ouya_o))))
            end
        end else begin
            !rESOURCE_ARRAY.(0) <- !androidResources#raw#touch_button_64_by_64;
            !rESOURCE_ARRAY.(1) <- !androidResources#raw#touch_button_generic_action_64_by_64;
            !rESOURCE_ARRAY.(2) <- !androidResources#raw#touch_button_start_64_by_64;
            !rESOURCE_ARRAY.(3) <- !androidResources#raw#touch_button_up_arrow_64_by_64;
            !rESOURCE_ARRAY.(4) <- !androidResources#raw#touch_button_down_arrow_64_by_64;
            !rESOURCE_ARRAY.(5) <- !androidResources#raw#touch_button_turn_left_arrow_64_by_64;
            !rESOURCE_ARRAY.(6) <- !androidResources#raw#touch_button_turn_right_arrow_64_by_64;
            !rESOURCE_ARRAY.(7) <- !androidResources#raw#touch_button_strafe_left_arrow_64_by_64;
            !rESOURCE_ARRAY.(8) <- !androidResources#raw#touch_button_strafe_right_arrow_64_by_64
        end;
        for index = 0 to (Array.length !rESOURCE_ARRAY) - 1 do
            ignore ((Obj.magic !resourceUtil)#addResource (!rESOURCE_STRING_ARRAY.(index)#rESOURCE, (string_of_int (!rESOURCE_ARRAY.(index)))))
        done
        end [@@warning "-7"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "TouchButtonAndroidResources" (fun arguments -> Obj.repr (new touchButtonAndroidResources (Obj.obj arguments)))


