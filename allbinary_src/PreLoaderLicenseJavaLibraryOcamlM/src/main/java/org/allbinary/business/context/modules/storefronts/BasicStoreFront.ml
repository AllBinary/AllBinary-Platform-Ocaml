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
(* package org.allbinary.business.context.modules.storefronts *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.user.UserData *)
(* import org.allbinary.logic.string.tokens.Tokenizer *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class basicStoreFront () =
  object (self)
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable userName : string = ""
    method userName = userName
    method set_userName value' = userName <- value'
    val mutable basketName : string = ""
    method basketName = basketName
    method set_basketName value' = basketName <- value'
    val mutable homeHostName : string = ""
    method homeHostName = homeHostName
    method set_homeHostName value' = homeHostName <- value'
    val mutable homeHostNamePath : string = ""
    method homeHostNamePath = homeHostNamePath
    method set_homeHostNamePath value' = homeHostNamePath <- value'
    val mutable hostName : string = ""
    method hostName = hostName
    method set_hostName value' = hostName <- value'
    val mutable hostNamePath : string = ""
    method hostNamePath = hostNamePath
    method set_hostNamePath value' = hostNamePath <- value'
    val mutable testHomeHostName : string = ""
    method testHomeHostName = testHomeHostName
    method set_testHomeHostName value' = testHomeHostName <- value'
    val mutable testHomeHostNamePath : string = ""
    method testHomeHostNamePath = testHomeHostNamePath
    method set_testHomeHostNamePath value' = testHomeHostNamePath <- value'
    val mutable testHostName : string = ""
    method testHostName = testHostName
    method set_testHostName value' = testHostName <- value'
    val mutable testHostNamePath : string = ""
    method testHostNamePath = testHostNamePath
    method set_testHostNamePath value' = testHostNamePath <- value'
    val mutable imagePath : string = ""
    method imagePath = imagePath
    method set_imagePath value' = imagePath <- value'
    val mutable staticPath : string = ""
    method staticPath = staticPath
    method set_staticPath value' = staticPath <- value'
    val mutable categoryPath : string = ""
    method categoryPath = categoryPath
    method set_categoryPath value' = categoryPath <- value'
    val mutable inventoryControl : string = ""
    method inventoryControl = inventoryControl
    method set_inventoryControl value' = inventoryControl <- value'
    val mutable subStores : string = ""
    method subStores = subStores
    method set_subStores value' = subStores <- value'
    val mutable tagLocation : string = ""
    method tagLocation = tagLocation
    method set_tagLocation value' = tagLocation <- value'
    val mutable packageLocation : string = ""
    method packageLocation = packageLocation
    method set_packageLocation value' = packageLocation <- value'
    val mutable ftp : string = ""
    method ftp = ftp
    method set_ftp value' = ftp <- value'
    val mutable ftpPath : string = ""
    method ftpPath = ftpPath
    method set_ftpPath value' = ftpPath <- value'
    val mutable ftpUserName : string = ""
    method ftpUserName = ftpUserName
    method set_ftpUserName value' = ftpUserName <- value'
    val mutable ftpPassword : string = ""
    method ftpPassword = ftpPassword
    method set_ftpPassword value' = ftpPassword <- value'
    val mutable testFtp : string = ""
    method testFtp = testFtp
    method set_testFtp value' = testFtp <- value'
    val mutable testFtpPath : string = ""
    method testFtpPath = testFtpPath
    method set_testFtpPath value' = testFtpPath <- value'
    val mutable testFtpUserName : string = ""
    method testFtpUserName = testFtpUserName
    method set_testFtpUserName value' = testFtpUserName <- value'
    val mutable testFtpPassword : string = ""
    method testFtpPassword = testFtpPassword
    method set_testFtpPassword value' = testFtpPassword <- value'
    val mutable timeCreated : string = ""
    method timeCreated = timeCreated
    method set_timeCreated value' = timeCreated <- value'
    val mutable lastModified : string = ""
    method lastModified = lastModified
    method set_lastModified value' = lastModified <- value'
    
    
    

    method getTestHtmlPath () : string =
        begin
        (((org.get_allbinary ())#globals#uRLGLOBALS#getTestHtmlPath ()) + (self#getCurrentHostNamePath ()))
        end
    

    method getCurrentHostName () : string =
        begin
        let location : string ref = ref ((Obj.magic 0)) in ();
        if ((org.get_allbinary ())#globals#uRLGLOBALS#isTestingMode ()) then begin
            location := (self#getTestHostName ())
        end else begin
            location := (self#getHostName ())
        end;
        !location
        end
    

    method getCurrentHostNamePath () : string =
        begin
        let location : string ref = ref ((Obj.magic 0)) in ();
        if ((org.get_allbinary ())#globals#uRLGLOBALS#isTestingMode ()) then begin
            location := (self#getTestHostNamePath ())
        end else begin
            location := (self#getHostNamePath ())
        end;
        !location
        end
    

    method getCurrentHomeHostName () : string =
        begin
        let location : string ref = ref ((Obj.magic 0)) in ();
        if ((org.get_allbinary ())#globals#uRLGLOBALS#isTestingMode ()) then begin
            location := (self#getTestHomeHostName ())
        end else begin
            location := (self#getHomeHostName ())
        end;
        !location
        end
    

    method getCurrentHomeHostNamePath () : string =
        begin
        let location : string ref = ref ((Obj.magic 0)) in ();
        if ((org.get_allbinary ())#globals#uRLGLOBALS#isTestingMode ()) then begin
            location := (self#getTestHomeHostNamePath ())
        end else begin
            location := (self#getHomeHostNamePath ())
        end;
        !location
        end
    

    method getName () : string =
        begin
        name
        end
    

    method getUserName () : string =
        begin
        userName
        end
    

    method getBasketName () : string =
        begin
        basketName
        end
    

    method getHomeHostName () : string =
        begin
        homeHostName
        end
    

    method getHomeHostNamePath () : string =
        begin
        homeHostNamePath
        end
    

    method getHostName () : string =
        begin
        hostName
        end
    

    method getHostNamePath () : string =
        begin
        hostNamePath
        end
    

    method getTestHomeHostName () : string =
        begin
        testHomeHostName
        end
    

    method getTestHomeHostNamePath () : string =
        begin
        testHomeHostNamePath
        end
    

    method getTestHostName () : string =
        begin
        testHostName
        end
    

    method getTestHostNamePath () : string =
        begin
        testHostNamePath
        end
    

    method getStaticPath () : string =
        begin
        staticPath
        end
    

    method getCategoryPath () : string =
        begin
        categoryPath
        end
    

    method getInventoryControl () : string =
        begin
        inventoryControl
        end
    

    method getSubStores () : BasicArrayList.basicArrayList =
        begin
        (try
            let tokenizer : Tokenizer.tokenizer ref = ref (((new Tokenizer.tokenizer ((CommonSeps.getInstance ())#sEMICOLON)) :> Tokenizer.tokenizer)) in ();
            let subStoreVector : BasicArrayList.basicArrayList ref = ref (((!tokenizer#getTokensFromString (subStores, (new BasicArrayListD.basicArrayListD ()))) :> BasicArrayList.basicArrayList)) in ();
            (!subStoreVector :> BasicArrayList.basicArrayList)
        with e -> begin
            raise e
        end)
        end
    

    method getTagLocation () : string =
        begin
        tagLocation
        end
    

    method getPackageLocation () : string =
        begin
        packageLocation
        end
    

    method getFtp () : string =
        begin
        ftp
        end
    

    method getFtpUserName () : string =
        begin
        ftpUserName
        end
    

    method getFtpPassword () : string =
        begin
        ftpPassword
        end
    

    method getTestFtp () : string =
        begin
        testFtp
        end
    

    method getTestFtpUserName () : string =
        begin
        testFtpUserName
        end
    

    method getTestFtpPassword () : string =
        begin
        testFtpPassword
        end
    

    method getFtpPath () : string =
        begin
        ftpPath
        end
    

    method getTestFtpPath () : string =
        begin
        testFtpPath
        end
    

    method getTimeCreated () : string =
        begin
        timeCreated
        end
    

    method getLastModified () : string =
        begin
        lastModified
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
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ()
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "BasicStoreFront" (fun arguments -> Obj.repr (new basicStoreFront (Obj.obj arguments)))


