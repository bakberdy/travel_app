import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_kk.dart';
import 'app_localizations_ru.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('kk'),
    Locale('ru'),
  ];

  /// Application title
  ///
  /// In en, this message translates to:
  /// **'Social Media'**
  String get appTitle;

  /// No description provided for @errorTitle.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get errorTitle;

  /// No description provided for @validationErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Validation Error'**
  String get validationErrorTitle;

  /// No description provided for @networkErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Network Error'**
  String get networkErrorTitle;

  /// No description provided for @serverErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Server Error'**
  String get serverErrorTitle;

  /// No description provided for @authErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Authentication Error'**
  String get authErrorTitle;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgotPassword;

  /// No description provided for @rememberMe.
  ///
  /// In en, this message translates to:
  /// **'Remember Me'**
  String get rememberMe;

  /// No description provided for @dontHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get dontHaveAccount;

  /// No description provided for @alreadyHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get alreadyHaveAccount;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// No description provided for @welcomeBack.
  ///
  /// In en, this message translates to:
  /// **'Welcome Back!'**
  String get welcomeBack;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get createAccount;

  /// No description provided for @pleaseEnterEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter your email'**
  String get pleaseEnterEmail;

  /// No description provided for @pleaseEnterValidEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email address'**
  String get pleaseEnterValidEmail;

  /// No description provided for @pleaseEnterPassword.
  ///
  /// In en, this message translates to:
  /// **'Please enter your password'**
  String get pleaseEnterPassword;

  /// No description provided for @pleaseEnterOldPassword.
  ///
  /// In en, this message translates to:
  /// **'Please enter your old password'**
  String get pleaseEnterOldPassword;

  /// No description provided for @pleaseEnterNewPassword.
  ///
  /// In en, this message translates to:
  /// **'Please enter your new password'**
  String get pleaseEnterNewPassword;

  /// No description provided for @pleaseConfirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Please confirm your password'**
  String get pleaseConfirmPassword;

  /// No description provided for @passwordsDoNotMatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get passwordsDoNotMatch;

  /// No description provided for @passwordTooShort.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 6 characters'**
  String get passwordTooShort;

  /// No description provided for @continueAsGuest.
  ///
  /// In en, this message translates to:
  /// **'Continue as Guest'**
  String get continueAsGuest;

  /// No description provided for @loginToContinue.
  ///
  /// In en, this message translates to:
  /// **'Sign in to access your account and explore'**
  String get loginToContinue;

  /// No description provided for @registerToContinue.
  ///
  /// In en, this message translates to:
  /// **'Join us today and start your journey'**
  String get registerToContinue;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'OR'**
  String get or;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get firstName;

  /// No description provided for @lastName.
  ///
  /// In en, this message translates to:
  /// **'Last Name'**
  String get lastName;

  /// No description provided for @pleaseEnterFirstName.
  ///
  /// In en, this message translates to:
  /// **'Please enter your first name'**
  String get pleaseEnterFirstName;

  /// No description provided for @pleaseEnterLastName.
  ///
  /// In en, this message translates to:
  /// **'Please enter your last name'**
  String get pleaseEnterLastName;

  /// No description provided for @profilePictureUrl.
  ///
  /// In en, this message translates to:
  /// **'Profile Picture URL'**
  String get profilePictureUrl;

  /// No description provided for @optional.
  ///
  /// In en, this message translates to:
  /// **'Optional'**
  String get optional;

  /// No description provided for @resetPassword.
  ///
  /// In en, this message translates to:
  /// **'Reset Password'**
  String get resetPassword;

  /// No description provided for @resetPasswordDescription.
  ///
  /// In en, this message translates to:
  /// **'Enter your email to receive a reset code'**
  String get resetPasswordDescription;

  /// No description provided for @resetPasswordSubtitle.
  ///
  /// In en, this message translates to:
  /// **'We\'ll send you a code to reset your password'**
  String get resetPasswordSubtitle;

  /// No description provided for @sendResetCode.
  ///
  /// In en, this message translates to:
  /// **'Send Reset Code'**
  String get sendResetCode;

  /// No description provided for @resetCode.
  ///
  /// In en, this message translates to:
  /// **'Reset Code'**
  String get resetCode;

  /// No description provided for @pleaseEnterResetCode.
  ///
  /// In en, this message translates to:
  /// **'Please enter the reset code'**
  String get pleaseEnterResetCode;

  /// No description provided for @resendCode.
  ///
  /// In en, this message translates to:
  /// **'Resend Code'**
  String get resendCode;

  /// No description provided for @passwordResetEmailSent.
  ///
  /// In en, this message translates to:
  /// **'Password reset email sent. Please check your inbox.'**
  String get passwordResetEmailSent;

  /// No description provided for @oldPassword.
  ///
  /// In en, this message translates to:
  /// **'Old Password'**
  String get oldPassword;

  /// No description provided for @newPassword.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get newPassword;

  /// No description provided for @changePasswordDescription.
  ///
  /// In en, this message translates to:
  /// **'Enter your old password and choose a new one'**
  String get changePasswordDescription;

  /// No description provided for @passwordChanged.
  ///
  /// In en, this message translates to:
  /// **'Password changed successfully'**
  String get passwordChanged;

  /// No description provided for @weak.
  ///
  /// In en, this message translates to:
  /// **'Weak'**
  String get weak;

  /// No description provided for @medium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get medium;

  /// No description provided for @strong.
  ///
  /// In en, this message translates to:
  /// **'Strong'**
  String get strong;

  /// No description provided for @passwordStrengthTip.
  ///
  /// In en, this message translates to:
  /// **'Use 8+ characters with uppercase, numbers, and symbols'**
  String get passwordStrengthTip;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @messages.
  ///
  /// In en, this message translates to:
  /// **'Messages'**
  String get messages;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @post.
  ///
  /// In en, this message translates to:
  /// **'Post'**
  String get post;

  /// No description provided for @posts.
  ///
  /// In en, this message translates to:
  /// **'Posts'**
  String get posts;

  /// No description provided for @createPost.
  ///
  /// In en, this message translates to:
  /// **'Create Post'**
  String get createPost;

  /// No description provided for @editPost.
  ///
  /// In en, this message translates to:
  /// **'Edit Post'**
  String get editPost;

  /// No description provided for @deletePost.
  ///
  /// In en, this message translates to:
  /// **'Delete Post'**
  String get deletePost;

  /// No description provided for @comment.
  ///
  /// In en, this message translates to:
  /// **'Comment'**
  String get comment;

  /// No description provided for @comments.
  ///
  /// In en, this message translates to:
  /// **'Comments'**
  String get comments;

  /// No description provided for @like.
  ///
  /// In en, this message translates to:
  /// **'Like'**
  String get like;

  /// No description provided for @likes.
  ///
  /// In en, this message translates to:
  /// **'Likes'**
  String get likes;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// No description provided for @shares.
  ///
  /// In en, this message translates to:
  /// **'Shares'**
  String get shares;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @saved.
  ///
  /// In en, this message translates to:
  /// **'Saved'**
  String get saved;

  /// No description provided for @follow.
  ///
  /// In en, this message translates to:
  /// **'Follow'**
  String get follow;

  /// No description provided for @following.
  ///
  /// In en, this message translates to:
  /// **'Following'**
  String get following;

  /// No description provided for @followers.
  ///
  /// In en, this message translates to:
  /// **'Followers'**
  String get followers;

  /// No description provided for @unfollow.
  ///
  /// In en, this message translates to:
  /// **'Unfollow'**
  String get unfollow;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editProfile;

  /// No description provided for @changePassword.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get changePassword;

  /// No description provided for @changeLanguage.
  ///
  /// In en, this message translates to:
  /// **'Change Language'**
  String get changeLanguage;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @lightMode.
  ///
  /// In en, this message translates to:
  /// **'Light Mode'**
  String get lightMode;

  /// No description provided for @darkMode.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get darkMode;

  /// No description provided for @systemDefault.
  ///
  /// In en, this message translates to:
  /// **'System Default'**
  String get systemDefault;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @roles.
  ///
  /// In en, this message translates to:
  /// **'Roles'**
  String get roles;

  /// No description provided for @noRoles.
  ///
  /// In en, this message translates to:
  /// **'No roles assigned'**
  String get noRoles;

  /// No description provided for @profileNotLoaded.
  ///
  /// In en, this message translates to:
  /// **'Profile not loaded'**
  String get profileNotLoaded;

  /// No description provided for @profileUpdated.
  ///
  /// In en, this message translates to:
  /// **'Profile updated successfully'**
  String get profileUpdated;

  /// No description provided for @userName.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get userName;

  /// No description provided for @allUsers.
  ///
  /// In en, this message translates to:
  /// **'All Users'**
  String get allUsers;

  /// No description provided for @noUsersFound.
  ///
  /// In en, this message translates to:
  /// **'No users found'**
  String get noUsersFound;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @save_action.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save_action;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// No description provided for @pleaseWait.
  ///
  /// In en, this message translates to:
  /// **'Please wait...'**
  String get pleaseWait;

  /// No description provided for @noDataAvailable.
  ///
  /// In en, this message translates to:
  /// **'No data available'**
  String get noDataAvailable;

  /// No description provided for @noResultsFound.
  ///
  /// In en, this message translates to:
  /// **'No results found'**
  String get noResultsFound;

  /// No description provided for @somethingWentWrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get somethingWentWrong;

  /// Welcome message with user name
  ///
  /// In en, this message translates to:
  /// **'Welcome, {name}!'**
  String welcomeMessage(String name);

  /// Number of posts
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No posts} =1{1 post} other{{count} posts}}'**
  String postsCount(int count);

  /// Number of followers
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No followers} =1{1 follower} other{{count} followers}}'**
  String followersCount(int count);

  /// No description provided for @failure_1000.
  ///
  /// In en, this message translates to:
  /// **'Server error occurred'**
  String get failure_1000;

  /// No description provided for @failure_1001.
  ///
  /// In en, this message translates to:
  /// **'No internet connection. Please check your network settings.'**
  String get failure_1001;

  /// No description provided for @failure_1002.
  ///
  /// In en, this message translates to:
  /// **'Request timed out. Please try again.'**
  String get failure_1002;

  /// No description provided for @failure_1003.
  ///
  /// In en, this message translates to:
  /// **'You are not authorized. Please log in again.'**
  String get failure_1003;

  /// No description provided for @failure_1004.
  ///
  /// In en, this message translates to:
  /// **'The requested resource was not found.'**
  String get failure_1004;

  /// No description provided for @failure_1005.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have permission to access this resource.'**
  String get failure_1005;

  /// No description provided for @failure_2000.
  ///
  /// In en, this message translates to:
  /// **'Failed to load cached data.'**
  String get failure_2000;

  /// No description provided for @failure_2001.
  ///
  /// In en, this message translates to:
  /// **'Storage operation failed. Please check available space.'**
  String get failure_2001;

  /// No description provided for @failure_3000.
  ///
  /// In en, this message translates to:
  /// **'Please check your input and try again.'**
  String get failure_3000;

  /// No description provided for @failure_3001.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email address.'**
  String get failure_3001;

  /// No description provided for @failure_3002.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least {minLength} characters long.'**
  String failure_3002(String minLength);

  /// No description provided for @failure_3003.
  ///
  /// In en, this message translates to:
  /// **'Password is too weak. Use a stronger password.'**
  String get failure_3003;

  /// No description provided for @failure_3004.
  ///
  /// In en, this message translates to:
  /// **'{field} is required.'**
  String failure_3004(String field);

  /// No description provided for @failure_3005.
  ///
  /// In en, this message translates to:
  /// **'Minimum distance ({minKm} km) cannot be greater than maximum distance ({maxKm} km).'**
  String failure_3005(String minKm, String maxKm);

  /// No description provided for @failure_3006.
  ///
  /// In en, this message translates to:
  /// **'Minimum distance cannot be negative ({minKm} km).'**
  String failure_3006(String minKm);

  /// No description provided for @failure_3007.
  ///
  /// In en, this message translates to:
  /// **'Maximum distance cannot be negative ({maxKm} km).'**
  String failure_3007(String maxKm);

  /// No description provided for @failure_4000.
  ///
  /// In en, this message translates to:
  /// **'Operation failed due to business rules.'**
  String get failure_4000;

  /// No description provided for @failure_4001.
  ///
  /// In en, this message translates to:
  /// **'You don\'t have permission to perform this action.'**
  String get failure_4001;

  /// No description provided for @failure_4002.
  ///
  /// In en, this message translates to:
  /// **'This resource is already in use.'**
  String get failure_4002;

  /// No description provided for @failure_4003.
  ///
  /// In en, this message translates to:
  /// **'Your account has been disabled. Please contact support.'**
  String get failure_4003;

  /// No description provided for @failure_4004.
  ///
  /// In en, this message translates to:
  /// **'This email address is already registered.'**
  String get failure_4004;

  /// No description provided for @failure_5000.
  ///
  /// In en, this message translates to:
  /// **'An unexpected error occurred. Please try again.'**
  String get failure_5000;

  /// No description provided for @failure_5001.
  ///
  /// In en, this message translates to:
  /// **'Operation was cancelled.'**
  String get failure_5001;

  /// No description provided for @exampleTitle.
  ///
  /// In en, this message translates to:
  /// **'Example App'**
  String get exampleTitle;

  /// No description provided for @welcomeToApp.
  ///
  /// In en, this message translates to:
  /// **'Welcome to our beautiful app!'**
  String get welcomeToApp;

  /// No description provided for @exploreFeatures.
  ///
  /// In en, this message translates to:
  /// **'Explore Features'**
  String get exploreFeatures;

  /// No description provided for @viewDetails.
  ///
  /// In en, this message translates to:
  /// **'View Details'**
  String get viewDetails;

  /// No description provided for @goToSettings.
  ///
  /// In en, this message translates to:
  /// **'Go to Settings'**
  String get goToSettings;

  /// No description provided for @backToHome.
  ///
  /// In en, this message translates to:
  /// **'Back to Home'**
  String get backToHome;

  /// No description provided for @detailsTitle.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get detailsTitle;

  /// No description provided for @detailsDescription.
  ///
  /// In en, this message translates to:
  /// **'This is a details page demonstrating AutoRoute navigation. You can navigate between different screens seamlessly.'**
  String get detailsDescription;

  /// No description provided for @navigationDemo.
  ///
  /// In en, this message translates to:
  /// **'Navigation Demo'**
  String get navigationDemo;

  /// No description provided for @autoRouteFeatures.
  ///
  /// In en, this message translates to:
  /// **'AutoRoute Features'**
  String get autoRouteFeatures;

  /// No description provided for @autoRouteDescription.
  ///
  /// In en, this message translates to:
  /// **'AutoRoute provides type-safe navigation, deep linking support, nested navigation, and much more!'**
  String get autoRouteDescription;

  /// No description provided for @typeSafeNavigationTitle.
  ///
  /// In en, this message translates to:
  /// **'Type-safe Navigation'**
  String get typeSafeNavigationTitle;

  /// No description provided for @typeSafeNavigationDescription.
  ///
  /// In en, this message translates to:
  /// **'Navigate with compile-time safety and auto-completion'**
  String get typeSafeNavigationDescription;

  /// No description provided for @deepLinkingTitle.
  ///
  /// In en, this message translates to:
  /// **'Deep Linking'**
  String get deepLinkingTitle;

  /// No description provided for @deepLinkingDescription.
  ///
  /// In en, this message translates to:
  /// **'Support for deep links and navigation parameters'**
  String get deepLinkingDescription;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// No description provided for @appearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearance;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @selectTheme.
  ///
  /// In en, this message translates to:
  /// **'Select Theme'**
  String get selectTheme;

  /// No description provided for @selectLanguage.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get version;

  /// No description provided for @appVersion.
  ///
  /// In en, this message translates to:
  /// **'Version 1.0.0'**
  String get appVersion;

  /// No description provided for @developedBy.
  ///
  /// In en, this message translates to:
  /// **'Developed with ❤️ using Flutter'**
  String get developedBy;

  /// No description provided for @featureCard1Title.
  ///
  /// In en, this message translates to:
  /// **'Beautiful Design'**
  String get featureCard1Title;

  /// No description provided for @featureCard1Description.
  ///
  /// In en, this message translates to:
  /// **'Modern Material Design 3 with smooth animations'**
  String get featureCard1Description;

  /// No description provided for @featureCard2Title.
  ///
  /// In en, this message translates to:
  /// **'Multi-language'**
  String get featureCard2Title;

  /// No description provided for @featureCard2Description.
  ///
  /// In en, this message translates to:
  /// **'Support for English, Russian, and Kazakh'**
  String get featureCard2Description;

  /// No description provided for @featureCard3Title.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get featureCard3Title;

  /// No description provided for @catalog.
  ///
  /// In en, this message translates to:
  /// **'Catalog'**
  String get catalog;

  /// No description provided for @catalogItems.
  ///
  /// In en, this message translates to:
  /// **'Items'**
  String get catalogItems;

  /// No description provided for @catalogBrands.
  ///
  /// In en, this message translates to:
  /// **'Brands'**
  String get catalogBrands;

  /// No description provided for @catalogTypes.
  ///
  /// In en, this message translates to:
  /// **'Types'**
  String get catalogTypes;

  /// No description provided for @searchItems.
  ///
  /// In en, this message translates to:
  /// **'Search items'**
  String get searchItems;

  /// No description provided for @priceRange.
  ///
  /// In en, this message translates to:
  /// **'Price Range'**
  String get priceRange;

  /// No description provided for @inStock.
  ///
  /// In en, this message translates to:
  /// **'In Stock'**
  String get inStock;

  /// No description provided for @lowStock.
  ///
  /// In en, this message translates to:
  /// **'Low Stock'**
  String get lowStock;

  /// No description provided for @outOfStock.
  ///
  /// In en, this message translates to:
  /// **'Out of Stock'**
  String get outOfStock;

  /// No description provided for @itemDetails.
  ///
  /// In en, this message translates to:
  /// **'Item Details'**
  String get itemDetails;

  /// No description provided for @featured.
  ///
  /// In en, this message translates to:
  /// **'Featured'**
  String get featured;

  /// No description provided for @availableStock.
  ///
  /// In en, this message translates to:
  /// **'Available Stock'**
  String get availableStock;

  /// No description provided for @descriptionLabel.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get descriptionLabel;

  /// No description provided for @filters.
  ///
  /// In en, this message translates to:
  /// **'Filters'**
  String get filters;

  /// No description provided for @allLabel.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get allLabel;

  /// No description provided for @brands.
  ///
  /// In en, this message translates to:
  /// **'Brands'**
  String get brands;

  /// No description provided for @types.
  ///
  /// In en, this message translates to:
  /// **'Types'**
  String get types;

  /// No description provided for @clearFilters.
  ///
  /// In en, this message translates to:
  /// **'Clear filters'**
  String get clearFilters;

  /// No description provided for @reviews.
  ///
  /// In en, this message translates to:
  /// **'Reviews'**
  String get reviews;

  /// No description provided for @writeReview.
  ///
  /// In en, this message translates to:
  /// **'Write Review'**
  String get writeReview;

  /// No description provided for @editReview.
  ///
  /// In en, this message translates to:
  /// **'Edit Review'**
  String get editReview;

  /// No description provided for @deleteReview.
  ///
  /// In en, this message translates to:
  /// **'Delete Review'**
  String get deleteReview;

  /// No description provided for @rating.
  ///
  /// In en, this message translates to:
  /// **'Rating'**
  String get rating;

  /// No description provided for @reviewTitle.
  ///
  /// In en, this message translates to:
  /// **'Review Title'**
  String get reviewTitle;

  /// No description provided for @reviewComment.
  ///
  /// In en, this message translates to:
  /// **'Your Review'**
  String get reviewComment;

  /// No description provided for @submitReview.
  ///
  /// In en, this message translates to:
  /// **'Submit Review'**
  String get submitReview;

  /// No description provided for @averageRating.
  ///
  /// In en, this message translates to:
  /// **'Average Rating'**
  String get averageRating;

  /// No description provided for @noReviews.
  ///
  /// In en, this message translates to:
  /// **'No reviews yet'**
  String get noReviews;

  /// No description provided for @beFirstReview.
  ///
  /// In en, this message translates to:
  /// **'Be the first to review!'**
  String get beFirstReview;

  /// No description provided for @reviewCreated.
  ///
  /// In en, this message translates to:
  /// **'Review created successfully'**
  String get reviewCreated;

  /// No description provided for @reviewUpdated.
  ///
  /// In en, this message translates to:
  /// **'Review updated successfully'**
  String get reviewUpdated;

  /// No description provided for @reviewDeleted.
  ///
  /// In en, this message translates to:
  /// **'Review deleted successfully'**
  String get reviewDeleted;

  /// No description provided for @ratingRequired.
  ///
  /// In en, this message translates to:
  /// **'Please select a rating'**
  String get ratingRequired;

  /// No description provided for @titleRequired.
  ///
  /// In en, this message translates to:
  /// **'Title is required'**
  String get titleRequired;

  /// No description provided for @commentRequired.
  ///
  /// In en, this message translates to:
  /// **'Comment is required'**
  String get commentRequired;

  /// No description provided for @commentTooShort.
  ///
  /// In en, this message translates to:
  /// **'Comment must be at least 10 characters'**
  String get commentTooShort;

  /// No description provided for @shoppingCart.
  ///
  /// In en, this message translates to:
  /// **'Shopping Cart'**
  String get shoppingCart;

  /// No description provided for @addToCart.
  ///
  /// In en, this message translates to:
  /// **'Add to Cart'**
  String get addToCart;

  /// No description provided for @removeFromCart.
  ///
  /// In en, this message translates to:
  /// **'Remove from Cart'**
  String get removeFromCart;

  /// No description provided for @clearCart.
  ///
  /// In en, this message translates to:
  /// **'Clear Cart'**
  String get clearCart;

  /// No description provided for @cartTotal.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get cartTotal;

  /// No description provided for @cartSubtotal.
  ///
  /// In en, this message translates to:
  /// **'Subtotal'**
  String get cartSubtotal;

  /// No description provided for @emptyCart.
  ///
  /// In en, this message translates to:
  /// **'Your cart is empty'**
  String get emptyCart;

  /// No description provided for @continueShopping.
  ///
  /// In en, this message translates to:
  /// **'Continue Shopping'**
  String get continueShopping;

  /// No description provided for @proceedToCheckout.
  ///
  /// In en, this message translates to:
  /// **'Proceed to Checkout'**
  String get proceedToCheckout;

  /// No description provided for @quantity.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get quantity;

  /// No description provided for @updateQuantity.
  ///
  /// In en, this message translates to:
  /// **'Update Quantity'**
  String get updateQuantity;

  /// No description provided for @itemAddedToCart.
  ///
  /// In en, this message translates to:
  /// **'Item added to cart'**
  String get itemAddedToCart;

  /// No description provided for @itemRemovedFromCart.
  ///
  /// In en, this message translates to:
  /// **'Item removed from cart'**
  String get itemRemovedFromCart;

  /// No description provided for @cartCleared.
  ///
  /// In en, this message translates to:
  /// **'Cart cleared'**
  String get cartCleared;

  /// No description provided for @confirmClearCart.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to clear your cart?'**
  String get confirmClearCart;

  /// No description provided for @wishlist.
  ///
  /// In en, this message translates to:
  /// **'Wishlist'**
  String get wishlist;

  /// No description provided for @addToWishlist.
  ///
  /// In en, this message translates to:
  /// **'Add to Wishlist'**
  String get addToWishlist;

  /// No description provided for @removeFromWishlist.
  ///
  /// In en, this message translates to:
  /// **'Remove from Wishlist'**
  String get removeFromWishlist;

  /// No description provided for @clearWishlist.
  ///
  /// In en, this message translates to:
  /// **'Clear Wishlist'**
  String get clearWishlist;

  /// No description provided for @emptyWishlist.
  ///
  /// In en, this message translates to:
  /// **'Your wishlist is empty'**
  String get emptyWishlist;

  /// No description provided for @moveToCart.
  ///
  /// In en, this message translates to:
  /// **'Move to Cart'**
  String get moveToCart;

  /// No description provided for @itemAddedToWishlist.
  ///
  /// In en, this message translates to:
  /// **'Item added to wishlist'**
  String get itemAddedToWishlist;

  /// No description provided for @itemRemovedFromWishlist.
  ///
  /// In en, this message translates to:
  /// **'Item removed from wishlist'**
  String get itemRemovedFromWishlist;

  /// No description provided for @wishlistCleared.
  ///
  /// In en, this message translates to:
  /// **'Wishlist cleared'**
  String get wishlistCleared;

  /// No description provided for @confirmClearWishlist.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to clear your wishlist?'**
  String get confirmClearWishlist;

  /// No description provided for @movedToCart.
  ///
  /// In en, this message translates to:
  /// **'Item moved to cart'**
  String get movedToCart;

  /// No description provided for @cart.
  ///
  /// In en, this message translates to:
  /// **'Cart'**
  String get cart;

  /// No description provided for @homeHeroTitle.
  ///
  /// In en, this message translates to:
  /// **'Fast-forward your run'**
  String get homeHeroTitle;

  /// No description provided for @homeHeroSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Layered cushioning, bold palettes, and traction built for city pace.'**
  String get homeHeroSubtitle;

  /// No description provided for @homeHeroCta.
  ///
  /// In en, this message translates to:
  /// **'Shop the drop'**
  String get homeHeroCta;

  /// No description provided for @homeCategoryTitle.
  ///
  /// In en, this message translates to:
  /// **'Shop by category'**
  String get homeCategoryTitle;

  /// No description provided for @homeFeaturedTitle.
  ///
  /// In en, this message translates to:
  /// **'Featured drops'**
  String get homeFeaturedTitle;

  /// No description provided for @homeDiscoverTitle.
  ///
  /// In en, this message translates to:
  /// **'Discover'**
  String get homeDiscoverTitle;

  /// No description provided for @homeSeeAll.
  ///
  /// In en, this message translates to:
  /// **'See all'**
  String get homeSeeAll;

  /// No description provided for @homeMemberCtaTitle.
  ///
  /// In en, this message translates to:
  /// **'Unlock members access'**
  String get homeMemberCtaTitle;

  /// No description provided for @homeMemberCtaSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Exclusive colorways, early launches, and rewards built for movers.'**
  String get homeMemberCtaSubtitle;

  /// No description provided for @homeMemberCtaButton.
  ///
  /// In en, this message translates to:
  /// **'Join membership'**
  String get homeMemberCtaButton;

  /// No description provided for @homeHighlightSustainabilityTitle.
  ///
  /// In en, this message translates to:
  /// **'Sustainable build'**
  String get homeHighlightSustainabilityTitle;

  /// No description provided for @homeHighlightSustainabilityBody.
  ///
  /// In en, this message translates to:
  /// **'Recycled uppers and low-impact midsoles.'**
  String get homeHighlightSustainabilityBody;

  /// No description provided for @homeHighlightLimitedTitle.
  ///
  /// In en, this message translates to:
  /// **'Limited releases'**
  String get homeHighlightLimitedTitle;

  /// No description provided for @homeHighlightLimitedBody.
  ///
  /// In en, this message translates to:
  /// **'Small-batch colorways before they vanish.'**
  String get homeHighlightLimitedBody;

  /// No description provided for @homeHighlightNewArrivalsTitle.
  ///
  /// In en, this message translates to:
  /// **'Fresh arrivals'**
  String get homeHighlightNewArrivalsTitle;

  /// No description provided for @homeHighlightNewArrivalsBody.
  ///
  /// In en, this message translates to:
  /// **'Weekly drops curated for street and track.'**
  String get homeHighlightNewArrivalsBody;

  /// No description provided for @homeHighlightComfortTitle.
  ///
  /// In en, this message translates to:
  /// **'Everyday comfort'**
  String get homeHighlightComfortTitle;

  /// No description provided for @homeHighlightComfortBody.
  ///
  /// In en, this message translates to:
  /// **'Featherweight cushioning for long days.'**
  String get homeHighlightComfortBody;

  /// No description provided for @categoryRunning.
  ///
  /// In en, this message translates to:
  /// **'Running'**
  String get categoryRunning;

  /// No description provided for @categoryCasual.
  ///
  /// In en, this message translates to:
  /// **'Casual'**
  String get categoryCasual;

  /// No description provided for @categoryBasketball.
  ///
  /// In en, this message translates to:
  /// **'Basketball'**
  String get categoryBasketball;

  /// No description provided for @categoryLifestyle.
  ///
  /// In en, this message translates to:
  /// **'Lifestyle'**
  String get categoryLifestyle;

  /// No description provided for @productPulseRunner.
  ///
  /// In en, this message translates to:
  /// **'Pulse Runner'**
  String get productPulseRunner;

  /// No description provided for @productNimbusGlide.
  ///
  /// In en, this message translates to:
  /// **'Nimbus Glide'**
  String get productNimbusGlide;

  /// No description provided for @productStreetFlux.
  ///
  /// In en, this message translates to:
  /// **'Street Flux'**
  String get productStreetFlux;

  /// No description provided for @productAeroCourt.
  ///
  /// In en, this message translates to:
  /// **'Aero Court'**
  String get productAeroCourt;

  /// No description provided for @productSkylineBounce.
  ///
  /// In en, this message translates to:
  /// **'Skyline Bounce'**
  String get productSkylineBounce;

  /// No description provided for @productOrbitFlow.
  ///
  /// In en, this message translates to:
  /// **'Orbit Flow'**
  String get productOrbitFlow;

  /// No description provided for @featuredAriaMomentum.
  ///
  /// In en, this message translates to:
  /// **'Aria Momentum'**
  String get featuredAriaMomentum;

  /// No description provided for @featuredVaporStride.
  ///
  /// In en, this message translates to:
  /// **'Vapor Stride'**
  String get featuredVaporStride;

  /// No description provided for @sortingDistanceAscending.
  ///
  /// In en, this message translates to:
  /// **'Distance: Shorter to Longer'**
  String get sortingDistanceAscending;

  /// No description provided for @sortingDistanceDescending.
  ///
  /// In en, this message translates to:
  /// **'Distance: Longer to Shorter'**
  String get sortingDistanceDescending;

  /// No description provided for @sortingDifficultyAscending.
  ///
  /// In en, this message translates to:
  /// **'Difficulty: Easiest First'**
  String get sortingDifficultyAscending;

  /// No description provided for @sortingDifficultyDescending.
  ///
  /// In en, this message translates to:
  /// **'Difficulty: Hardest First'**
  String get sortingDifficultyDescending;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'kk', 'ru'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'kk':
      return AppLocalizationsKk();
    case 'ru':
      return AppLocalizationsRu();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
