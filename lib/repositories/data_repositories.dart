import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:trendy_treasures/models/address/request/create_address_request.dart';
import 'package:trendy_treasures/models/address/response/create_address_response.dart';
import 'package:trendy_treasures/models/address/response/get_list_address_response.dart';
import 'package:trendy_treasures/models/address/response/update_address_response.dart';
import 'package:trendy_treasures/models/credit_card/request/create_card_request.dart';
import 'package:trendy_treasures/models/credit_card/response.dart/create_card_response.dart';
import 'package:trendy_treasures/models/credit_card/response.dart/delete_card_response.dart';
import 'package:trendy_treasures/models/credit_card/response.dart/get_my_cards_response.dart';
import 'package:trendy_treasures/models/order/request/create_order_request.dart';
import 'package:trendy_treasures/models/order/response/create_order_response.dart';
import 'package:trendy_treasures/models/order/response/get_orders_response.dart';
import 'package:trendy_treasures/models/product/request/add_cart_request.dart';
import 'package:trendy_treasures/models/product/request/upload_product_request.dart';
import 'package:trendy_treasures/models/product/response/add_cart_response.dart';
import 'package:trendy_treasures/models/product/response/delete_cart_product_response.dart';
import 'package:trendy_treasures/models/product/response/delete_product_response.dart';
import 'package:trendy_treasures/models/product/response/get_cart_products_response.dart';
import 'package:trendy_treasures/models/product/response/get_products_response.dart';
import 'package:trendy_treasures/models/product/response/upload_product_response.dart';
import 'package:trendy_treasures/models/user/request/login_request.dart';
import 'package:trendy_treasures/models/user/request/register_request.dart';
import 'package:trendy_treasures/models/user/response/login_response.dart';
import 'package:trendy_treasures/models/user/response/register_response.dart';
import 'package:trendy_treasures/models/wishlist/request/update_wishlist_request.dart';
import 'package:trendy_treasures/models/wishlist/response/update_wishlist_response.dart';
import 'package:trendy_treasures/networks/rest_client.dart';

@lazySingleton
class DataRepository implements RestClient {
  final dio = Dio();
  RestClient? _client;

  DataRepository() {
    _client = RestClient(dio, baseUrl: 'http://10.0.2.2:8080/api/');
  }

  @override
  Future<RegisterData> signUp({required RegisterRequest request}) {
    return _client!.signUp(request: request);
  }

  @override
  Future<LoginResponse> signIn({required LoginRequest request}) {
    return _client!.signIn(request: request);
  }

  @override
  Future<bool> checkToken({required String token}) {
    return _client!.checkToken(token: token);
  }

  @override
  Future<LoginResponse> getUser({required String token}) {
    return _client!.getUser(token: token);
  }

  @override
  Future<UploadProductResponse> addProduct(
      {required String token, required UploadProductRequest request}) {
    return _client!.addProduct(token: token, request: request);
  }

  @override
  Future<GetProductsResponse> getProducts({required String token}) {
    return _client!.getProducts(token: token);
  }

  @override
  Future<DeleteProductResponse> delProductById(
      {required String id, required String token}) {
    return _client!.delProductById(id: id, token: token);
  }

  @override
  Future<GetProductsResponse> getAllProducts({required String token}) {
    return _client!.getAllProducts(token: token);
  }

  @override
  Future<AddProductToCartResponse> addProductToCart(
      {required AddProductToCartRequest request, required String token}) {
    return _client!.addProductToCart(request: request, token: token);
  }

  @override
  Future<GetCartProductsResponse> getCartProducts({required String token}) {
    return _client!.getCartProducts(token: token);
  }

  @override
  Future<DeleteCartProductResponse> deleteCart({required String token}) {
    return _client!.deleteCart(token: token);
  }

  @override
  Future<DeleteCartProductResponse> deleteCartProductById(
      {required String id, required String token}) {
    return _client!.deleteCartProductById(token: token, id: id);
  }

  @override
  Future<CreateOrUpdateShippingInfoResponse> createAddress(
      {required CreateShippingInfoRequest request, required String token}) {
    return _client!.createAddress(request: request, token: token);
  }

  @override
  Future<ListShippingInfoResponse> getAddress({required String token}) {
    return _client!.getAddress(token: token);
  }

  @override
  Future<CreateOrUpdateShippingInfoResponse> updateShippingInforById(
      {required String id,
      required CreateShippingInfoRequest request,
      required String token}) {
    return _client!
        .updateShippingInforById(id: id, request: request, token: token);
  }

  @override
  Future<CreateCardResponse> createCard(
      {required CreateCardRequest request, required String token}) {
    return _client!.createCard(request: request, token: token);
  }

  @override
  Future<GetMyCardsResponse> getMyCards({required String token}) {
    return _client!.getMyCards(token: token);
  }

  @override
  Future<DeleteOrUpdateCardResponse> deleteCardById(
      {required String id, required String token}) {
    return _client!.deleteCardById(id: id, token: token);
  }

  @override
  Future<DeleteOrUpdateCardResponse> updateCardById(
      {required String id,
      required CreateCardRequest request,
      required String token}) {
    return _client!.updateCardById(id: id, request: request, token: token);
  }

  @override
  Future<CreateOrderResponse> createOrder(
      {required CreateOrderRequest request, required String token}) {
    return _client!.createOrder(request: request, token: token);
  }

  @override
  Future<GetMyOrdersResponse> getMyOrders({required String token}) {
    return _client!.getMyOrders(token: token);
  }

  @override
  Future<ListShippingInfoResponse> deleteShippingInforById(
      {required String id, required String token}) {
    return _client!.deleteShippingInforById(id: id, token: token);
  }

  @override
  Future<GetProductsResponse> getMyWishlist({required String token}) {
    return _client!.getMyWishlist(token: token);
  }

  @override
  Future<UpdateWishlistResponse> createOrUpdateWishlist(
      {required String token, required UpdateWishlistRequest request}) {
    return _client!.createOrUpdateWishlist(token: token, request: request);
  }
}
