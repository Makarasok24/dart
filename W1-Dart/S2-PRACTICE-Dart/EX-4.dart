
void main() {
  // Map of pizza prices
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
  };

  // Example order
  const order = ['margherita', 'pepperoni', 'pineapple'];

  // Your code
  var count = 0.0;

  for(var orders in order){
    if(pizzaPrices.containsKey(orders)){
      count+=pizzaPrices[orders]!;
      
    }else print('$orders pizza is not on the menu');
  }

  print('Total: \$$count');
}
