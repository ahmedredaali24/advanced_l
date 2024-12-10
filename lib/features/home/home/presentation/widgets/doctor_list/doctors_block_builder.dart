import 'package:advanced_app/features/home/home/data/models/specialization_response.dart';
import 'package:advanced_app/features/home/home/logic/cubit.dart';
import 'package:advanced_app/features/home/home/logic/home_screen_states.dart';
import 'package:advanced_app/features/home/home/presentation/widgets/doctor_list/doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class DoctorsBlockBuilder extends StatelessWidget {
  const DoctorsBlockBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenViewModel,HomeScreenStates>(
      buildWhen: (previous,current)=>current is DoctorsSuccessState||current is DoctorsErrorState,
        builder: (context,state){
              return state.maybeWhen(
                doctorsSuccess: (doctorsList){
                  return setupSuccess(doctorsList);
                },
                  doctorsError: ()=>setupError("error"),
                  orElse: (){
                    return const SizedBox.shrink();
                  }
              );
        }
    );
  }

  Widget setupSuccess(List<Doctors> doctorsList) {
   return DoctorsListView(doctorsList: doctorsList);
  }

 Widget setupError(String error) {
   return const SizedBox.shrink();
 }
}
