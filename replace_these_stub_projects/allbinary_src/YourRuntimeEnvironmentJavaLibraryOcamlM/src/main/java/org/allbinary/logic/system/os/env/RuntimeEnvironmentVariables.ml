(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.system.os.env *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.BufferedReader *)
(* import java.io.InputStreamReader *)
(* import java.util.Properties *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.os.GenericOperatingSystem *)
(* import org.allbinary.logic.system.os.OperatingSystemFactory *)
(* import org.allbinary.logic.system.os.OperatingSystems *)
(* import org.allbinary.string.CommonStrings *)

class runtimeEnvironmentVariables () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    
    

    method getTest1 () : string =
        begin
        (java_system_get_property ("java.java.home"))
        end
    

    method getVariable ((var : string)) : string =
        begin
        let environmentVariables : Obj.t ref = ref ((Obj.repr (self#get ()))) in ();
        ((Obj.magic !environmentVariables)#getProperty (var))
        end
    

    method get : 'return. unit -> 'return = fun () ->
        begin
        (try
            let process : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            let environmentVariables : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "Properties" (Obj.repr ()))))) in ();
            let operatingSystemInterface : GenericOperatingSystem.genericOperatingSystem ref = ref ((((Obj.magic (java_call_static "OperatingSystemFactory.getInstance" (Obj.repr ())))#getOperatingSystemInstance ()) :> GenericOperatingSystem.genericOperatingSystem)) in ();
            let osName : string ref = ref ((!operatingSystemInterface#getName ())) in ();
            let linuxCommand : string ref = ref ("env") in ();
            let windowsCommand : string ref = ref ("cmd.exe /c set") in ();
            let solarisCommand : string ref = ref (!linuxCommand) in ();
            let operatingSystems : OperatingSystems.operatingSystems ref = ref (((OperatingSystems.getInstance ()) :> OperatingSystems.operatingSystems)) in ();
            if ((String.compare !osName (!operatingSystems#lINUX)) == 0) then begin
                process := Obj.repr (((Runtime.getRuntime ())#exec (!linuxCommand)))
            end else if ((java_string_index_of !osName (Obj.repr (!operatingSystems#wINDOWS))) >= 0) then begin
                process := Obj.repr (((Runtime.getRuntime ())#exec (!windowsCommand)))
            end else if ((String.compare !osName (!operatingSystems#sOLARIS)) == 0) then begin
                process := Obj.repr (((Runtime.getRuntime ())#exec (!solarisCommand)))
            end else begin
                raise (Failure ("Exception"))
            end;
            let processInputStreamReader : Obj.t ref = ref ((Obj.repr (new InputStreamReader.inputStreamReader (((Obj.magic !process)#getInputStream ()))))) in ();
            let bufferedReader : Obj.t ref = ref ((Obj.repr (new BufferedReader.bufferedReader ((Obj.magic !processInputStreamReader))))) in ();
            let keyValuePair : string ref = ref ("") in ();
            while (((keyValuePair := ((Obj.magic !bufferedReader)#readLine ()); !keyValuePair)) != (Obj.magic 0)) do
                let index : int ref = ref ((java_string_index_of !keyValuePair (Obj.repr ('=')))) in ();
                let key : string ref = ref ((String.sub !keyValuePair (0) ((!index) - (0)))) in ();
                let value : string ref = ref ((String.sub !keyValuePair ((!index + 1)) (String.length !keyValuePair - ((!index + 1))))) in ();
                ignore ((Obj.magic !environmentVariables)#put (!key, !value))
            done;
            (Obj.magic ((Obj.magic !environmentVariables)))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#oSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "get()", e))
            end;
            (Obj.magic ((Obj.magic 0)))
        end)
        end
    

    method getTempDir () : string =
        begin
        (try
            (java_system_get_property ("java.io.tmpdir"))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#oSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "getTempDir()", e))
            end;
            (Obj.magic 0)
        end)
        end
    

    method getLibraryPath () : string =
        begin
        (try
            (java_system_get_property ("java.library.path"))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#oSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "getLibraryPath()", e))
            end;
            (Obj.magic 0)
        end)
        end
    

    method getClassPath () : string =
        begin
        (try
            (java_system_get_property ("java.class.path"))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#oSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "getClassPath()", e))
            end;
            (Obj.magic 0)
        end)
        end
    

    method updateLibraryPath ((libPath : string)) : unit =
        begin
        (try
            let existingPath : string ref = ref ((self#getLibraryPath ())) in ();
            ignore (Obj.magic (java_call_static "System.setProperty" (Obj.repr ("java.library.path", ((libPath ^ ":") ^ !existingPath)))))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#oSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "updateLibraryPath()", e))
            end
        end)
        end
    

    method getUserHome () : string =
        begin
        (try
            (java_system_get_property ("user.home"))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#oSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "getUserHome()", e))
            end;
            (Obj.magic 0)
        end)
        end
    

    method getUserDir () : string =
        begin
        (try
            (java_system_get_property ("user.dir"))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#oSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "getUserDir()", e))
            end;
            (Obj.magic 0)
        end)
        end
    

    method set () : unit =
        begin
        (try
            ()
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#oSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "get()", e))
            end
        end)
        end
    

    method setVariable ((var : string), (val_ : string)) : unit =
        begin
        (try
            let process : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            let operatingSystemInterface : GenericOperatingSystem.genericOperatingSystem ref = ref ((((Obj.magic (java_call_static "OperatingSystemFactory.getInstance" (Obj.repr ())))#getOperatingSystemInstance ()) :> GenericOperatingSystem.genericOperatingSystem)) in ();
            let operatingSystems : OperatingSystems.operatingSystems ref = ref (((OperatingSystems.getInstance ()) :> OperatingSystems.operatingSystems)) in ();
            let osName : string ref = ref ((!operatingSystemInterface#getName ())) in ();
            let windowsCommand : string ref = ref (((("cmd.exe /c set" ^ var) ^ "=") ^ val_)) in ();
            if ((String.compare !osName (!operatingSystems#lINUX)) == 0) then begin
                raise (Failure ("Exception"))
            end else if ((java_string_index_of !osName (Obj.repr (!operatingSystems#wINDOWS))) >= 0) then begin
                process := Obj.repr (((Runtime.getRuntime ())#exec (!windowsCommand)))
            end else if ((String.compare !osName (!operatingSystems#sOLARIS)) == 0) then begin
                raise (Failure ("Exception"))
            end else begin
                raise (Failure ("Exception"))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#oSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "setVariable()", e))
            end
        end)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "RuntimeEnvironmentVariables" (fun arguments -> Obj.repr (new runtimeEnvironmentVariables (Obj.obj arguments)))


