import 'package:dajeej/views/home/cubit/home_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeStates>{
  HomeCubit(): super(InitialHomeStates());
   static HomeCubit get(context)=> BlocProvider.of(context);
  bool isKwait= false;
  void kwait(){
    isKwait=true;
    emit(KwaitState());
  }
  void saudi(){
    isKwait=false;
    emit(SaudiStat());
  }
}