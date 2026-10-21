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
(* package views.admin.inventory *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.ByteArrayInputStream *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.user.commerce.inventory.item.ItemInterface *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.communication.http.file.upload.media.UploadMediaSingleton *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.file.FileUtil *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.logic.visual.media.MediaData *)
(* import org.allbinary.logic.visual.media.MediaTypeData *)
(* import org.allbinary.logic.visual.media.MediaUtil *)
(* import org.allbinary.string.CommonStrings *)

class inventoryUploadMediaUtil ((storeFrontInterface_arg : StoreFrontInterface.storeFrontInterface), (itemInterface_arg : ItemInterface.itemInterface)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable mediaUtil : Obj.t = Obj.repr 0
    method mediaUtil : 'r. 'r = Obj.magic mediaUtil
    method set_mediaUtil : 'v. 'v -> unit = fun value' -> mediaUtil <- Obj.repr value'
    val mutable lARGEWIDTH : int = 0
    method lARGEWIDTH = lARGEWIDTH
    method set_lARGEWIDTH value' = lARGEWIDTH <- value'
    val mutable lARGEHEIGHT : int = 0
    method lARGEHEIGHT = lARGEHEIGHT
    method set_lARGEHEIGHT value' = lARGEHEIGHT <- value'
    val mutable mEDIUMWIDTH : int = 0
    method mEDIUMWIDTH = mEDIUMWIDTH
    method set_mEDIUMWIDTH value' = mEDIUMWIDTH <- value'
    val mutable mEDIUMHEIGHT : int = 0
    method mEDIUMHEIGHT = mEDIUMHEIGHT
    method set_mEDIUMHEIGHT value' = mEDIUMHEIGHT <- value'
    val mutable sMALLWIDTH : int = 0
    method sMALLWIDTH = sMALLWIDTH
    method set_sMALLWIDTH value' = sMALLWIDTH <- value'
    val mutable sMALLHEIGHT : int = 0
    method sMALLHEIGHT = sMALLHEIGHT
    method set_sMALLHEIGHT value' = sMALLHEIGHT <- value'
    val mutable sMALL : string = ""
    method sMALL = sMALL
    method set_sMALL value' = sMALL <- value'
    val mutable mEDIUM : string = ""
    method mEDIUM = mEDIUM
    method set_mEDIUM value' = mEDIUM <- value'
    val mutable lARGE : string = ""
    method lARGE = lARGE
    method set_lARGE value' = lARGE <- value'
    val mutable storeFrontInterface : StoreFrontInterface.storeFrontInterface = (Obj.magic 0)
    method storeFrontInterface = storeFrontInterface
    method set_storeFrontInterface value' = storeFrontInterface <- value'
    val mutable itemInterface : ItemInterface.itemInterface = (Obj.magic 0)
    method itemInterface = itemInterface
    method set_itemInterface value' = itemInterface <- value'
    
    

    method saveFiles : 'any3. int array * string * 'any3 -> ItemInterface.itemInterface = fun ((byteArray : int array), (fileName : string), mediaData) ->
        let mediaData = Obj.repr mediaData in
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#cATEGORY)) then begin
            ignore ((Obj.magic logUtil)#putF (("Start FileName: " ^ fileName), self, "saveFiles()"))
        end;
        if ((StringValidationUtil.getInstance ())#isEmpty (fileName)) then begin
            raise (Failure ("Image File Name Was Null"))
        end;
        let fileUtil : FileUtil.fileUtil ref = ref (((FileUtil.getInstance ()) :> FileUtil.fileUtil)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((URLGLOBALS.getWebappPath ())));
        ignore (!stringBuffer#append ((storeFrontInterface#getCurrentHostNamePath ())));
        ignore (!stringBuffer#append ((itemInterface#getCategory ())));
        let fullPath : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
        let imageDirectoryFile : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr (!fullPath)))))) in ();
        if (not ((Obj.magic !imageDirectoryFile)#isDirectory ())) then begin
            raise (Failure ("Unable to save file to non existant directory"))
        end;
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
        ignore (!stringBuffer#append (!fullPath));
        ignore (!stringBuffer#append (fileName));
        ignore (!stringBuffer#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#eXTENSION_SEP));
        ignore (!stringBuffer#append (((Obj.magic mediaData)#getName ())));
        let originalImageFile : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr ((java_string_of (Obj.repr !stringBuffer)))))))) in ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#cATEGORY)) then begin
            ignore ((Obj.magic logUtil)#putF (("Saving Original Image: " ^ java_string_of (Obj.repr ((Obj.magic !originalImageFile)))), self, "saveFiles()"))
        end;
        ignore ((Obj.magic !originalImageFile)#createNewFile ());
        ignore (!fileUtil#write ((new ByteArrayInputStream.byteArrayInputStream (byteArray)), (Obj.magic !originalImageFile)));
        let uploadMedia : UploadMediaSingleton.uploadMediaSingleton ref = ref (((UploadMediaSingleton.getInstance ()) :> UploadMediaSingleton.uploadMediaSingleton)) in ();
        let isMediaSupported : bool ref = ref (((!uploadMedia#isWriterSupported (((Obj.magic mediaData)#getName ()))) || (!uploadMedia#isReaderSupported (((Obj.magic mediaData)#getName ()))))) in ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#cATEGORY)) then begin
            ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
            ignore (!stringBuffer#append ("Is Image Type: "));
            ignore (!stringBuffer#append (((Obj.magic mediaData)#getName ())));
            ignore (!stringBuffer#append (" supported: "));
            ignore (!stringBuffer#appendboolean (!isMediaSupported));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "saveFiles()"))
        end;
        let defaultMediaData : MediaData.mediaData ref = ref (((MediaData.getDefault ()) :> MediaData.mediaData)) in ();
        (self#setFileNames (fileName));
        if !isMediaSupported then begin
            let isMediaResizable : bool ref = ref ((!uploadMedia#isWriterMedia (((Obj.magic mediaData)#getName ()), (MediaTypeData.getInstance ())#rESIZABLE_MEDIA))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#cATEGORY)) then begin
                ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                ignore (!stringBuffer#append ("Is "));
                ignore (!stringBuffer#append ((java_string_of (Obj.repr (Obj.magic mediaData)))));
                ignore (!stringBuffer#append (" Image Resize Supported:"));
                ignore (!stringBuffer#appendboolean ((!uploadMedia#isSupported (((Obj.magic mediaData)#getName ())))));
                ignore (!stringBuffer#append (" WriterMedia: "));
                ignore (!stringBuffer#appendboolean (!isMediaResizable));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "saveFiles()"))
            end;
            if !isMediaResizable then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#cATEGORY)) then begin
                    ignore ((Obj.magic logUtil)#putF (("Saving Small Image: " ^ java_string_of (Obj.repr ((itemInterface#getSmallImage ())))), self, "saveFiles()"))
                end;
                ignore ((Obj.magic mediaUtil)#saveImageFile ((Obj.magic !originalImageFile), (itemInterface#getSmallImage ()), !fullPath, (Obj.magic mediaData), sMALLWIDTH, sMALLHEIGHT));
                ignore ((Obj.magic mediaUtil)#saveImageFile ((Obj.magic !originalImageFile), (itemInterface#getMediumImage ()), !fullPath, (Obj.magic mediaData), mEDIUMWIDTH, mEDIUMHEIGHT));
                ignore ((Obj.magic mediaUtil)#saveImageFile ((Obj.magic !originalImageFile), (itemInterface#getLargeImage ()), !fullPath, (Obj.magic mediaData), lARGEWIDTH, lARGEHEIGHT))
            end else begin
                let isConvertable : bool ref = ref (((Obj.magic mediaData)#isConvertableTo (!defaultMediaData))) in ();
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#cATEGORY)) then begin
                    ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                    ignore (!stringBuffer#append ("Converting: "));
                    ignore (!stringBuffer#append ((!defaultMediaData#getName ())));
                    ignore (!stringBuffer#append (" into "));
                    ignore (!stringBuffer#append (((Obj.magic mediaData)#getName ())));
                    ignore (!stringBuffer#append (" if Convertable is it: "));
                    ignore (!stringBuffer#appendboolean (!isConvertable));
                    ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "saveFiles()"))
                end;
                if !isConvertable then begin
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#cATEGORY)) then begin
                        ignore ((Obj.magic logUtil)#putF (("Saving Small Image: " ^ java_string_of (Obj.repr ((itemInterface#getSmallImage ())))), self, "saveFiles()"))
                    end;
                    ignore ((Obj.magic mediaUtil)#saveImageFile ((Obj.magic !originalImageFile), (itemInterface#getSmallImage ()), !fullPath, !defaultMediaData, sMALLWIDTH, sMALLHEIGHT));
                    ignore ((Obj.magic mediaUtil)#saveImageFile ((Obj.magic !originalImageFile), (itemInterface#getMediumImage ()), !fullPath, !defaultMediaData, mEDIUMWIDTH, mEDIUMHEIGHT));
                    ignore ((Obj.magic mediaUtil)#saveImageFile ((Obj.magic !originalImageFile), (itemInterface#getLargeImage ()), !fullPath, !defaultMediaData, lARGEWIDTH, lARGEHEIGHT))
                end else begin
                    let smallImageFile : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr ((itemInterface#getSmallImage ()))))))) in ();
                    ignore ((Obj.magic !smallImageFile)#createNewFile ());
                    ignore (!fileUtil#write ((new ByteArrayInputStream.byteArrayInputStream (byteArray)), (Obj.magic !smallImageFile)));
                    let mediumImageFile : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr ((itemInterface#getMediumImage ()))))))) in ();
                    ignore ((Obj.magic !smallImageFile)#createNewFile ());
                    ignore (!fileUtil#write ((new ByteArrayInputStream.byteArrayInputStream (byteArray)), (Obj.magic !mediumImageFile)));
                    let largeImageFile : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr ((itemInterface#getSmallImage ()))))))) in ();
                    ignore ((Obj.magic !largeImageFile)#createNewFile ());
                    ignore (!fileUtil#write ((new ByteArrayInputStream.byteArrayInputStream (byteArray)), (Obj.magic !largeImageFile)))
                end
            end
        end;
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#cATEGORY)) then begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#putF (!commonStrings#eND, self, "saveFiles()"))
        end;
        (itemInterface :> ItemInterface.itemInterface)
        end [@@warning "-20"]
    

    method setFileNames ((fileName : string)) : unit =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((itemInterface#getId ())));
        ignore (!stringBuffer#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#eXTENSION_SEP));
        ignore (!stringBuffer#append (((MediaData.getDefault ())#getName ())));
        let eND : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
        ignore (!stringBuffer#append (fileName));
        ignore (!stringBuffer#append (sMALL));
        ignore (!stringBuffer#append (!eND));
        let newImageFileName : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
        ignore (itemInterface#setSmallImage (!newImageFileName));
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
        ignore (!stringBuffer#append (fileName));
        ignore (!stringBuffer#append (mEDIUM));
        ignore (!stringBuffer#append (!eND));
        newImageFileName := (java_string_of (Obj.repr !stringBuffer));
        ignore (itemInterface#setMediumImage (!newImageFileName));
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
        ignore (!stringBuffer#append (fileName));
        ignore (!stringBuffer#append (lARGE));
        ignore (!stringBuffer#append (!eND));
        newImageFileName := (java_string_of (Obj.repr !stringBuffer));
        ignore (itemInterface#setLargeImage (!newImageFileName))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        mediaUtil <- (Obj.repr (Obj.magic (java_call_static "MediaUtil.getInstance" (Obj.repr ()))));
        lARGEWIDTH <- 1024;
        lARGEHEIGHT <- 1024;
        mEDIUMWIDTH <- 256;
        mEDIUMHEIGHT <- 256;
        sMALLWIDTH <- 128;
        sMALLHEIGHT <- 128;
        sMALL <- "Small";
        mEDIUM <- "Medium";
        lARGE <- "Large";
        ();
        ();
        ();
        storeFrontInterface <- storeFrontInterface_arg;
        itemInterface <- itemInterface_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "InventoryUploadMediaUtil" (fun arguments -> Obj.repr (new inventoryUploadMediaUtil (Obj.obj arguments)))


