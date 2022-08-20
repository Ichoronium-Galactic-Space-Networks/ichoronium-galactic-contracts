// SPDX-License-Identifier: CC - NON COMMERCIAL
pragma solidity >=0.8.0 <8.17.0;


contract ichoroniumNetworkSettings {
uint256 todaysDate;
address owner;
modifier onlyOwner(){
       require (msg.sender == owner);
       _;
    }
networkSettings  ichoroniumSettings = networkSettings(false,false,true,false,0x0000000000000000000000000000000000000000,0x0000000000000000000000000000000000000000,0x0000000000000000000000000000000000000000,0x0000000000000000000000000000000000000000,0x0000000000000000000000000000000000000000,0x0000000000000000000000000000000000000000,0x0000000000000000000000000000000000000000,0x0000000000000000000000000000000000000000,0x0000000000000000000000000000000000000000,0x0000000000000000000000000000000000000000,0x0000000000000000000000000000000000000000,0x0000000000000000000000000000000000000000,0x0000000000000000000000000000000000000000,0x0000000000000000000000000000000000000000,0x0000000000000000000000000000000000000000,0x0000000000000000000000000000000000000000,0x0000000000000000000000000000000000000000,0x0000000000000000000000000000000000000000);

function isNetworkActive() public view returns (bool) {
        networkSettings storage networksetting = ichoroniumSettings;
        return networksetting.isNetworkActive;
    }
function isNetworkIsCoolingDown() public view returns (bool) {
        networkSettings storage networksetting = ichoroniumSettings;
        return networksetting.isNetworkIsCoolingDown;
    }
function isNetworkIsDeactive() public view returns (bool) {
        networkSettings storage networksetting = ichoroniumSettings;
        return networksetting.isNetworkIsDeactive;
    }
function killswitch() public view returns (bool) {
        networkSettings storage networksetting = ichoroniumSettings;
        return networksetting.killswitch;
    }

function ichoroniumNetworkProfilesCurrent() public view returns (address) {
        networkSettings storage networksetting = ichoroniumSettings;
        return networksetting.ichoroniumNetworkProfilesCurrent;
    }    
function ichoroniumNetworkPermissionsCurrent() public view returns (address) {
        networkSettings storage networksetting = ichoroniumSettings;
        return networksetting.ichoroniumNetworkPermissionsCurrent;
    }
function gameProfitsGalacticSettingsCurrent() public view returns (address) {
        networkSettings storage networksetting = ichoroniumSettings;
        return networksetting.gameProfitsGalacticSettingsCurrent;
    }
function ichoroniumGalacticMeteaverseCurrent() public view returns (address) {
        networkSettings storage networksetting = ichoroniumSettings;
        return networksetting.ichoroniumGalacticMeteaverseCurrent;
    }

function ichoroniumFinanceSettingsCurrent() public view returns (address) {
        networkSettings storage networksetting = ichoroniumSettings;
        return networksetting.ichoroniumFinanceSettingsCurrent;
    }
function ichoroniumReturnSettings() public view returns (networkSettings memory networkSetting) {
        networkSettings storage networksetting = ichoroniumSettings;
        return networksetting;
    }
function switchichoroniumNetworkProfilesCurrent(address newSetting
                      ) 
              public 
              onlyOwner {
                    ichoroniumSettings.ichoroniumNetworkProfilesCurrent = newSetting;
                       
                    }
function switchichoroniumNetworkPermissionsCurrent(address newSetting
                      ) 
              public 
              onlyOwner {
                    ichoroniumSettings.ichoroniumNetworkPermissionsCurrent = newSetting;
              }
function switchgameProfitsGalacticSettingsCurrent(address newSetting
                      ) 
              public 
              onlyOwner {
                    ichoroniumSettings.gameProfitsGalacticSettingsCurrent = newSetting;
                       
              }
function switchichoroniumGalacticMeteaverseCurrent(address newSetting
                      ) 
              public 
              onlyOwner {
                    ichoroniumSettings.ichoroniumGalacticMeteaverseCurrent = newSetting;
                       
              }
function switchichoroniumFinanceSettingsCurrent(address newSetting
                      ) 
              public 
              onlyOwner {
                    ichoroniumSettings.ichoroniumFinanceSettingsCurrent = newSetting;
                       
              }
function switchichoroniumCloudSettingsCurrent(address newSetting
                      ) 
              public 
              onlyOwner {
                    ichoroniumSettings.ichoroniumCloudSettingsCurrent = newSetting;
                       
              }
function switchisNetworkActive(
                      ) 
              public 
              onlyOwner {
                 if (ichoroniumSettings.isNetworkActive == false){
                     ichoroniumSettings.isNetworkActive = true;
                     ichoroniumSettings.isNetworkIsDeactive = false;
                 }                       
                 else if (ichoroniumSettings.isNetworkActive == true){
                     ichoroniumSettings.isNetworkActive = false;
                 }
              }
              
function killswitchActivate(
                      ) 
              public 
              onlyOwner {
                 if (ichoroniumSettings.killswitch == false){
                     ichoroniumSettings.killswitch = true;
                     ichoroniumSettings.isNetworkActive = false;
                     ichoroniumSettings.isNetworkIsCoolingDown = true;
                     ichoroniumSettings.isNetworkIsDeactive = true;

                 }                       
                 else if (ichoroniumSettings.killswitch == true){
                     ichoroniumSettings.isNetworkActive = false;
                     ichoroniumSettings.isNetworkIsCoolingDown = false;
                     ichoroniumSettings.isNetworkIsDeactive = false;
                     ichoroniumSettings.killswitch = false;
                 }
              }
function switchisNetworkIsCoolingDown(
                      ) 
              public 
              onlyOwner {
                 if (ichoroniumSettings.isNetworkIsCoolingDown == false){
                     ichoroniumSettings.isNetworkIsCoolingDown = true;
                 }                       
                 else if (ichoroniumSettings.isNetworkIsCoolingDown == true){
                     ichoroniumSettings.isNetworkIsCoolingDown = false;
                 }
              }
function switchisNetworkIsDeactive(
                      ) 
              public 
              onlyOwner {
                 if (ichoroniumSettings.isNetworkIsDeactive == false){
                     ichoroniumSettings.isNetworkIsDeactive = true;
                 }                       
                 else if (ichoroniumSettings.isNetworkIsDeactive == true){
                     ichoroniumSettings.isNetworkIsDeactive = false;
                 }
              }

constructor() public
              {
                  todaysDate = block.timestamp;
                  owner = msg.sender;           
              }


struct networkSettings{
bool isNetworkActive;
bool isNetworkIsCoolingDown;
bool isNetworkIsDeactive;
bool killswitch;
address ichoroniumNetworkProfilesPrevious;
address ichoroniumNetworkProfilesCurrent;
address ichoroniumNetworkProfilesUpgradeProposal;
address ichoroniumNetworkPermissionsPrevious;
address ichoroniumNetworkPermissionsCurrent;
address ichoroniumNetworkPermissionsUpgradeProposal;
address gameProfitsGalacticSettingsPrevious;
address gameProfitsGalacticSettingsCurrent;
address gameProfitsGalacticSettingsUpgradeProposal;
address ichoroniumGalacticMeteaversePrevious;
address ichoroniumGalacticMeteaverseCurrent;
address ichoroniumGalacticMeteaverseUpgradeProposal;
address ichoroniumFinanceSettingsPrevious;
address ichoroniumFinanceSettingsCurrent;
address ichoroniumFinanceSettingsUpgradeProposal;
address ichoroniumCloudSettingsPrevious;
address ichoroniumCloudSettingsCurrent;
address ichoroniumCloudSettingsUpgradeProposal;
}


}