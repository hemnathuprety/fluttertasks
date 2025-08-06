import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'ecommerce_event.dart';
part 'ecommerce_state.dart';
part 'ecommerce_bloc.freezed.dart';

@injectable
class EcommerceBloc extends Bloc<EcommerceEvent, EcommerceState> {
  EcommerceBloc() : super(const EcommerceState.initial()) {
    on<EcommerceEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
