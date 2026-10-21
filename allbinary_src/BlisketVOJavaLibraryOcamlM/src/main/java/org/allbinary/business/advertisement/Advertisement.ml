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
(* package org.allbinary.business.advertisement *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.advertisement.image.AdvertisementImageInterface *)
(* import org.allbinary.business.advertisement.product.AdvertisementProductInterface *)
(* import org.allbinary.business.advertisement.thumbnail.AdvertisementThumbnailInterface *)
(* import org.allbinary.business.user.commerce.money.Money *)
(* import org.allbinary.logic.control.contraints.display.browser.DisplayInBrowserContraintsInterface *)

class advertisement () =
  object
    val mutable artist : string = ""
    method artist = artist
    method set_artist value' = artist <- value'
    val mutable artistLink : string = ""
    method artistLink = artistLink
    method set_artistLink value' = artistLink <- value'
    val mutable title : string = ""
    method title = title
    method set_title value' = title <- value'
    val mutable dateAdded : string = ""
    method dateAdded = dateAdded
    method set_dateAdded value' = dateAdded <- value'
    val mutable directory : string = ""
    method directory = directory
    method set_directory value' = directory <- value'
    val mutable framedLink : string = ""
    method framedLink = framedLink
    method set_framedLink value' = framedLink <- value'
    val mutable rank : int = 0
    method rank = rank
    method set_rank value' = rank <- value'
    val mutable listPrice : Money.money = (Obj.magic 0)
    method listPrice = listPrice
    method set_listPrice value' = listPrice <- value'
    val mutable ourPrice : Money.money = (Obj.magic 0)
    method ourPrice = ourPrice
    method set_ourPrice value' = ourPrice <- value'
    val mutable image : AdvertisementImageInterface.advertisementImageInterface = (Obj.magic 0)
    method image = image
    method set_image value' = image <- value'
    val mutable product : AdvertisementProductInterface.advertisementProductInterface = (Obj.magic 0)
    method product = product
    method set_product value' = product <- value'
    val mutable thumbnail : AdvertisementThumbnailInterface.advertisementThumbnailInterface = (Obj.magic 0)
    method thumbnail = thumbnail
    method set_thumbnail value' = thumbnail <- value'
    val mutable displayInBrowserContraintsInterface : DisplayInBrowserContraintsInterface.displayInBrowserContraintsInterface = (Obj.magic 0)
    method displayInBrowserContraintsInterface = displayInBrowserContraintsInterface
    method set_displayInBrowserContraintsInterface value' = displayInBrowserContraintsInterface <- value'
    
    

    method getArtist () : string =
        begin
        artist
        end
    

    method setArtist ((artist_arg : string)) : unit =
        begin
        artist <- artist_arg
        end
    

    method getArtistLink () : string =
        begin
        artistLink
        end
    

    method setArtistLink ((artistLink_arg : string)) : unit =
        begin
        artistLink <- artistLink_arg
        end
    

    method getTitle () : string =
        begin
        title
        end
    

    method setTitle ((title_arg : string)) : unit =
        begin
        title <- title_arg
        end
    

    method getDateAdded () : string =
        begin
        dateAdded
        end
    

    method setDateAdded ((dateAdded_arg : string)) : unit =
        begin
        dateAdded <- dateAdded_arg
        end
    

    method getDirectory () : string =
        begin
        directory
        end
    

    method setDirectory ((directory_arg : string)) : unit =
        begin
        directory <- directory_arg
        end
    

    method getFramedLink () : string =
        begin
        framedLink
        end
    

    method setFramedLink ((framedLink_arg : string)) : unit =
        begin
        framedLink <- framedLink_arg
        end
    

    method getListPrice () : Money.money =
        begin
        (listPrice :> Money.money)
        end
    

    method setListPrice : 'any1. 'any1 -> unit = fun (listPrice_arg) ->
        let listPrice_arg = Obj.repr listPrice_arg in
        begin
        listPrice <- (Obj.magic listPrice_arg)
        end [@@warning "-20"]
    

    method getOurPrice () : Money.money =
        begin
        (ourPrice :> Money.money)
        end
    

    method setOurPrice : 'any1. 'any1 -> unit = fun (ourPrice_arg) ->
        let ourPrice_arg = Obj.repr ourPrice_arg in
        begin
        ourPrice <- (Obj.magic ourPrice_arg)
        end [@@warning "-20"]
    

    method getRank () : int =
        begin
        rank
        end
    

    method setRank ((rank_arg : int)) : unit =
        begin
        rank <- rank_arg
        end
    

    method getImage () : AdvertisementImageInterface.advertisementImageInterface =
        begin
        (image :> AdvertisementImageInterface.advertisementImageInterface)
        end
    

    method setImage : 'any1. 'any1 -> unit = fun (image_arg) ->
        let image_arg = Obj.repr image_arg in
        begin
        image <- (Obj.magic image_arg)
        end [@@warning "-20"]
    

    method getProduct () : AdvertisementProductInterface.advertisementProductInterface =
        begin
        (product :> AdvertisementProductInterface.advertisementProductInterface)
        end
    

    method setProduct : 'any1. 'any1 -> unit = fun (product_arg) ->
        let product_arg = Obj.repr product_arg in
        begin
        product <- (Obj.magic product_arg)
        end [@@warning "-20"]
    

    method getThumbnail () : AdvertisementThumbnailInterface.advertisementThumbnailInterface =
        begin
        (thumbnail :> AdvertisementThumbnailInterface.advertisementThumbnailInterface)
        end
    

    method setThumbnail : 'any1. 'any1 -> unit = fun (thumbnail_arg) ->
        let thumbnail_arg = Obj.repr thumbnail_arg in
        begin
        thumbnail <- (Obj.magic thumbnail_arg)
        end [@@warning "-20"]
    

    method getDisplayInBrowserContraintsInterface () : DisplayInBrowserContraintsInterface.displayInBrowserContraintsInterface =
        begin
        (displayInBrowserContraintsInterface :> DisplayInBrowserContraintsInterface.displayInBrowserContraintsInterface)
        end

    initializer
      begin
        artist <- "";
        artistLink <- "";
        title <- "";
        dateAdded <- "";
        directory <- "";
        framedLink <- "";
        rank <- 0;
        listPrice <- ((Obj.magic 0) :> Money.money);
        ourPrice <- ((Obj.magic 0) :> Money.money);
        image <- ((Obj.magic 0) :> AdvertisementImageInterface.advertisementImageInterface);
        product <- ((Obj.magic 0) :> AdvertisementProductInterface.advertisementProductInterface);
        thumbnail <- ((Obj.magic 0) :> AdvertisementThumbnailInterface.advertisementThumbnailInterface);
        ();
        ();
        displayInBrowserContraintsInterface <- (Obj.magic 0)
      end
  end
let () = java_register_constructor "Advertisement" (fun arguments -> Obj.repr (new advertisement (Obj.obj arguments)))


