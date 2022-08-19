// SPDX-License-Identifier: CC - NON COMMERCIAL
pragma solidity ^0.8.6;

contract ichoroniumProfiles {
    uint256 gamerCount = 0; // gamerId
    mapping(uint256 => Gamer) public gamers;
    mapping(uint256 => gamerFlag) public gamerFlags;
    address  owner;
    uint256 todaysDate;
    uint256 _id ;

    struct Gamer {
        uint _id;
        uint256 _registrationDate;
        string _realFirstName;
        string _realLastName;
        string _officialUsername;
        uint   _ichoroniumLevel;
        uint256 _benefactor;
     }

    struct gamerFlag {
        uint256 _id;
        bool _smsVerified;
        bool _socialverfied;
        bool _kycVerified;
        bool _softBan;
        bool _hardBan;
        bool _isJin;
        uint256 _hardBanAddress;
        uint256 _socialverificationAddress;
        uint256 _kycVericationAddress;
        uint256 _softBanAddress;   
     }

    modifier onlyOwner(){
       require (msg.sender == owner);
       _;
    }
    function incrementCount()
             internal{
               gamerCount += 1;
             }
    
    function addGamer(string memory _realFirstName, 
                        string memory _realLastName, 
                        string memory _officialUserName,
                        uint256 _benefactor
                        ) 
            public 
              onlyOwner {
                       if (gamerCount == 0){
                          addFirstGamer();   
                          incrementCount(); //firstwizard to first account
                       }
                       checkBenefactorExist(_benefactor);
                       incrementCount();
                       gamers[gamerCount] = Gamer(gamerCount,todaysDate,_realFirstName,_realLastName,_officialUserName,0,_benefactor);
                       gamerFlags[gamerCount] = gamerFlag(gamerCount,false,false,false,false,false,false,0,0,0,0);
                    }
    function checkBenefactorExist (uint256 _benefactor)
            public view {
                          uint256 beneNumber = gamers[_benefactor]._id;
                            if( beneNumber >= 0 && beneNumber <= gamerCount){
                 
                             }
                            else{
                            revert("Benefactor Does Not Exist");
                            }
                        }
    function addFirstGamer()
             internal{
               gamers[0] = Gamer(0,todaysDate,"Darth","DeathDealer","deathdealer007",239,1);
               gamers[1] = Gamer(1,todaysDate,"Zul","Zed","firstwizard007",239,1);
               gamerFlags[0] = gamerFlag(0,true,true,true,true,true,true,0,0,0,0);
               gamerFlags[1] = gamerFlag(1,true,true,true,true,true,true,0,0,0,0);
             }
}