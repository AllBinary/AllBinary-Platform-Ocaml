(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2006 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer.unit *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.layer.resources.BasicGameResources *)
(* import org.allbinary.game.layer.resources.GameGraphicsResourceUtil *)
(* import org.allbinary.AndroidUtil *)
(* import org.allbinary.game.configuration.feature.GraphicsFeatureFactory *)
(* import org.allbinary.logic.string.StringUtil *)

let iCON : string = "_icon"
let get_iCON () = iCON
let () = java_register_static "UnitGameResources.get_iCON" (fun _ -> Obj.repr (get_iCON ()))
let bUILD : string = "_build"
let get_bUILD () = bUILD
let () = java_register_static "UnitGameResources.get_bUILD" (fun _ -> Obj.repr (get_bUILD ()))
let dESTROY : string = "_destroy"
let get_dESTROY () = dESTROY
let () = java_register_static "UnitGameResources.get_dESTROY" (fun _ -> Obj.repr (get_dESTROY ()))
let iCON_BUILD : string = ("_icon" ^ java_string_of (Obj.repr (bUILD)))
let get_iCON_BUILD () = iCON_BUILD
let () = java_register_static "UnitGameResources.get_iCON_BUILD" (fun _ -> Obj.repr (get_iCON_BUILD ()))
class unitGameResources () =
  object (self)
    inherit BasicGameResources.basicGameResources () as super
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable rESOURCE_ICON_ANIMATION : string = ""
    method rESOURCE_ICON_ANIMATION = rESOURCE_ICON_ANIMATION
    method set_rESOURCE_ICON_ANIMATION value' = rESOURCE_ICON_ANIMATION <- value'
    val mutable rESOURCE_ICON_BUILD : string = ""
    method rESOURCE_ICON_BUILD = rESOURCE_ICON_BUILD
    method set_rESOURCE_ICON_BUILD value' = rESOURCE_ICON_BUILD <- value'
    val mutable rESOURCE_ICON : string = ""
    method rESOURCE_ICON = rESOURCE_ICON
    method set_rESOURCE_ICON value' = rESOURCE_ICON <- value'
    val mutable iCON_SIZE : string = ""
    method iCON_SIZE = iCON_SIZE
    method set_iCON_SIZE value' = iCON_SIZE <- value'
    
    

    method append ((rOOT : string), (sizeString : string)) : unit =
        begin
        ignore (super#append (rOOT, sizeString));
        let string : string ref = ref (((GameGraphicsResourceUtil.getInstance ())#getName ())) in ();
        ignore ((BasicGameResources.get_stringBuffer ())#delete (0, ((BasicGameResources.get_stringBuffer ())#length ())));
        ignore ((BasicGameResources.get_stringBuffer ())#append (rOOT));
        ignore ((BasicGameResources.get_stringBuffer ())#append (dESTROY));
        ignore ((BasicGameResources.get_stringBuffer ())#append (!string));
        ignore ((BasicGameResources.get_stringBuffer ())#append (sizeString));
        (self#set_rESOURCE_DESTROY) ((java_string_of (Obj.repr (BasicGameResources.get_stringBuffer ()))));
        ignore ((BasicGameResources.get_stringBuffer ())#delete (0, ((BasicGameResources.get_stringBuffer ())#length ())));
        ignore ((BasicGameResources.get_stringBuffer ())#append (iCON));
        ignore ((BasicGameResources.get_stringBuffer ())#append (rOOT));
        rESOURCE_ICON_ANIMATION <- (java_string_of (Obj.repr (BasicGameResources.get_stringBuffer ())));
        ignore ((BasicGameResources.get_stringBuffer ())#delete (0, ((BasicGameResources.get_stringBuffer ())#length ())));
        ignore ((BasicGameResources.get_stringBuffer ())#append (rOOT));
        ignore ((BasicGameResources.get_stringBuffer ())#append (iCON));
        ignore ((BasicGameResources.get_stringBuffer ())#append (!string));
        ignore ((BasicGameResources.get_stringBuffer ())#append (iCON_SIZE));
        rESOURCE_ICON <- (java_string_of (Obj.repr (BasicGameResources.get_stringBuffer ())));
        ignore ((BasicGameResources.get_stringBuffer ())#delete (0, ((BasicGameResources.get_stringBuffer ())#length ())));
        ignore ((BasicGameResources.get_stringBuffer ())#append (rOOT));
        ignore ((BasicGameResources.get_stringBuffer ())#append (iCON_BUILD));
        ignore ((BasicGameResources.get_stringBuffer ())#append (!string));
        ignore ((BasicGameResources.get_stringBuffer ())#append (iCON_SIZE));
        rESOURCE_ICON_BUILD <- (java_string_of (Obj.repr (BasicGameResources.get_stringBuffer ())))
        end [@@warning "-7"]
    

    method getString () : string =
        try
        begin
        if (Obj.magic (java_call_static "AndroidUtil.isAndroid" (Obj.repr ()))) then begin
            raise (Java_return (Obj.repr (((GameGraphicsResourceUtil.getInstance ())#getStringForFeature ((GraphicsFeatureFactory.getInstance ())#sPRITE_QUARTER_ROTATION_GRAPHICS)))))
        end else begin
            raise (Java_return (Obj.repr ((super#getString ()))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        nAME <- (StringUtil.getInstance ())#eMPTY_STRING;
        rESOURCE_ICON_ANIMATION <- (StringUtil.getInstance ())#eMPTY_STRING;
        rESOURCE_ICON_BUILD <- (StringUtil.getInstance ())#eMPTY_STRING;
        rESOURCE_ICON <- (StringUtil.getInstance ())#eMPTY_STRING;
        iCON_SIZE <- "_64_by_64.png";
        ();
        ()
      end
  end
let () = java_register_constructor "UnitGameResources" (fun arguments -> Obj.repr (new unitGameResources (Obj.obj arguments)))


