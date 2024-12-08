import 'package:advanced_app/features/home/home/data/models/specialization_response.dart';

import '../../../../../core/networking/apis/api_result.dart';
import '../api_home_screen/home_api_services.dart';

class HomeRepository{
 final HomeApiServices _homeApiServices;
  HomeRepository(this._homeApiServices);

  Future<ApiResult<SpecializationResponse>>getHomeData()async{
    try{
      final response=await _homeApiServices.getHomeData();
      return ApiResult.success(response);
    }catch(e){
      return  ApiResult.failure("errorApi result :$e");
    }
  }
}