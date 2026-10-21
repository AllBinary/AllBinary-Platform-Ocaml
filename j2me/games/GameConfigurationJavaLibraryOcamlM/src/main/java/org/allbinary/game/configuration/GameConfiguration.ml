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
(* package org.allbinary.game.configuration *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.configuration.event.GameFeatureEvent *)
(* import org.allbinary.game.configuration.event.GameFeatureEventHandler *)
(* import org.allbinary.logic.java.bool.BooleanFactory *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)

class gameConfiguration ((name_arg : string), (defaultValue_arg : int), (minValue_arg : int), (maxValue_arg : int)) =
  object (self)
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable defaultValue : int = (Obj.magic 0)
    method defaultValue = defaultValue
    method set_defaultValue value' = defaultValue <- value'
    val mutable value : int = (Obj.magic 0)
    method value = value
    method set_value value' = value <- value'
    val mutable minValue : int = (Obj.magic 0)
    method minValue = minValue
    method set_minValue value' = minValue <- value'
    val mutable maxValue : int = (Obj.magic 0)
    method maxValue = maxValue
    method set_maxValue value' = maxValue <- value'
    val mutable modifiable : bool = (Obj.magic 0)
    method modifiable = modifiable
    method set_modifiable value' = modifiable <- value'
    
    

    method setValue ((value_arg : int)) : unit =
        begin
        if ((Obj.repr value) != (Obj.repr value_arg)) then begin
            let oldValue : int ref = ref (value) in ();
            value <- value_arg;
            ignore ((GameFeatureEventHandler.getInstance ())#fireEvent ((new GameFeatureEvent.gameFeatureEvent (self, (java_string_of (Obj.repr ((((((new StringMaker.stringMaker ())#append (name))#append (" value: from: "))#appendint ((java_to_int (Obj.repr (!oldValue)))))#append (" to "))#appendint ((java_to_int (Obj.repr (value)))))))))))
        end
        end
    

    method getValue () : int =
        begin
        value
        end
    

    method setMaxValue ((maxValue_arg : int)) : unit =
        begin
        maxValue <- maxValue_arg
        end
    

    method getMaxValue () : int =
        begin
        maxValue
        end
    

    method setMinValue ((minValue_arg : int)) : unit =
        begin
        minValue <- minValue_arg
        end
    

    method getMinValue () : int =
        begin
        minValue
        end
    

    method setName ((name_arg : string)) : unit =
        begin
        name <- name_arg
        end
    

    method getName () : string =
        begin
        name
        end
    

    method setDefaultValue ((defaultValue_arg : int)) : unit =
        begin
        defaultValue <- defaultValue_arg
        end
    

    method getDefaultValue () : int =
        begin
        defaultValue
        end
    

    method setDefault () : unit =
        begin
        (self#setValue ((self#getDefaultValue ())))
        end
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("Name: "));
        ignore (!stringBuffer#append (name));
        ignore (!stringBuffer#append (" Min: "));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((self#getMinValue ())#intValue ()))))));
        ignore (!stringBuffer#append (" Max: "));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((self#getMaxValue ())#intValue ()))))));
        ignore (!stringBuffer#append (" Value: "));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((self#getValue ())#intValue ()))))));
        ignore (!stringBuffer#append (" Default: "));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((self#getDefaultValue ())#intValue ()))))));
        ignore (!stringBuffer#append (" Modifiable: "));
        ignore (!stringBuffer#appendboolean (((self#isModifiable ())#booleanValue ())));
        (java_string_of (Obj.repr !stringBuffer))
        end
    

    method setModifiable ((modifiable_arg : bool)) : unit =
        begin
        modifiable <- modifiable_arg
        end
    

    method isModifiable () : bool =
        begin
        modifiable
        end

    initializer
      begin
        name <- (StringUtil.getInstance ())#eMPTY_STRING;
        defaultValue <- ((SmallIntegerSingletonFactory.getInstance ())#getAt (0));
        value <- mIN_VALUE;
        minValue <- defaultValue;
        maxValue <- defaultValue;
        modifiable <- (BooleanFactory.getInstance ())#tRUE;
        ();
        (self#setName (name_arg));
        (self#setDefaultValue (defaultValue_arg));
        value <- (self#getDefaultValue ());
        (self#setMinValue (minValue_arg));
        (self#setMaxValue (maxValue_arg));
        ignore (((GameConfigurationSingleton.getInstance ())#getHashtable ())#put ((self#getName ()), self))
      end
  end
let () = java_register_constructor "GameConfiguration" (fun arguments -> Obj.repr (new gameConfiguration (Obj.obj arguments)))

let mIN_VALUE : int = (Obj.obj (java_new "Integer" (Obj.repr ((-2147483648)))))
let get_mIN_VALUE () = mIN_VALUE
let () = java_register_static "GameConfiguration.get_mIN_VALUE" (fun _ -> Obj.repr (get_mIN_VALUE ()))


