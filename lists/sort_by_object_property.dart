//Dummy class
class Event {
  final DateTime createdAt;
  final String description;
  
  const Event({this.description, this.createdAt});
  
}

//To print sort results.
void printEventList(List<Event> events) {
    events.forEach((event) => print('Event: ${event.description} - ${event.createdAt.toIso8601String()}'));
}


void main() {
  //Dates.
  final today = DateTime.now();
  final yesterday = today.subtract(Duration(days: 1));
  final tomorrow = today.add(Duration(days: 1));

  //Events to sort.
  final List<Event>  events = [
    Event(description: 'tomorrow', createdAt: tomorrow),
    Event(description: 'yesterday', createdAt: yesterday),
    Event(description: 'today', createdAt: today),    
  ];  
  
  
  print('Original order');
  printEventList(events);
    
  print('---\nSort: ASCENDING');
  events.sort((a,b) => a.createdAt.isAfter(b.createdAt)? 1: -1);
  printEventList(events);
  
  print('---\nSort: DESCENDING');
  events.sort((a,b) => a.createdAt.isAfter(b.createdAt)? -1: 1);
  printEventList(events);
}
