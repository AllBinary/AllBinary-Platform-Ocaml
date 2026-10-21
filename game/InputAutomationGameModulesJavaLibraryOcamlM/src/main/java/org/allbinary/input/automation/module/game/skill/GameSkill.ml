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
(* package org.allbinary.input.automation.module.game.skill *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)

let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map))
let get_hashMap () = !hashMap
let set_hashMap value' = hashMap := value'
let () = java_register_static "GameSkill.get_hashMap" (fun _ -> Obj.repr (get_hashMap ()))

let getInstance : 'any1. 'any1 * string -> _ = fun (gameSkillType_arg, (extra_arg : string)) ->
        let gameSkillType_arg = Obj.repr gameSkillType_arg in
        begin
        (Obj.magic (!hashMap#get ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append (((Obj.magic gameSkillType_arg)#getName ())))#append ((CommonSeps.getInstance ())#sPACE))#append (extra_arg)))))))
        end [@@warning "-20"]

let () = java_register_static "GameSkill.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class gameSkill ((gameSkillType_arg : GameSkillType.gameSkillType), (extra_arg : string), (time_arg : int)) =
  object (self)
    val mutable gameSkillType : GameSkillType.gameSkillType = (Obj.magic 0)
    method gameSkillType = gameSkillType
    method set_gameSkillType value' = gameSkillType <- value'
    val mutable extra : string = ""
    method extra = extra
    method set_extra value' = extra <- value'
    val mutable time : int = 0
    method time = time
    method set_time value' = time <- value'
    val mutable vector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method vector = vector
    method set_vector value' = vector <- value'
    val mutable gAME_SKILL_LABEL : string = ""
    method gAME_SKILL_LABEL = gAME_SKILL_LABEL
    method set_gAME_SKILL_LABEL value' = gAME_SKILL_LABEL <- value'
    val mutable eXTRA_LABEL : string = ""
    method eXTRA_LABEL = eXTRA_LABEL
    method set_eXTRA_LABEL value' = eXTRA_LABEL <- value'
    val mutable tIME_LABEL : string = ""
    method tIME_LABEL = tIME_LABEL
    method set_tIME_LABEL value' = tIME_LABEL <- value'
    
    

    method getGameSkillType () : GameSkillType.gameSkillType =
        begin
        (gameSkillType :> GameSkillType.gameSkillType)
        end
    

    method setGameSkillType : 'any1. 'any1 -> unit = fun (gameSkillType_arg) ->
        let gameSkillType_arg = Obj.repr gameSkillType_arg in
        begin
        gameSkillType <- (Obj.magic gameSkillType_arg)
        end [@@warning "-20"]
    

    method getExtra () : string =
        begin
        extra
        end
    

    method setExtra ((extra_arg : string)) : unit =
        begin
        extra <- extra_arg
        end
    

    method getTime () : int =
        begin
        time
        end
    

    method setTime ((time_arg : int)) : unit =
        begin
        time <- time_arg
        end
    

    method addProperty : 'any1. 'any1 -> unit = fun (gameSkillPropertyInterface) ->
        let gameSkillPropertyInterface = Obj.repr gameSkillPropertyInterface in
        begin
        ignore (vector#add ((Obj.magic gameSkillPropertyInterface)))
        end [@@warning "-20"]
    

    method getProperties () : BasicArrayList.basicArrayList =
        begin
        (vector :> BasicArrayList.basicArrayList)
        end
    

    method toString () : string =
        begin
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (gAME_SKILL_LABEL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (self#getGameSkillType ())))));
        ignore (!stringBuffer#append (!commonSeps#sPACE));
        ignore (!stringBuffer#append (eXTRA_LABEL));
        ignore (!stringBuffer#append ((self#getExtra ())));
        ignore (!stringBuffer#append (!commonSeps#sPACE));
        ignore (!stringBuffer#append (tIME_LABEL));
        ignore (!stringBuffer#appendlong ((self#getTime ())));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        gameSkillType <- ((Obj.magic 0) :> GameSkillType.gameSkillType);
        extra <- "";
        time <- 0;
        ();
        gAME_SKILL_LABEL <- "GameSkill: ";
        eXTRA_LABEL <- "Extra: ";
        tIME_LABEL <- "Time: ";
        ();
        (self#setGameSkillType (gameSkillType_arg));
        (self#setExtra (extra_arg));
        (self#setTime (time_arg));
        vector <- (new BasicArrayListD.basicArrayListD ());
        ignore (!hashMap#put ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append (((self#getGameSkillType ())#getName ())))#append ((CommonSeps.getInstance ())#sPACE))#append (extra_arg)))), self))
      end
  end
let () = java_register_constructor "GameSkill" (fun arguments -> Obj.repr (new gameSkill (Obj.obj arguments)))


