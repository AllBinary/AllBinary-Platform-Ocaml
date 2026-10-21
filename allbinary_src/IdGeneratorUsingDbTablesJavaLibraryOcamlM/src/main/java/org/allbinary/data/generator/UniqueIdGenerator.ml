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
(* package org.allbinary.data.generator *)

open Allbinary_java [@@warning "-33"]
(* import java.io.IOException *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.data.tables.generator.IdGeneratorEntity *)
(* import org.allbinary.data.tables.generator.IdGeneratorEntityFactory *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class uniqueIdGenerator () =
  object (self)
    val mutable logUtil : LogUtil.logUtil = (Obj.magic 0)
    method logUtil = logUtil
    method set_logUtil value = logUtil <- value
    val mutable idGeneratorEntity : IdGeneratorEntity.idGeneratorEntity = (Obj.magic 0)
    method idGeneratorEntity = idGeneratorEntity
    method set_idGeneratorEntity value = idGeneratorEntity <- value
    val mutable name : string = ""
    method name = name
    method set_name value = name <- value
    
    

    method initialize ((value : int)) =
        begin
        (try
            let vector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            ignore (!vector#add (name));
            ignore (!vector#add (((string_of_int (value))#toString ())));
            ignore (idGeneratorEntity#insert (!vector))
        with e -> begin
            if (org.allbinary#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains ((org.allbinary#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#iDLOGGING)) then begin
                let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
                ignore (logUtil#put (!commonStrings#eXCEPTION, self, "initialize", e))
            end
        end)
        end
    

    method setFile ((_filePathName : string), (name_arg : string)) =
        begin
        name <- name_arg
        end
    

    method getNext () : string =
        begin
        (try
            let idLong : int ref = ref ((idGeneratorEntity#get (name))) in ();
            let newValue : int ref = ref ((string_of_int ((!idLong + 1)))) in ();
            ignore (idGeneratorEntity#update (name, !newValue));
            (string_of_int !idLong)
        with e -> begin
            if (org.allbinary#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains ((org.allbinary#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#iDLOGGING)) then begin
                let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
                ignore (logUtil#put (!commonStrings#eXCEPTION, self, "getNext", e))
            end;
            "Error"
        end)
        end

    initializer
      begin
        logUtil <- ((LogUtil.getInstance ()) :> LogUtil.logUtil);
        ();
        name <- "";
        ();
        idGeneratorEntity <- (Obj.magic (IdGeneratorEntityFactory.getInstance ()))
      end
  end

let eXT : string = ".unq"

