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
(* package org.allbinary.business.user.quoterequest *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Calendar *)
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.servlet.http.HttpServletRequest *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.quoterequest.QuoteRequestData *)
(* import org.allbinary.business.user.UserData *)
(* import org.allbinary.data.generator.QuoteRequestIdGenerator *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlData *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)

class quoteRequest ((hashMap : java_hash_map)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable id : string = ""
    method id = id
    method set_id value' = id <- value'
    val mutable userName : string = ""
    method userName = userName
    method set_userName value' = userName <- value'
    val mutable projectInfo : string = ""
    method projectInfo = projectInfo
    method set_projectInfo value' = projectInfo <- value'
    val mutable userComments : string = ""
    method userComments = userComments
    method set_userComments value' = userComments <- value'
    val mutable budget : string = ""
    method budget = budget
    method set_budget value' = budget <- value'
    val mutable timeFrame : string = ""
    method timeFrame = timeFrame
    method set_timeFrame value' = timeFrame <- value'
    val mutable comments : string = ""
    method comments = comments
    method set_comments value' = comments <- value'
    
    
    

    method isValid () : bool =
        begin
        (try
            let valid : bool ref = ref (true) in ();
            if (((userName = (Obj.magic 0)) || ((String.length userName) < 4)) || ((String.length userName) > 250)) then begin
                valid := false
            end;
            if (((projectInfo = (Obj.magic 0)) || ((String.length projectInfo) < 0)) || ((String.length projectInfo) > (AbSqlData.get_mAXBLOB ()))) then begin
                valid := false
            end;
            if (((userComments = (Obj.magic 0)) || ((String.length userComments) < 0)) || ((String.length userComments) > (AbSqlData.get_mAXBLOB ()))) then begin
                valid := false
            end;
            if (((budget = (Obj.magic 0)) || ((String.length budget) < 0)) || ((String.length budget) > (AbSqlData.get_mAXBLOB ()))) then begin
                valid := false
            end;
            if (((timeFrame = (Obj.magic 0)) || ((String.length timeFrame) < 0)) || ((String.length timeFrame) > (AbSqlData.get_mAXBLOB ()))) then begin
                valid := false
            end;
            if (((comments = (Obj.magic 0)) || ((String.length comments) < 0)) || ((String.length comments) > (AbSqlData.get_mAXBLOB ()))) then begin
                valid := false
            end;
            !valid
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to validate form", self, commonStrings#iS_VALID, e))
            end;
            false
        end)
        end
    

    method validationInfo () : string =
        begin
        (try
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            if (((userName = (Obj.magic 0)) || ((String.length userName) < 4)) || ((String.length userName) > 250)) then begin
                ignore (!stringBuffer#append ("Please enter a User Name with more than 4 characters.<br>"))
            end;
            if (((projectInfo = (Obj.magic 0)) || ((String.length projectInfo) < 0)) || ((String.length projectInfo) > (AbSqlData.get_mAXBLOB ()))) then begin
                ignore (!stringBuffer#append ((("Please enter Project Info with less than " ^ java_string_of (Obj.repr ((AbSqlData.get_mAXBLOB ())))) ^ " characters.<br>")))
            end;
            if (((userComments = (Obj.magic 0)) || ((String.length userComments) < 0)) || ((String.length userComments) > (AbSqlData.get_mAXBLOB ()))) then begin
                ignore (!stringBuffer#append ((("Please enter User Comments with less than " ^ java_string_of (Obj.repr ((AbSqlData.get_mAXBLOB ())))) ^ " characters.<br>")))
            end;
            if (((budget = (Obj.magic 0)) || ((String.length budget) < 0)) || ((String.length budget) > (AbSqlData.get_mAXBLOB ()))) then begin
                ignore (!stringBuffer#append ((("Please enter Budget with less than " ^ java_string_of (Obj.repr ((AbSqlData.get_mAXBLOB ())))) ^ " characters.<br>")))
            end;
            if (((timeFrame = (Obj.magic 0)) || ((String.length timeFrame) < 0)) || ((String.length timeFrame) > (AbSqlData.get_mAXBLOB ()))) then begin
                ignore (!stringBuffer#append ((("Please enter time frame with less than " ^ java_string_of (Obj.repr ((AbSqlData.get_mAXBLOB ())))) ^ " characters.<br>")))
            end;
            if (((comments = (Obj.magic 0)) || ((String.length comments) < 0)) || ((String.length comments) > (AbSqlData.get_mAXBLOB ()))) then begin
                ignore (!stringBuffer#append ((("Please enter comments with less than " ^ java_string_of (Obj.repr ((AbSqlData.get_mAXBLOB ())))) ^ " characters.<br>")))
            end;
            (java_string_of (Obj.repr !stringBuffer))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to generate validation error info", self, "validationInfo()", e))
            end;
            "Error Validating Form"
        end)
        end
    

    method toVector () : BasicArrayList.basicArrayList =
        begin
        let values : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!values#add (id));
        ignore (!values#add (userName));
        ignore (!values#add (projectInfo));
        ignore (!values#add (userComments));
        ignore (!values#add (budget));
        ignore (!values#add (timeFrame));
        ignore (!values#add (comments));
        let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
        let time : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr ((!calendar#getTimeInMillis ())))))))))))) in ();
        ignore (!values#add (!time));
        ignore (!values#add (!time));
        (!values :> BasicArrayList.basicArrayList)
        end
    

    method toHashMap () : java_hash_map =
        begin
        let quoteRequestData : QuoteRequestData.quoteRequestData ref = ref (((QuoteRequestData.getInstance ()) :> QuoteRequestData.quoteRequestData)) in ();
        let values : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!values#put ((UserData.get_uSERNAME ()), userName));
        ignore (!values#put (!quoteRequestData#pROJECT_INFO, projectInfo));
        ignore (!values#put (!quoteRequestData#cUSTOMER_COMMENTS, userComments));
        ignore (!values#put (!quoteRequestData#bUDGET, budget));
        ignore (!values#put (!quoteRequestData#tIMEFRAME, timeFrame));
        ignore (!values#put (!quoteRequestData#cOMMENTS, comments));
        let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
        let time : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr ((!calendar#getTimeInMillis ())))))))))))) in ();
        ignore (!values#put ((EntryData.getInstance ())#lASTMODIFIED, !time));
        (!values :> java_hash_map)
        end
    

    method setUserName ((value : string)) : unit =
        begin
        userName <- value
        end
    

    method setProjectInfo ((value : string)) : unit =
        begin
        projectInfo <- value
        end
    

    method setUserComments ((value : string)) : unit =
        begin
        userComments <- value
        end
    

    method setBudget ((value : string)) : unit =
        begin
        budget <- value
        end
    

    method setTimeFrame ((value : string)) : unit =
        begin
        timeFrame <- value
        end
    

    method setComments ((value : string)) : unit =
        begin
        comments <- value;
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        if (comments = (Obj.magic 0)) then begin
            comments <- !stringUtil#eMPTY_STRING
        end
        end
    

    method getUserName () : string =
        begin
        userName
        end
    

    method getProjectInfo () : string =
        begin
        projectInfo
        end
    

    method getUserComments () : string =
        begin
        userComments
        end
    

    method getBudget () : string =
        begin
        budget
        end
    

    method getTimeFrame () : string =
        begin
        timeFrame
        end
    

    method getComments () : string =
        begin
        comments
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        userName <- "";
        projectInfo <- "";
        userComments <- "";
        budget <- "";
        timeFrame <- "";
        comments <- "";
        ();
        let quoteRequestData : QuoteRequestData.quoteRequestData ref = ref (((QuoteRequestData.getInstance ()) :> QuoteRequestData.quoteRequestData)) in ();
        id <- (Obj.magic (hashMap#get (!quoteRequestData#iD)));
        (self#setUserName ((Obj.magic (hashMap#get ((UserData.get_uSERNAME ()))))));
        (self#setProjectInfo ((Obj.magic (hashMap#get (!quoteRequestData#pROJECT_INFO)))));
        (self#setUserComments ((Obj.magic (hashMap#get (!quoteRequestData#cUSTOMER_COMMENTS)))));
        (self#setBudget ((Obj.magic (hashMap#get (!quoteRequestData#bUDGET)))));
        (self#setTimeFrame ((Obj.magic (hashMap#get (!quoteRequestData#tIMEFRAME)))));
        (self#setComments ((Obj.magic (hashMap#get (!quoteRequestData#cOMMENTS)))));
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPER)) then begin
            ignore ((Obj.magic logUtil)#putF (("Created with: " ^ java_string_of (Obj.repr ((self#toHashMap ())))), self, commonStrings#cONSTRUCTOR))
        end
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "QuoteRequest" (fun arguments -> Obj.repr (new quoteRequest (Obj.obj arguments)))


