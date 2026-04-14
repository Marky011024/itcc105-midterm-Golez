

void main() {
  
  String userIntent = 'check clearance';
  

  bool isInternetConnected = true;
  
  print('\n=== ASSCAT AI COPILOT ===');
  print('You said: $userIntent');
  
 
  if (isInternetConnected == false) {
    print('⚠️ OFFLINE MODE - Showing saved data\n');
  }
  
 
  if (userIntent == 'check clearance') {
    print('✅ Your clearance: Library PENDING, Accounting CLEARED');
    
  } else if (userIntent == 'my schedule') {
    print('📅 Today: ITCC 105 at 8AM, MATH 101 at 10:30AM');
    
  } else if (userIntent == 'my grades') {
    print('📊 Your GPA: 1.75 (Good standing)');
    
  } else {
    print('❌ Say: "check clearance", "my schedule", or "my grades"');
  }
  
  
  if (isInternetConnected == false) {
    print('\n📱 Offline mode active - Connect to Wi-Fi for updates');
  }
  
  print('\n=======================');
}