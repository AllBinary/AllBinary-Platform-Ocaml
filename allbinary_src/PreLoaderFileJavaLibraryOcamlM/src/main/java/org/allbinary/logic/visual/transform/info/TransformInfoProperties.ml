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
(* package org.allbinary.logic.visual.transform.info *)

open Allbinary_java [@@warning "-33"]

class transformInfoProperties ((name_arg : string), (label_arg : string), (description_arg : string), (objectFileName_arg : string), (objectConfigFileName_arg : string), (templateFileName_arg : string)) =
  object
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable label : string = ""
    method label = label
    method set_label value' = label <- value'
    val mutable description : string = ""
    method description = description
    method set_description value' = description <- value'
    val mutable objectFileName : string = ""
    method objectFileName = objectFileName
    method set_objectFileName value' = objectFileName <- value'
    val mutable objectConfigFileName : string = ""
    method objectConfigFileName = objectConfigFileName
    method set_objectConfigFileName value' = objectConfigFileName <- value'
    val mutable templateFileName : string = ""
    method templateFileName = templateFileName
    method set_templateFileName value' = templateFileName <- value'
    
    

    method setName ((value : string)) : unit =
        begin
        name <- value
        end
    

    method setDescription ((value : string)) : unit =
        begin
        description <- value
        end
    

    method setViewFile ((value : string)) : unit =
        begin
        objectFileName <- value
        end
    

    method setTemplateFile ((value : string)) : unit =
        begin
        templateFileName <- value
        end
    

    method setObjectConfigFile ((value : string)) : unit =
        begin
        objectConfigFileName <- value
        end
    

    method getName () : string =
        begin
        name
        end
    

    method getLabel () : string =
        begin
        label
        end
    

    method getDescription () : string =
        begin
        description
        end
    

    method getViewFile () : string =
        begin
        objectFileName
        end
    

    method getTemplateFile () : string =
        begin
        templateFileName
        end
    

    method getObjectConfigFile () : string =
        begin
        objectConfigFileName
        end

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        name <- name_arg;
        label <- label_arg;
        description <- description_arg;
        objectFileName <- objectFileName_arg;
        templateFileName <- templateFileName_arg;
        objectConfigFileName <- objectConfigFileName_arg
      end
  end
let () = java_register_constructor "TransformInfoProperties" (fun arguments -> Obj.repr (new transformInfoProperties (Obj.obj arguments)))


