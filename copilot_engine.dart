class CopilotEngine {
  static String getResponse(String userIntent) {
    bool isInternetConnected = true;

    if (!isInternetConnected) {
      return "⚠️ You are offline. Please connect to the internet.";
    }

    userIntent = userIntent.toLowerCase();

    if (userIntent.contains("clearance")) {
      return "Opening your clearance...";
    } 
    else if (userIntent.contains("schedule")) {
      return "Here is your schedule.";
    } 
    else if (userIntent.contains("grades")) {
      return "Displaying your grades.";
    } 
    else if (userIntent.contains("hello") || userIntent.contains("hi")) {
      return "Hello! How can I help you today?";
    } 
    else {
      return "Sorry, I didn't understand your request.";
    }
  }
}

// Console test (IMPORTANT for requirement)
void main() {
  String userIntent = "check my clearance";
  print(CopilotEngine.getResponse(userIntent));
}
