/// API configuration constants
class ApiConstants {
  // Prevent instantiation
  ApiConstants._();

  static const String apiVersion = '/v1';

  // Storage keys for tokens
  static const String accessTokenKey = 'auth_token';
  static const String refreshTokenKey = 'refresh_token';
  static const String tokenExpiryKey = 'token_expiry';

  // Auth endpoints
  static const String login = '/auth/login';
  static const String register = '/auth/register';
  static const String refresh = '/auth/refresh';
  static const String logout = '/auth/logout';
  static const String forgotPassword = '/auth/forgot-password';
  static const String resetPassword = '/auth/reset-password';
  static const String verifyEmail = '/auth/verify-email';

  // User endpoints
  static const String profile = '/user/profile';
  static const String updateProfile = '/user/profile';
  static const String changePassword = '/user/change-password';
  static const String deleteAccount = '/user/account';

  // ========== E-COMMERCE API ENDPOINTS ==========
  
  // Auth endpoints (11 endpoints)
  static const String authRegister = '/api/Auth/Register';
  static const String authLogin = '/api/Auth/Login';
  static const String authAnonymous = '/api/Auth/AuthenticateAnonymousUser';
  static const String authAddUserToRoles = '/api/Auth/AddUserToRoles';
  static const String authRequestPasswordReset = '/api/Auth/RequestPasswordReset';
  static const String authResetPassword = '/api/Auth/ResetPassword';
  static const String authChangeEmail = '/api/Auth/ChangeEmail';
  static const String authChangePassword = '/api/Auth/ChangePassword';
  static const String authGetCurrentUserId = '/api/Auth/GetCurrentUserId';
  static const String authGetCurrentUserName = '/api/Auth/GetCurrentUserName';
  static String authGetPayload(String token) => '/api/Auth/GetPayload/$token';
  
  // ApplicationUser endpoints (5 endpoints)
  static const String userGetAllUsers = '/api/ApplicationUser/GetAllUsers';
  static String userGetByUsername(String username) => 
      '/api/ApplicationUser/GetUserDetailsByUserName/$username';
  static String userGetByEmail(String email) => 
      '/api/ApplicationUser/GetUserDetailsByEmail/$email';
  static String userGetById(String userId) => 
      '/api/ApplicationUser/GetUserDetailsByUserId/$userId';
  static String userUpdateProfile(String userId) => 
      '/api/ApplicationUser/UpdateProfileInformation/$userId';
  
    // CatalogType endpoints (5 endpoints)
        static const String catalogTypeGetAll = '/api/CatalogType/GetCatalogTypes';
        static String catalogTypeGetById(String id) => '/api/CatalogType/GetCatalogTypeById/$id';
        static const String catalogTypeCreate = '/api/CatalogType/CreateCatalogType';
        static String catalogTypeUpdate(String id) => '/api/CatalogType/UpdateCatalogType/$id';
        static String catalogTypeDelete(String id) => '/api/CatalogType/DeleteCatalogType/$id';
  
    // CatalogBrand endpoints (5 endpoints)
        static const String catalogBrandGetAll = '/api/CatalogBrand/GetCatalogBrands';
        static String catalogBrandGetById(String id) => '/api/CatalogBrand/GetCatalogBrandById/$id';
        static const String catalogBrandCreate = '/api/CatalogBrand/CreateCatalogBrand';
        static String catalogBrandUpdate(String id) => '/api/CatalogBrand/UpdateCatalogBrand/$id';
        static String catalogBrandDelete(String id) => '/api/CatalogBrand/DeleteCatalogBrand/$id';
  
    // CatalogItem endpoints (12 endpoints)
    static const String catalogItemGetAll = '/api/CatalogItem/GetCatalogItems';
    static String catalogItemGetById(String id) => '/api/CatalogItem/GetCatalogItemById/$id';
    static String catalogItemGetByBrand(String brandName) => '/api/CatalogItem/GetCatalogItemsByBrandName/$brandName';
    static String catalogItemGetByType(String typeName) => '/api/CatalogItem/GetCatalogItemsByTypeName/$typeName';
    static const String catalogItemGetByPriceRange = '/api/CatalogItem/GetCatalogItems';
    static const String catalogItemSearch = '/api/CatalogItem/GetCatalogItems';
    static const String catalogItemGetFeatured = '/api/CatalogItem/GetCatalogItems';
    static const String catalogItemGetLatest = '/api/CatalogItem/GetCatalogItems';
    static const String catalogItemCreate = '/api/CatalogItem/CreateCatalogItem';
    static String catalogItemUpdate(String id) => '/api/CatalogItem/UpdateCatalogItemDetails/$id';
    static String catalogItemDelete(String id) => '/api/CatalogItem/DeleteCatalogItem/$id';
    static String catalogItemUploadImage(String id) => '/api/CatalogItem/UpdateCatalogItemPictureUrl/$id';
  
  // Cart endpoints (6 endpoints)
  static String cartGet(String userId) => '/api/Cart/GetCart/$userId';
  static const String cartAddItem = '/api/Cart/AddItemToCart';
  static String cartUpdateQuantity(String userId) => '/api/Cart/UpdateItemQuantity/$userId';
  static String cartRemoveItem(String userId) => '/api/Cart/RemoveItemFromCart/$userId';
  static String cartRemove(int cartId) => '/api/Cart/RemoveCart/$cartId';
  static String cartRemoveByUserId(String userId) => '/api/Cart/RemoveCartByUserId/$userId';

  // Wishlist endpoints (5 endpoints)
  static String wishlistGet(String userId) => '/api/Wishlist/GetWishlist/$userId';
  static const String wishlistAddItem = '/api/Wishlist/AddItemToWishlist';
  static String wishlistRemoveItem(String userId) => 
      '/api/Wishlist/RemoveItemFromWishlist/$userId';
  static String wishlistRemove(int wishlistId) => '/api/Wishlist/RemoveWishlist/$wishlistId';
  static String wishlistRemoveByUserId(String userId) => 
      '/api/Wishlist/RemoveWishlistByUserId/$userId';
  
  // Order endpoints (4 endpoints)
  static const String orderGetAll = '/api/Order/GetOrders';
  static String orderGetById(int orderId) => '/api/Order/GetOrderById/$orderId';
  static String orderGetByUserId(String userId) => '/api/Order/GetOrderByUserId/$userId';
  static String orderCreate(String userId) => '/api/Order/CreateOrder/$userId';
  static String orderConfirm(int orderId) => '/api/Order/ConfirmOrder/$orderId';
  
  // Review endpoints (5 endpoints)
  static String reviewGetForItem(int catalogItemId) => 
      '/api/Review/GetCatalogItemReview/$catalogItemId';
  static String reviewGetByUserId(String userId) => '/api/Review/GetReviewsByUserId/$userId';
  static String reviewGetById(int id) => '/api/Review/GetReviewById/$id';
  static const String reviewCreate = '/api/Review/CreateReview';
  static String reviewUpdate(int id) => '/api/Review/UpdateReview/$id';
  static String reviewDelete(int id) => '/api/Review/DeleteReview/$id';
  
  // Support endpoints (1 endpoint)
  static const String supportSend = '/api/Support/SendSupport';
  
    // AdminDashboard endpoints (3 endpoints)
    static const String adminGetStatistics = '/api/AdminDashboard/SalesReport';
    static const String adminGetRecentOrders = '/api/AdminDashboard/GetCustomerActivityLogs';
    static const String adminGetRecentUsers = '/api/AdminDashboard/GetInventorySummary';

  // Headers
  static const String authorizationHeader = 'Authorization';
  static const String bearerPrefix = 'Bearer';
  static const String contentTypeHeader = 'Content-Type';
  static const String acceptHeader = 'Accept';
  static const String contentTypeJson = 'application/json';
  static const String userAgentHeader = 'User-Agent';
}
