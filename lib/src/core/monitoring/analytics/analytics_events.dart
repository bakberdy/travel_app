enum AnalyticsProperties {
  screenName,
  buttonName,
  errorMessage,
  userId,
  postId,
  commentId,
  reactionType,
  searchQuery,
  filterType,
  sortOrder,
  timestamp,
  previousScreenName,
  navigationMethod,
  tabIndex,
  tabName,
  isUserGesture,
}

enum AnalyticsEventName {
  // App lifecycle
  appStarted,
  
  // Screen navigation events
  /// Triggered when user opens a new screen (push navigation)
  screenOpened,
  
  /// Triggered when user closes current screen and goes back (pop navigation)
  screenClosed,
  
  /// Triggered when current screen is replaced with another screen
  screenReplaced,
  
  /// Triggered when a screen is removed from navigation stack programmatically
  screenRemoved,
  
  /// Triggered when the top-most visible screen changes
  screenBecameVisible,
  
  /// Triggered when user switches to a different tab in a TabView
  tabChanged,
  
  /// Triggered when a tab is initialized for the first time
  tabInitialized,
  
  /// Triggered when user starts back swipe gesture (iOS)
  navigationGestureStarted,
  
  /// Triggered when user completes or cancels back swipe gesture
  navigationGestureStopped,
  
  // Legacy event (kept for backward compatibility)
  screenViewed,
  buttonClicked,
}

class AnalyticsEvent {
  final AnalyticsEventName _name;
  final Map<AnalyticsProperties, dynamic>? properties;

  AnalyticsEvent({required AnalyticsEventName  name, this.properties}) : _name = name;

  /// Convert event name to string
  String get eventName => _name.name;

  /// Convert properties map to string keys
  Map<String, dynamic>? get propertiesMap {
    if (properties == null) return null;
    return properties!.map((key, value) => MapEntry(key.name, value));
  }
}
