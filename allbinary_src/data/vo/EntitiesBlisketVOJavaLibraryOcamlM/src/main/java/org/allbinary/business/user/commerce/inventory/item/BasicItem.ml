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
(* package org.allbinary.business.user.commerce.inventory.item *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Calendar *)
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.user.commerce.money.Money *)
(* import org.allbinary.business.user.commerce.money.MoneyException *)
(* import org.allbinary.data.generator.ProductIdGenerator *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.string.CommonPhoneStrings *)
(* import org.allbinary.string.CommonStrings *)

class basicItem () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable basicItemData : BasicItemData.basicItemData = (Obj.magic 0)
    method basicItemData = basicItemData
    method set_basicItemData value' = basicItemData <- value'
    val mutable itemId : string = ""
    method itemId = itemId
    method set_itemId value' = itemId <- value'
    val mutable number : string = ""
    method number = number
    method set_number value' = number <- value'
    val mutable inBaskets : string = ""
    method inBaskets = inBaskets
    method set_inBaskets value' = inBaskets <- value'
    val mutable weight : string = ""
    method weight = weight
    method set_weight value' = weight <- value'
    val mutable enabled : string = ""
    method enabled = enabled
    method set_enabled value' = enabled <- value'
    val mutable newOrUsed : string = ""
    method newOrUsed = newOrUsed
    method set_newOrUsed value' = newOrUsed <- value'
    val mutable summary : string = ""
    method summary = summary
    method set_summary value' = summary <- value'
    val mutable distributor : string = ""
    method distributor = distributor
    method set_distributor value' = distributor <- value'
    val mutable idUsedByDistributor : string = ""
    method idUsedByDistributor = idUsedByDistributor
    method set_idUsedByDistributor value' = idUsedByDistributor <- value'
    val mutable producedBy : string = ""
    method producedBy = producedBy
    method set_producedBy value' = producedBy <- value'
    val mutable productionDate : string = ""
    method productionDate = productionDate
    method set_productionDate value' = productionDate <- value'
    val mutable startProductionDate : string = ""
    method startProductionDate = startProductionDate
    method set_startProductionDate value' = startProductionDate <- value'
    val mutable description : string = ""
    method description = description
    method set_description value' = description <- value'
    val mutable keywords : string = ""
    method keywords = keywords
    method set_keywords value' = keywords <- value'
    val mutable category : string = ""
    method category = category
    method set_category value' = category <- value'
    val mutable type_ : string = ""
    method type_ = type_
    method set_type_ value' = type_ <- value'
    val mutable smallImage : string = ""
    method smallImage = smallImage
    method set_smallImage value' = smallImage <- value'
    val mutable mediumImage : string = ""
    method mediumImage = mediumImage
    method set_mediumImage value' = mediumImage <- value'
    val mutable largeImage : string = ""
    method largeImage = largeImage
    method set_largeImage value' = largeImage <- value'
    val mutable price : Money.money = (Obj.magic 0)
    method price = price
    method set_price value' = price <- value'
    val mutable comment : string = ""
    method comment = comment
    method set_comment value' = comment <- value'
    val mutable customs : string = ""
    method customs = customs
    method set_customs value' = customs <- value'
    val mutable downloads : string = ""
    method downloads = downloads
    method set_downloads value' = downloads <- value'
    val mutable groups : string = ""
    method groups = groups
    method set_groups value' = groups <- value'
    val mutable options : string = ""
    method options = options
    method set_options value' = options <- value'
    val mutable permissions : string = ""
    method permissions = permissions
    method set_permissions value' = permissions <- value'
    val mutable specials : string = ""
    method specials = specials
    method set_specials value' = specials <- value'
    val mutable downloadable : bool = false
    method downloadable = downloadable
    method set_downloadable value' = downloadable <- value'
    val mutable timeEntered : string = ""
    method timeEntered = timeEntered
    method set_timeEntered value' = timeEntered <- value'
    val mutable lastModified : string = ""
    method lastModified = lastModified
    method set_lastModified value' = lastModified <- value'
    
    
    

    method setId ((itemId_arg : string)) : unit =
        begin
        itemId <- itemId_arg
        end
    

    method setNumber ((number_arg : string)) : unit =
        begin
        number <- number_arg
        end
    

    method setInBaskets ((value : string)) : unit =
        begin
        inBaskets <- value
        end
    

    method setWeight ((value : string)) : unit =
        begin
        weight <- value
        end
    

    method setNewOrUsed ((value : string)) : unit =
        begin
        newOrUsed <- value
        end
    

    method setSummary ((value : string)) : unit =
        begin
        summary <- value
        end
    

    method setDistributor ((value : string)) : unit =
        begin
        distributor <- value
        end
    

    method setIdUsedByDistributor ((value : string)) : unit =
        begin
        idUsedByDistributor <- value
        end
    

    method setProducedBy ((value : string)) : unit =
        begin
        producedBy <- value
        end
    

    method setProductionDate ((value : string)) : unit =
        begin
        productionDate <- value
        end
    

    method setStartProductionDate ((value : string)) : unit =
        begin
        startProductionDate <- value
        end
    

    method setDescription ((value : string)) : unit =
        begin
        description <- value
        end
    

    method setKeywords ((value : string)) : unit =
        begin
        keywords <- value
        end
    

    method setCategory ((value : string)) : unit =
        begin
        category <- value
        end
    

    method setType ((value : string)) : unit =
        begin
        type_ <- value
        end
    

    method setSmallImage ((value : string)) : unit =
        begin
        smallImage <- value
        end
    

    method setMediumImage ((value : string)) : unit =
        begin
        mediumImage <- value
        end
    

    method setLargeImage ((value : string)) : unit =
        begin
        largeImage <- value
        end
    

    method setTimeEntered ((value : string)) : unit =
        begin
        timeEntered <- value
        end
    

    method setLastModified ((value : string)) : unit =
        begin
        lastModified <- value
        end
    

    method setPrice : 'any1. 'any1 -> unit = fun (value) ->
        let value = Obj.repr value in
        begin
        price <- (Obj.magic value)
        end [@@warning "-20"]
    

    method setComment ((value : string)) : unit =
        begin
        comment <- value
        end
    

    method setCustoms ((value : string)) : unit =
        begin
        customs <- value
        end
    

    method setDownloads ((value : string)) : unit =
        begin
        downloads <- value;
        if (not ((StringValidationUtil.getInstance ())#isEmpty (downloads))) then begin
            let downloadInteger : int ref = ref ((string_of_int (downloads))) in ();
            if (!downloadInteger != 0) then begin
                (self#setDownloadable (true))
            end
        end
        end
    

    method setGroups ((value : string)) : unit =
        begin
        groups <- value
        end
    

    method setOptions ((value : string)) : unit =
        begin
        options <- value
        end
    

    method setPermissions ((value : string)) : unit =
        begin
        permissions <- value
        end
    

    method setSpecials ((value : string)) : unit =
        begin
        specials <- value
        end
    

    method setEnabled ((value : string)) : unit =
        begin
        enabled <- value
        end
    

    method getId () : string =
        begin
        itemId
        end
    

    method getNumber () : string =
        begin
        number
        end
    

    method getInBaskets () : string =
        begin
        inBaskets
        end
    

    method getWeight () : string =
        begin
        weight
        end
    

    method getNewOrUsed () : string =
        begin
        newOrUsed
        end
    

    method getSummary () : string =
        begin
        summary
        end
    

    method getDistributor () : string =
        begin
        distributor
        end
    

    method getIdUsedByDistributor () : string =
        begin
        idUsedByDistributor
        end
    

    method getProducedBy () : string =
        begin
        producedBy
        end
    

    method getProductionDate () : string =
        begin
        productionDate
        end
    

    method getStartProductionDate () : string =
        begin
        startProductionDate
        end
    

    method getDescription () : string =
        begin
        description
        end
    

    method getKeywords () : string =
        begin
        keywords
        end
    

    method getCategory () : string =
        begin
        category
        end
    

    method getType () : string =
        begin
        type_
        end
    

    method getSmallImage () : string =
        begin
        smallImage
        end
    

    method getMediumImage () : string =
        begin
        mediumImage
        end
    

    method getLargeImage () : string =
        begin
        largeImage
        end
    

    method getTimeEntered () : string =
        begin
        timeEntered
        end
    

    method getLastModified () : string =
        begin
        lastModified
        end
    

    method getPrice () : Money.money =
        begin
        (price :> Money.money)
        end
    

    method getComment () : string =
        begin
        comment
        end
    

    method getCustoms () : string =
        begin
        customs
        end
    

    method getDownloads () : string =
        begin
        downloads
        end
    

    method getGroups () : string =
        begin
        groups
        end
    

    method getOptions () : string =
        begin
        options
        end
    

    method getPermissions () : string =
        begin
        permissions
        end
    

    method getSpecials () : string =
        begin
        specials
        end
    

    method setDownloadable ((downloadable_arg : bool)) : unit =
        begin
        downloadable <- downloadable_arg
        end
    

    method isDownloadable () : bool =
        begin
        downloadable
        end
    

    method getEnabled () : string =
        begin
        enabled
        end
    

    method getTotal () : Money.money =
        begin
        let itemTotal : Money.money ref = ref (((new Money.money (price)) :> Money.money)) in ();
        ignore (!itemTotal#multiply (((Obj.obj (java_new "Integer" (Obj.repr (number))))#intValue ())));
        (!itemTotal :> Money.money)
        end
    

    method toHashMap () : java_hash_map =
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#pRODUCTSEARCHLOGGING)) then begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "toHashMap"))
        end;
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put (basicItemData#iD, itemId));
        ignore (!hashMap#put (basicItemData#nUMBER, number));
        ignore (!hashMap#put (basicItemData#iNBASKETS, inBaskets));
        ignore (!hashMap#put (basicItemData#wEIGHT, weight));
        ignore (!hashMap#put ((EntryData.getInstance ())#eNABLE, enabled));
        ignore (!hashMap#put (basicItemData#nEWORUSED, newOrUsed));
        ignore (!hashMap#put (basicItemData#sUMMARY, summary));
        ignore (!hashMap#put (basicItemData#dISTRIBUTOR, distributor));
        ignore (!hashMap#put (basicItemData#iDUSEDBYDISTRIBUTOR, idUsedByDistributor));
        ignore (!hashMap#put (basicItemData#pRODUCEDBY, producedBy));
        ignore (!hashMap#put (basicItemData#pRODUCTIONDATE, productionDate));
        ignore (!hashMap#put (basicItemData#sTARTPRODUCTIONDATE, startProductionDate));
        ignore (!hashMap#put (basicItemData#dESCRIPTION, description));
        ignore (!hashMap#put (basicItemData#kEYWORDS, keywords));
        ignore (!hashMap#put (basicItemData#cATEGORY, category));
        ignore (!hashMap#put (basicItemData#tYPE, type_));
        ignore (!hashMap#put (basicItemData#sMALLIMAGE, smallImage));
        ignore (!hashMap#put (basicItemData#mEDIUMIMAGE, mediumImage));
        ignore (!hashMap#put (basicItemData#lARGEIMAGE, largeImage));
        let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
        let time : string ref = ref ((java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr ((!calendar#getTimeInMillis ())))))))) in ();
        ignore (!hashMap#put ((EntryData.getInstance ())#lASTMODIFIED, !time));
        ignore (!hashMap#put (basicItemData#pRICE, (java_string_of (Obj.repr price))));
        ignore (!hashMap#put (basicItemData#cOMMENT, comment));
        ignore (!hashMap#put (basicItemData#cUSTOMS, customs));
        ignore (!hashMap#put (basicItemData#dOWNLOADS, (self#getDownloads ())));
        ignore (!hashMap#put (basicItemData#gROUPS, groups));
        ignore (!hashMap#put (basicItemData#oPTIONS, options));
        ignore (!hashMap#put (basicItemData#pERMISSIONS, permissions));
        ignore (!hashMap#put (basicItemData#sPECIALS, specials));
        (!hashMap :> java_hash_map)
        end
    

    method toVector () : BasicArrayList.basicArrayList =
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#pRODUCTSEARCHLOGGING)) then begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "toVector"))
        end;
        let values : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!values#add (itemId));
        ignore (!values#add (number));
        ignore (!values#add (inBaskets));
        ignore (!values#add (weight));
        ignore (!values#add (enabled));
        ignore (!values#add (newOrUsed));
        ignore (!values#add (summary));
        ignore (!values#add (distributor));
        ignore (!values#add (idUsedByDistributor));
        ignore (!values#add (producedBy));
        ignore (!values#add (productionDate));
        ignore (!values#add (startProductionDate));
        ignore (!values#add (description));
        ignore (!values#add (keywords));
        ignore (!values#add (category));
        ignore (!values#add (type_));
        ignore (!values#add ((self#getSmallImage ())));
        ignore (!values#add ((self#getMediumImage ())));
        ignore (!values#add ((self#getLargeImage ())));
        let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
        let time : string ref = ref ((java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr ((!calendar#getTimeInMillis ())))))))) in ();
        ignore (!values#add (!time));
        ignore (!values#add (!time));
        ignore (!values#add ((java_string_of (Obj.repr price))));
        ignore (!values#add (comment));
        ignore (!values#add (customs));
        ignore (!values#add ((self#getDownloads ())));
        ignore (!values#add (groups));
        ignore (!values#add (options));
        ignore (!values#add (permissions));
        ignore (!values#add (specials));
        (!values :> BasicArrayList.basicArrayList)
        end
    

    method getKey () : Obj.t =
        begin
        (Obj.repr ((Obj.magic (self#getId ()))))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        basicItemData <- ((BasicItemData.getInstance ()) :> BasicItemData.basicItemData);
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
        downloads <- "";
        ();
        ();
        ();
        ();
        downloadable <- false;
        ();
        ();
        ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#pRODUCTSEARCHLOGGING)) then begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#cONSTRUCTOR))
        end;
        let eMPTY : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING) in ();
        itemId <- ((new ProductIdGenerator.productIdGenerator ())#getNext ());
        number <- (CommonPhoneStrings.getInstance ())#zERO;
        inBaskets <- !eMPTY;
        weight <- !eMPTY;
        enabled <- !eMPTY;
        newOrUsed <- !eMPTY;
        summary <- !eMPTY;
        distributor <- !eMPTY;
        idUsedByDistributor <- !eMPTY;
        producedBy <- !eMPTY;
        productionDate <- !eMPTY;
        startProductionDate <- !eMPTY;
        description <- !eMPTY;
        keywords <- !eMPTY;
        category <- !eMPTY;
        type_ <- !eMPTY;
        smallImage <- !eMPTY;
        mediumImage <- !eMPTY;
        largeImage <- !eMPTY;
        timeEntered <- !eMPTY;
        lastModified <- !eMPTY;
        price <- (new Money.money ());
        comment <- !eMPTY;
        customs <- !eMPTY;
        (self#setDownloads (!eMPTY));
        groups <- !eMPTY;
        options <- !eMPTY;
        permissions <- !eMPTY;
        specials <- !eMPTY
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "BasicItem" (fun arguments -> Obj.repr (new basicItem (Obj.obj arguments)))


