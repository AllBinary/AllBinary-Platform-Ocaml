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
(* package taghelpers.transform.info *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import javax.servlet.jsp.PageContext *)
(* import admin.taghelpers.BasicTable *)
(* import org.allbinary.business.installer.Portion *)
(* import org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlTableUtil *)

class transformInfoHelper ((hashMap : java_hash_map), _pageContext) =
  object (self)
    inherit BasicTable.basicTable ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable portion : Portion.portion = (Obj.magic 0)
    method portion = portion
    method set_portion value' = portion <- value'
    
    

    method drop () : string =
        begin
        (try
            ((TransformInfoEntityBuilder.getInstance ())#dropTable ())
        with e -> begin
            let error : string ref = ref ("Failed to drop view info table") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#dROP, e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method create () : string =
        begin
        (try
            ((TransformInfoEntityBuilder.getInstance ())#createTable ())
        with e -> begin
            let error : string ref = ref ("Failed to create view info table") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "create()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method restore () : string =
        begin
        (try
            let success : string ref = ref ("Restore Successful") in ();
            let result : string ref = ref (((Obj.magic (java_call_static "AbSqlTableUtil.getInstance" (Obj.repr ())))#restoreTable ((TransformInfoEntityBuilder.getInstance ()), portion))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "restore()"))
            end;
            !result
        with e -> begin
            let error : string ref = ref ("Failed to restore backup") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "restore()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method backup () : string =
        begin
        (try
            let success : string ref = ref ("Backup Successful") in ();
            let result : string ref = ref (((Obj.magic (java_call_static "AbSqlTableUtil.getInstance" (Obj.repr ())))#backupTable ((TransformInfoEntityBuilder.getInstance ())))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "backup()"))
            end;
            !result
        with e -> begin
            let error : string ref = ref ("Failed to make backup") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "backup()", e))
            end;
            !error
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        portion <- (new Portion.portion (hashMap))
      end
  end [@@warning "-20"]
let () = java_register_constructor "TransformInfoHelper" (fun arguments -> Obj.repr (new transformInfoHelper (Obj.obj arguments)))


