import UIKit

//private let reuseIdentifier = "Cell"

class MainCollectionViewController: UICollectionViewController {

    var arrayLocInfo:[TripSpot]
        = [TripSpot(spot:"한강", whattodo:"", feature: [a,priceLevel(15000)], image: "한강1", food: "food", hotel: ["hotel"], money: "15000"),
    TripSpot(spot:"한강", whattodo:"", feature: [a,priceLevel(15000)], image: "한강2", food: "food", hotel: ["hotel"], money: "15000"),
    TripSpot(spot:"한강", whattodo:"", feature: [a,priceLevel(15000)], image: "한강3", food: "food", hotel: ["hotel"], money: "15000")]

    
    
    var spotTrip = TripSpot(spot: A , whattodo:"텐트, 카약, 오리배 등등", feature: [a,priceLevel(15000)], image: "한강1", food: "명동교자(교자), 맘마미아(빵), 오레노카츠(돈까스), 이태원더고깃집(고기), 송쉐프(중식), 성수아구찜(한식)", hotel: ["hotel"], money: "15000")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if spotTrip.spot == "한강"{
            arrayLocInfo = [TripSpot(spot:"한강", whattodo:"텐트, 카약, 오리배 등등", feature: [a,priceLevel(15000)], image: "한강1", food: "food", hotel: ["hotel"], money: "15000"),
                            TripSpot(spot:"한강", whattodo:"텐트, 카약, 오리배 등등", feature: [a,priceLevel(15000)], image: "한강2", food: "food", hotel: ["hotel"], money: "15000"),
                            TripSpot(spot:"한강", whattodo:"텐트, 카약, 오리배 등등", feature: [a,priceLevel(15000)], image: "한강3", food: "food", hotel: ["hotel"], money: "15000")]
        }
        else if spotTrip.spot == "남산타워"{
            arrayLocInfo = [TripSpot(spot:"남산타워",whattodo:"전망대, 케이블카", feature: [b,priceLevel(11000)], image: "남산타워1", food: "food", hotel: ["hotel"], money: "11000"),
                            TripSpot(spot:"남산타워",whattodo:"전망대, 케이블카", feature: [b,priceLevel(11000)], image: "남산타워2", food: "food", hotel: ["hotel"], money: "11000")]
        }
        else if spotTrip.spot == "예술의전당"{
            arrayLocInfo = [TripSpot(spot:"예술의전당", whattodo:"음악, 미술 등등",feature: [b,priceLevel(15000)], image: "예술의전당1", food: "food", hotel: ["hotel"], money: "15000"),
                            TripSpot(spot:"예술의전당", whattodo:"음악, 미술 등등",feature: [b,priceLevel(15000)], image: "예술의전당2", food: "food", hotel: ["hotel"], money: "15000")]
        }
        else if spotTrip.spot == "롯데월드"{
        arrayLocInfo = [TripSpot(spot:"롯데월드", whattodo:"아쿠아리움, 놀이기구",feature: [a,priceLevel(59000)], image: "롯데월드1", food: "food", hotel: ["hotel"], money: "59000"),
                        TripSpot(spot:"롯데월드", whattodo:"아쿠아리움, 놀이기구",feature: [a,priceLevel(59000)], image: "롯데월드2", food: "food", hotel: ["hotel"], money: "59000"),
                        TripSpot(spot:"롯데월드", whattodo:"아쿠아리움, 놀이기구",feature: [a,priceLevel(59000)], image: "롯데월드3", food: "food", hotel: ["hotel"], money: "59000")]
        }
        else if spotTrip.spot == "북촌한옥마을"{
        arrayLocInfo = [TripSpot(spot:"북촌한옥마을", whattodo:"관광",feature: [t,priceLevel(0)], image: "북촌한옥마을1", food: "food", hotel: ["hotel"], money: "0"),
                        TripSpot(spot:"북촌한옥마을", whattodo:"관광",feature: [t,priceLevel(0)], image: "북촌한옥마을2", food: "food", hotel: ["hotel"], money: "0")]
        }
        else if spotTrip.spot == "경복궁"{
        arrayLocInfo = [TripSpot(spot:"경복궁", whattodo:"관광",feature: [t,priceLevel(3000)], image: "경복궁1", food: "food", hotel: ["hotel"], money: "3000"),
                        TripSpot(spot:"경복궁", whattodo:"관광",feature: [t,priceLevel(3000)], image: "경복궁2", food: "food", hotel: ["hotel"], money: "3000")]
        }
        else if spotTrip.spot == "명동"{
        arrayLocInfo = [TripSpot(spot:"명동", whattodo:"쇼핑",feature: [b,priceLevel(0)], image: "명동1", food: "food", hotel: ["hotel"], money: "0"),
                        TripSpot(spot:"명동", whattodo:"쇼핑",feature: [b,priceLevel(0)], image: "명동2", food: "food", hotel: ["hotel"], money: "0"),
                        TripSpot(spot:"명동", whattodo:"쇼핑",feature: [b,priceLevel(0)], image: "명동3", food: "food", hotel: ["hotel"], money: "0")]
        }
        else if spotTrip.spot == "롯데월드타워"{
        arrayLocInfo = [TripSpot(spot:"롯데월드타워", whattodo:"전망대",feature: [b,priceLevel(27000)], image: "롯데월드타워1", food: "food", hotel: ["hotel"], money: "27000"),
                        TripSpot(spot:"롯데월드타워", whattodo:"전망대",feature: [b,priceLevel(27000)], image: "롯데월드타워2", food: "food", hotel: ["hotel"], money: "27000")]
        }
 
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayLocInfo.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let info = arrayLocInfo[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
    
        let imageView = cell.viewWithTag(1) as! UIImageView
        
        imageView.image = UIImage(named: info.image)
        
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
