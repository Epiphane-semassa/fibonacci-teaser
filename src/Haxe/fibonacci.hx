class Test {
  static function main() {
    trace("YO ");
    
    function fibonacci(n: Int): Int {
      if (n <= 0) return 0;
      if (n ==1) return 1;
			
      return fibonacci(n-1)+fibonacci(n-2);
		}
    
    trace(fibonacci(-1));
    
    }
}
