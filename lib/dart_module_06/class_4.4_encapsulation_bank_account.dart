class BankAccount {
  // Private variable (starts with _)
  double _balance = 0.0;

  // Public getter to check balance
  double get balance => _balance;

  // Public method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited \$$amount');
    } else {
      print('Amount must be greater than 0');
    }
  }

  // Public method to withdraw money
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('Withdrew \$$amount');
    } else {
      print('Invalid amount or insufficient balance');
    }
  }
}

/*
  * What’s Happening Here?
    # Private Variable _balance:
      >> Can only be accessed inside the BankAccount class.
      >> No one outside the class can directly modify _balance.
    #Public Getter (balance):
      >> Provides read-only access to the balance.
      >> People can see the balance but cannot change it directly.
    # Public Methods (deposit and withdraw):
      >> Control how money is deposited or withdrawn.
      >> Protect against invalid or unauthorized actions (e.g., negative deposits or over-withdrawing).
  * Key Points:
    >> Private Members: Use _ to make a variable private.
    >> Getter and Setter: Control access to private data with getter and setter methods.
    >> Encapsulation Protects Data: Users interact with your class safely, without breaking the logic.
*/