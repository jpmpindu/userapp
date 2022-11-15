import 'package:ae_user/data/api/api_client.dart';
import 'package:ae_user/data/model/body/review_body.dart';
import 'package:ae_user/util/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductRepo extends GetxService {
  final ApiClient apiClient;
  ProductRepo({@required this.apiClient});

  Future<Response> getPopularProductList(String type) async {
    return await apiClient
        .getData('${AppConstants.POPULAR_PRODUCT_URI}?type=$type');
  }

  Future<Response> getReviewedProductList(String type) async {
    return await apiClient
        .getData('${AppConstants.REVIEWED_PRODUCT_URI}?type=$type');
  }

  Future<Response> submitReview(ReviewBody reviewBody) async {
    return await apiClient.postData(
        AppConstants.REVIEW_URI, reviewBody.toJson());
  }

  Future<Response> submitDeliveryManReview(ReviewBody reviewBody) async {
    return await apiClient.postData(
        AppConstants.DELIVER_MAN_REVIEW_URI, reviewBody.toJson());
  }
}
