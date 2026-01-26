// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Social Media';

  @override
  String get errorTitle => 'Error';

  @override
  String get validationErrorTitle => 'Validation Error';

  @override
  String get networkErrorTitle => 'Network Error';

  @override
  String get serverErrorTitle => 'Server Error';

  @override
  String get authErrorTitle => 'Authentication Error';

  @override
  String get login => 'Login';

  @override
  String get register => 'Register';

  @override
  String get logout => 'Logout';

  @override
  String get email => 'Email';

  @override
  String get password => 'Password';

  @override
  String get confirmPassword => 'Confirm Password';

  @override
  String get forgotPassword => 'Forgot Password?';

  @override
  String get rememberMe => 'Remember Me';

  @override
  String get dontHaveAccount => 'Don\'t have an account?';

  @override
  String get alreadyHaveAccount => 'Already have an account?';

  @override
  String get signUp => 'Sign Up';

  @override
  String get signIn => 'Sign In';

  @override
  String get welcomeBack => 'Welcome Back!';

  @override
  String get createAccount => 'Create Account';

  @override
  String get pleaseEnterEmail => 'Please enter your email';

  @override
  String get pleaseEnterValidEmail => 'Please enter a valid email address';

  @override
  String get pleaseEnterPassword => 'Please enter your password';

  @override
  String get pleaseEnterOldPassword => 'Please enter your old password';

  @override
  String get pleaseEnterNewPassword => 'Please enter your new password';

  @override
  String get pleaseConfirmPassword => 'Please confirm your password';

  @override
  String get passwordsDoNotMatch => 'Passwords do not match';

  @override
  String get passwordTooShort => 'Password must be at least 6 characters';

  @override
  String get continueAsGuest => 'Continue as Guest';

  @override
  String get loginToContinue => 'Sign in to access your account and explore';

  @override
  String get registerToContinue => 'Join us today and start your journey';

  @override
  String get or => 'OR';

  @override
  String get firstName => 'First Name';

  @override
  String get lastName => 'Last Name';

  @override
  String get pleaseEnterFirstName => 'Please enter your first name';

  @override
  String get pleaseEnterLastName => 'Please enter your last name';

  @override
  String get profilePictureUrl => 'Profile Picture URL';

  @override
  String get optional => 'Optional';

  @override
  String get resetPassword => 'Reset Password';

  @override
  String get resetPasswordDescription =>
      'Enter your email to receive a reset code';

  @override
  String get resetPasswordSubtitle =>
      'We\'ll send you a code to reset your password';

  @override
  String get sendResetCode => 'Send Reset Code';

  @override
  String get resetCode => 'Reset Code';

  @override
  String get pleaseEnterResetCode => 'Please enter the reset code';

  @override
  String get resendCode => 'Resend Code';

  @override
  String get passwordResetEmailSent =>
      'Password reset email sent. Please check your inbox.';

  @override
  String get oldPassword => 'Old Password';

  @override
  String get newPassword => 'New Password';

  @override
  String get changePasswordDescription =>
      'Enter your old password and choose a new one';

  @override
  String get passwordChanged => 'Password changed successfully';

  @override
  String get weak => 'Weak';

  @override
  String get medium => 'Medium';

  @override
  String get strong => 'Strong';

  @override
  String get passwordStrengthTip =>
      'Use 8+ characters with uppercase, numbers, and symbols';

  @override
  String get home => 'Home';

  @override
  String get profile => 'Profile';

  @override
  String get settings => 'Settings';

  @override
  String get notifications => 'Notifications';

  @override
  String get messages => 'Messages';

  @override
  String get search => 'Search';

  @override
  String get post => 'Post';

  @override
  String get posts => 'Posts';

  @override
  String get createPost => 'Create Post';

  @override
  String get editPost => 'Edit Post';

  @override
  String get deletePost => 'Delete Post';

  @override
  String get comment => 'Comment';

  @override
  String get comments => 'Comments';

  @override
  String get like => 'Like';

  @override
  String get likes => 'Likes';

  @override
  String get share => 'Share';

  @override
  String get shares => 'Shares';

  @override
  String get save => 'Save';

  @override
  String get saved => 'Saved';

  @override
  String get follow => 'Follow';

  @override
  String get following => 'Following';

  @override
  String get followers => 'Followers';

  @override
  String get unfollow => 'Unfollow';

  @override
  String get editProfile => 'Edit Profile';

  @override
  String get changePassword => 'Change Password';

  @override
  String get changeLanguage => 'Change Language';

  @override
  String get theme => 'Theme';

  @override
  String get lightMode => 'Light Mode';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get systemDefault => 'System Default';

  @override
  String get phoneNumber => 'Phone Number';

  @override
  String get address => 'Address';

  @override
  String get roles => 'Roles';

  @override
  String get noRoles => 'No roles assigned';

  @override
  String get profileNotLoaded => 'Profile not loaded';

  @override
  String get profileUpdated => 'Profile updated successfully';

  @override
  String get userName => 'Username';

  @override
  String get allUsers => 'All Users';

  @override
  String get noUsersFound => 'No users found';

  @override
  String get close => 'Close';

  @override
  String get cancel => 'Cancel';

  @override
  String get confirm => 'Confirm';

  @override
  String get delete => 'Delete';

  @override
  String get edit => 'Edit';

  @override
  String get save_action => 'Save';

  @override
  String get retry => 'Retry';

  @override
  String get ok => 'OK';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'No';

  @override
  String get loading => 'Loading...';

  @override
  String get pleaseWait => 'Please wait...';

  @override
  String get noDataAvailable => 'No data available';

  @override
  String get noResultsFound => 'No results found';

  @override
  String get somethingWentWrong => 'Something went wrong';

  @override
  String welcomeMessage(String name) {
    return 'Welcome, $name!';
  }

  @override
  String postsCount(int count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString posts',
      one: '1 post',
      zero: 'No posts',
    );
    return '$_temp0';
  }

  @override
  String followersCount(int count) {
    final intl.NumberFormat countNumberFormat = intl.NumberFormat.compact(
      locale: localeName,
    );
    final String countString = countNumberFormat.format(count);

    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$countString followers',
      one: '1 follower',
      zero: 'No followers',
    );
    return '$_temp0';
  }

  @override
  String get failure_1000 => 'Server error occurred';

  @override
  String get failure_1001 =>
      'No internet connection. Please check your network settings.';

  @override
  String get failure_1002 => 'Request timed out. Please try again.';

  @override
  String get failure_1003 => 'You are not authorized. Please log in again.';

  @override
  String get failure_1004 => 'The requested resource was not found.';

  @override
  String get failure_1005 =>
      'You don\'t have permission to access this resource.';

  @override
  String get failure_2000 => 'Failed to load cached data.';

  @override
  String get failure_2001 =>
      'Storage operation failed. Please check available space.';

  @override
  String get failure_3000 => 'Please check your input and try again.';

  @override
  String get failure_3001 => 'Please enter a valid email address.';

  @override
  String failure_3002(String minLength) {
    return 'Password must be at least $minLength characters long.';
  }

  @override
  String get failure_3003 => 'Password is too weak. Use a stronger password.';

  @override
  String failure_3004(String field) {
    return '$field is required.';
  }

  @override
  String failure_3005(String minKm, String maxKm) {
    return 'Minimum distance ($minKm km) cannot be greater than maximum distance ($maxKm km).';
  }

  @override
  String failure_3006(String minKm) {
    return 'Minimum distance cannot be negative ($minKm km).';
  }

  @override
  String failure_3007(String maxKm) {
    return 'Maximum distance cannot be negative ($maxKm km).';
  }

  @override
  String get failure_4000 => 'Operation failed due to business rules.';

  @override
  String get failure_4001 =>
      'You don\'t have permission to perform this action.';

  @override
  String get failure_4002 => 'This resource is already in use.';

  @override
  String get failure_4003 =>
      'Your account has been disabled. Please contact support.';

  @override
  String get failure_4004 => 'This email address is already registered.';

  @override
  String get failure_5000 => 'An unexpected error occurred. Please try again.';

  @override
  String get failure_5001 => 'Operation was cancelled.';

  @override
  String get exampleTitle => 'Example App';

  @override
  String get welcomeToApp => 'Welcome to our beautiful app!';

  @override
  String get exploreFeatures => 'Explore Features';

  @override
  String get viewDetails => 'View Details';

  @override
  String get goToSettings => 'Go to Settings';

  @override
  String get backToHome => 'Back to Home';

  @override
  String get detailsTitle => 'Details';

  @override
  String get detailsDescription =>
      'This is a details page demonstrating AutoRoute navigation. You can navigate between different screens seamlessly.';

  @override
  String get navigationDemo => 'Navigation Demo';

  @override
  String get autoRouteFeatures => 'AutoRoute Features';

  @override
  String get autoRouteDescription =>
      'AutoRoute provides type-safe navigation, deep linking support, nested navigation, and much more!';

  @override
  String get typeSafeNavigationTitle => 'Type-safe Navigation';

  @override
  String get typeSafeNavigationDescription =>
      'Navigate with compile-time safety and auto-completion';

  @override
  String get deepLinkingTitle => 'Deep Linking';

  @override
  String get deepLinkingDescription =>
      'Support for deep links and navigation parameters';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get appearance => 'Appearance';

  @override
  String get language => 'Language';

  @override
  String get selectTheme => 'Select Theme';

  @override
  String get selectLanguage => 'Select Language';

  @override
  String get about => 'About';

  @override
  String get version => 'Version';

  @override
  String get appVersion => 'Version 1.0.0';

  @override
  String get developedBy => 'Developed with ❤️ using Flutter';

  @override
  String get featureCard1Title => 'Beautiful Design';

  @override
  String get featureCard1Description =>
      'Modern Material Design 3 with smooth animations';

  @override
  String get featureCard2Title => 'Multi-language';

  @override
  String get featureCard2Description =>
      'Support for English, Russian, and Kazakh';

  @override
  String get featureCard3Title => 'Dark Mode';

  @override
  String get catalog => 'Catalog';

  @override
  String get catalogItems => 'Items';

  @override
  String get catalogBrands => 'Brands';

  @override
  String get catalogTypes => 'Types';

  @override
  String get searchItems => 'Search items';

  @override
  String get priceRange => 'Price Range';

  @override
  String get inStock => 'In Stock';

  @override
  String get lowStock => 'Low Stock';

  @override
  String get outOfStock => 'Out of Stock';

  @override
  String get itemDetails => 'Item Details';

  @override
  String get featured => 'Featured';

  @override
  String get availableStock => 'Available Stock';

  @override
  String get descriptionLabel => 'Description';

  @override
  String get filters => 'Filters';

  @override
  String get allLabel => 'All';

  @override
  String get brands => 'Brands';

  @override
  String get types => 'Types';

  @override
  String get clearFilters => 'Clear filters';

  @override
  String get reviews => 'Reviews';

  @override
  String get writeReview => 'Write Review';

  @override
  String get editReview => 'Edit Review';

  @override
  String get deleteReview => 'Delete Review';

  @override
  String get rating => 'Rating';

  @override
  String get reviewTitle => 'Review Title';

  @override
  String get reviewComment => 'Your Review';

  @override
  String get submitReview => 'Submit Review';

  @override
  String get averageRating => 'Average Rating';

  @override
  String get noReviews => 'No reviews yet';

  @override
  String get beFirstReview => 'Be the first to review!';

  @override
  String get reviewCreated => 'Review created successfully';

  @override
  String get reviewUpdated => 'Review updated successfully';

  @override
  String get reviewDeleted => 'Review deleted successfully';

  @override
  String get ratingRequired => 'Please select a rating';

  @override
  String get titleRequired => 'Title is required';

  @override
  String get commentRequired => 'Comment is required';

  @override
  String get commentTooShort => 'Comment must be at least 10 characters';

  @override
  String get shoppingCart => 'Shopping Cart';

  @override
  String get addToCart => 'Add to Cart';

  @override
  String get removeFromCart => 'Remove from Cart';

  @override
  String get clearCart => 'Clear Cart';

  @override
  String get cartTotal => 'Total';

  @override
  String get cartSubtotal => 'Subtotal';

  @override
  String get emptyCart => 'Your cart is empty';

  @override
  String get continueShopping => 'Continue Shopping';

  @override
  String get proceedToCheckout => 'Proceed to Checkout';

  @override
  String get quantity => 'Quantity';

  @override
  String get updateQuantity => 'Update Quantity';

  @override
  String get itemAddedToCart => 'Item added to cart';

  @override
  String get itemRemovedFromCart => 'Item removed from cart';

  @override
  String get cartCleared => 'Cart cleared';

  @override
  String get confirmClearCart => 'Are you sure you want to clear your cart?';

  @override
  String get wishlist => 'Wishlist';

  @override
  String get addToWishlist => 'Add to Wishlist';

  @override
  String get removeFromWishlist => 'Remove from Wishlist';

  @override
  String get clearWishlist => 'Clear Wishlist';

  @override
  String get emptyWishlist => 'Your wishlist is empty';

  @override
  String get moveToCart => 'Move to Cart';

  @override
  String get itemAddedToWishlist => 'Item added to wishlist';

  @override
  String get itemRemovedFromWishlist => 'Item removed from wishlist';

  @override
  String get wishlistCleared => 'Wishlist cleared';

  @override
  String get confirmClearWishlist =>
      'Are you sure you want to clear your wishlist?';

  @override
  String get movedToCart => 'Item moved to cart';

  @override
  String get cart => 'Cart';

  @override
  String get homeHeroTitle => 'Fast-forward your run';

  @override
  String get homeHeroSubtitle =>
      'Layered cushioning, bold palettes, and traction built for city pace.';

  @override
  String get homeHeroCta => 'Shop the drop';

  @override
  String get homeCategoryTitle => 'Shop by category';

  @override
  String get homeFeaturedTitle => 'Featured drops';

  @override
  String get homeDiscoverTitle => 'Discover';

  @override
  String get homeSeeAll => 'See all';

  @override
  String get homeMemberCtaTitle => 'Unlock members access';

  @override
  String get homeMemberCtaSubtitle =>
      'Exclusive colorways, early launches, and rewards built for movers.';

  @override
  String get homeMemberCtaButton => 'Join membership';

  @override
  String get homeHighlightSustainabilityTitle => 'Sustainable build';

  @override
  String get homeHighlightSustainabilityBody =>
      'Recycled uppers and low-impact midsoles.';

  @override
  String get homeHighlightLimitedTitle => 'Limited releases';

  @override
  String get homeHighlightLimitedBody =>
      'Small-batch colorways before they vanish.';

  @override
  String get homeHighlightNewArrivalsTitle => 'Fresh arrivals';

  @override
  String get homeHighlightNewArrivalsBody =>
      'Weekly drops curated for street and track.';

  @override
  String get homeHighlightComfortTitle => 'Everyday comfort';

  @override
  String get homeHighlightComfortBody =>
      'Featherweight cushioning for long days.';

  @override
  String get categoryRunning => 'Running';

  @override
  String get categoryCasual => 'Casual';

  @override
  String get categoryBasketball => 'Basketball';

  @override
  String get categoryLifestyle => 'Lifestyle';

  @override
  String get productPulseRunner => 'Pulse Runner';

  @override
  String get productNimbusGlide => 'Nimbus Glide';

  @override
  String get productStreetFlux => 'Street Flux';

  @override
  String get productAeroCourt => 'Aero Court';

  @override
  String get productSkylineBounce => 'Skyline Bounce';

  @override
  String get productOrbitFlow => 'Orbit Flow';

  @override
  String get featuredAriaMomentum => 'Aria Momentum';

  @override
  String get featuredVaporStride => 'Vapor Stride';

  @override
  String get sortingDistanceAscending => 'Distance: Shorter to Longer';

  @override
  String get sortingDistanceDescending => 'Distance: Longer to Shorter';

  @override
  String get sortingDifficultyAscending => 'Difficulty: Easiest First';

  @override
  String get sortingDifficultyDescending => 'Difficulty: Hardest First';
}
