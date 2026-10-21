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
(* package admin.taghelpers *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.installer.Portion *)
(* import org.allbinary.business.user.NewUserFactory *)
(* import org.allbinary.business.user.UserData *)
(* import org.allbinary.business.user.UserInterface *)
(* import org.allbinary.business.user.username.UserName *)
(* import org.allbinary.data.tables.user.UserEntityFactory *)
(* import org.allbinary.globals.FREEBLISKET_PATH_GLOBALS *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.communication.http.request.RequestParams *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlTableUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringValidationUtil *)

class userHelper ((hashMap_arg : java_hash_map), pageContext_arg) =
  object (self)
    inherit Table.table ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable hashMap : java_hash_map = (Obj.magic 0)
    method hashMap = hashMap
    method set_hashMap value' = hashMap <- value'
    val mutable pageContext : Obj.t = Obj.repr 0
    method pageContext : 'r. 'r = Obj.magic pageContext
    method set_pageContext : 'v. 'v -> unit = fun value' -> pageContext <- Obj.repr value'
    val mutable request : Obj.t = Obj.repr 0
    method request : 'r. 'r = Obj.magic request
    method set_request : 'v. 'v -> unit = fun value' -> request <- Obj.repr value'
    val mutable path : string = ""
    method path = path
    method set_path value' = path <- value'
    val mutable portion : Portion.portion = (Obj.magic 0)
    method portion = portion
    method set_portion value' = portion <- value'
    
    

    method delete () : string =
        begin
        (try
            let requestHashMap : java_hash_map ref = ref ((((new RequestParams.requestParams ((Obj.magic request)))#toHashMap ()) :> java_hash_map)) in ();
            let userName : UserName.userName ref = ref (((new UserName.userName (!requestHashMap)) :> UserName.userName)) in ();
            ignore ((UserEntityFactory.getInstance ())#deleteWhere ((UserData.get_uSERNAME ()), (!userName#get ())));
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ("Successfully Removed the user with "));
            ignore (!stringBuffer#append ((UserData.get_uSERNAME ())));
            ignore (!stringBuffer#append ("="));
            ignore (!stringBuffer#append ((!userName#get ())));
            ignore (!stringBuffer#append (" from to the user table"));
            let success : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "delete()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ((("Failed to remove user with " ^ java_string_of (Obj.repr ((UserData.get_uSERNAME ())))) ^ " from User table")) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "delete()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method insert () : string =
        begin
        (try
            let userInterface : UserInterface.userInterface ref = ref (((NewUserFactory.getInstance ((Obj.magic request), hashMap)) :> UserInterface.userInterface)) in ();
            let enable : string ref = ref ((Obj.magic (hashMap#get ((EntryData.getInstance ())#eNABLE)))) in ();
            if (not ((StringValidationUtil.getInstance ())#isEmpty (!enable))) then begin
                ignore (!userInterface#setEnable (!enable))
            end;
            let values : BasicArrayList.basicArrayList ref = ref (((!userInterface#toVector ()) :> BasicArrayList.basicArrayList)) in ();
            ignore ((UserEntityFactory.getInstance ())#insert (!values));
            let success : string ref = ref ("New User Successfully added to the Users Table") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "add()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to add User") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "add()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method update () : string =
        begin
        (try
            let user : UserInterface.userInterface ref = ref (((NewUserFactory.getInstance ((Obj.magic request), hashMap)) :> UserInterface.userInterface)) in ();
            let values : java_hash_map ref = ref (((!user#toHashMap ()) :> java_hash_map)) in ();
            ignore ((UserEntityFactory.getInstance ())#update ((!user#getUserName ()), !values));
            let success : string ref = ref ("New User Successfully added to the Users Table") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "update()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to add User") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "update()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method drop () : string =
        begin
        (try
            let success : string ref = ref (((UserEntityFactory.getInstance ())#dropTable ())) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPER)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, commonStrings#dROP))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to drop user table") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#dROP, e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method create () : string =
        begin
        (try
            let success : string ref = ref (((UserEntityFactory.getInstance ())#createTable ())) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPER)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "create()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to create user table") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "create()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method restore () : string =
        begin
        (try
            let success : string ref = ref ("Restore Successful") in ();
            let result : string ref = ref (((Obj.magic (java_call_static "AbSqlTableUtil.getInstance" (Obj.repr ())))#restoreTable ((UserEntityFactory.getInstance ()), portion))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "restore()"))
            end;
            !result
        with e -> begin
            let error : string ref = ref ("Failed to restore backup") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "restore()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method backup () : string =
        begin
        (try
            let success : string ref = ref ("Restore Successful") in ();
            let result : string ref = ref (((Obj.magic (java_call_static "AbSqlTableUtil.getInstance" (Obj.repr ())))#backupTable ((UserEntityFactory.getInstance ())))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPER)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "backup()"))
            end;
            !result
        with e -> begin
            let error : string ref = ref ("Failed to make backup") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERERROR)) then begin
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
        ();
        ();
        ();
        ();
        hashMap <- hashMap_arg;
        pageContext <- Obj.repr (pageContext_arg);
        request <- Obj.repr ((Obj.magic (pageContext_arg#getRequest ())));
        path <- ((URLGLOBALS.getMainPath ()) + (FREEBLISKET_PATH_GLOBALS.getInstance ())#xSLPATH);
        portion <- (new Portion.portion (hashMap_arg))
      end
  end [@@warning "-20"]
let () = java_register_constructor "UserHelper" (fun arguments -> Obj.repr (new userHelper (Obj.obj arguments)))


