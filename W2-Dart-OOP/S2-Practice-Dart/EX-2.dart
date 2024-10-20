class BankAccount {
  final String _accName;
  final int _accId;
  double _currentBalance;

  BankAccount(this._accId,this._accName,this._currentBalance);

  String get accountName => _accName;
  int get accountID => _accId;
  double get currentBalance => _currentBalance;

  double balance(){
    return _currentBalance;
  }

  void withdraw (double amount){
    if(_currentBalance - amount < 0){
      throw Exception("Insufficient balance for withdrawal!");
    }
    _currentBalance -= amount;
  }

  double credit(double amount){
    return _currentBalance+=amount;
  }
}

class Bank {
  //define attribute of Bank class
  final String _bankName;
  List<BankAccount> bankAccounts = [];
  
  //constructor 
  Bank(this._bankName);

  // get bankName
  String get bankName => _bankName;

  //function for create new account 
  BankAccount createAccount(int accountID,String accountOwner){
    //check account exist or not
    if(bankAccounts.any((bankAccount) => bankAccount.accountID == accountID)){
      throw Exception("Account with ID $accountID already exists!");
    }
    BankAccount newAccount = BankAccount(accountID, accountOwner, 0);
      bankAccounts.add(newAccount);
      return newAccount;
  }

}
 
void main() {

  Bank myBank = Bank("CADT Bank");
  BankAccount ronanAccount = myBank.createAccount(100, 'Ronan');

  print(ronanAccount.balance()); // Balance: $0
  ronanAccount.credit(100);
  print(ronanAccount.balance()); // Balance: $100
  ronanAccount.withdraw(50);
  print(ronanAccount.balance()); // Balance: $50

  try {
    ronanAccount.withdraw(75); // This will throw an exception
  } catch (e) {
    print(e); // Output: Insufficient balance for withdrawal!
  }

  try {
    myBank.createAccount(100, 'Honlgy'); // This will throw an exception
  } catch (e) {
    print(e); // Output: Account with ID 100 already exists!
  }
}
