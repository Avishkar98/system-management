
<?php 
include "../model/clerk.class.php";


class ClerkCtrl extends Clerk{

	public function addNewDuty($feild){
		$busNO = $feild['busno'];
		$destination = $feild['desti'];
		$driver = $feild['driver'];
		$conductor = $feild['conductor'];
		$disTime = $feild['appt'];
		if ($this->checkEmpty($feild)) {
			header('location:../view/clerkView.php?error=yes');
		}
		else{
			$this->addDuty($busNO,$destination,$conductor,$driver,$disTime);
			header('location:../view/clerkView.php?error=no');
		}
		
	}

	public function giveConductor(){
		$opt = '';
		$out = $this->getCon_Driver();
		
		while($row = $out->fetch()){
				if ($row['designation'] == 'conductor') {
					$opt.= "<option value=\"{$row['firstname']}\">{$row['firstname']}</option>";
				}
								
		}	
		return $opt;	
	}
	public function giveDriver(){
		$opt = '';
		$out = $this->getCon_Driver();

		while($row = $out->fetch()){
				if ($row['designation'] == 'driver') {
					$opt.= "<option value=\"{$row['firstname']}\">{$row['firstname']}</option>";
				}
								
		}	
		return $opt;	
	}

	public function giveBus(){
		$opt = '';
		$out = $this->giveBusNO();

		while($row = $out->fetch()){
				$opt.= "<option value=\"{$row['busno']}\">{$row['busno']}</option>";				
		}	
		return $opt;	
	}
	public function giveDesti(){
		$opt = '';
		$out = $this->giveDestination();
		while($row = $out->fetch()){
				$opt.= "<option value=\"{$row['destination']}\">{$row['destination']}</option>";				
		}	
		return $opt;	
	}

	public function checkEmpty($feild){
		foreach ($feild as $value) {
			if (empty($value)) {
				return true;
			}
		}
		return false;
	}
} 


 ?>