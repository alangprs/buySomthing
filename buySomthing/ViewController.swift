
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var houseImage: UIImageView! //顯示照片
    @IBOutlet weak var houseSumLabel: UILabel! //顯示這間房子價格
    @IBOutlet weak var houseSegmentedControl: UISegmentedControl!//房子選擇按鈕
    //顯示鈔票數量label
    @IBOutlet weak var numberLabel1000: UILabel!
    @IBOutlet weak var numberLabel500: UILabel!
    @IBOutlet weak var numberLabel100: UILabel!
    @IBOutlet weak var numberLabel50: UILabel!
    @IBOutlet weak var numberLabel10: UILabel!
    @IBOutlet weak var numberLabel1: UILabel!
   
    //控制鈔票數量的stepper
    @IBOutlet weak var numberStepper1000: UIStepper!
    @IBOutlet weak var numberStepper500: UIStepper!
    @IBOutlet weak var numberStepper100: UIStepper!
    @IBOutlet weak var numberStepper50: UIStepper!
    @IBOutlet weak var numberStepper10: UIStepper!
    @IBOutlet weak var numberStepper1: UIStepper!
    //目前金額label
    @IBOutlet weak var newNumber: UILabel!
    //狀態顯示label
    @IBOutlet weak var sayLabel: UILabel!
    
    
    
    
    var number = [1000,500,100,50,10,1]
    var sum = ["$3999","$9410","$9677"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //點選stepper增加減少label數字
    @IBAction func addNumber(_ sender: Any) {
        numberLabel1000.text = "\(numberStepper1000.value)"
        numberLabel500.text = "\(numberStepper500.value)"
        numberLabel100.text = "\(numberStepper100.value)"
        numberLabel50.text = "\(numberStepper50.value)"
        numberLabel10.text = "\(numberStepper10.value)"
        numberLabel1.text = "\(numberStepper1.value)"
        
        //同步更改 現在金額
            var sum0 = number[0] * Int(numberStepper1000.value)
            var sum1 = number[1] * Int(numberStepper500.value)
            var sum2 = number[2] * Int(numberStepper100.value)
            var sum3 = number[3] * Int(numberStepper50.value)
            var sum4 = number[4] * Int(numberStepper10.value)
            var sum5 = number[5] * Int(numberStepper1.value)
        var sumTotle = sum0 + sum1 + sum2 + sum3 + sum4 + sum5
        newNumber.text = "$\(sumTotle)"
    }
    //選擇房子、同步下方label金額
    @IBAction func changImageView(_ sender: UISegmentedControl) {
        if houseSegmentedControl.selectedSegmentIndex == 0{
            houseImage.image = UIImage(named: "01")
            houseSumLabel.text = "\(sum[0])"
        }else if houseSegmentedControl.selectedSegmentIndex == 1{
            houseImage.image = UIImage(named: "02")
            houseSumLabel.text = "\(sum[1])"
        }else if houseSegmentedControl.selectedSegmentIndex == 2{
            houseImage.image = UIImage(named: "03")
            houseSumLabel.text = "\(sum[2])"
        }
    }
    //按下買下這間button
    @IBAction func shooseHouse(_ sender: Any) {
        if houseSumLabel.text == newNumber.text{ //如果房子價格>目前價格
            sayLabel.text = "好棒唷 買新房子"
        }else{
            sayLabel.text = "你看看好像不太對喔"
        }
                
        
      
       
    }
    
    
    
    
    
    
    
    
    
    


}

