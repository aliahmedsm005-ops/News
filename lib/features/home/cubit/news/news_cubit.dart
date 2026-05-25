
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/home/cubit/news/news_state.dart';
import 'package:news/features/home/data/Repo/news_Repo.dart';
import 'package:news/features/home/data/model/article_model.dart';

class NewsCubit extends Cubit<NewsState>{
  NewsCubit(): super(NewsInitialState());
  static NewsCubit get(context)=> BlocProvider.of(context);

  FetchArticlesResponseModel? responseModel;
  String? error;
  NewsRepo repo = NewsRepo();
  fetchNews() async{
    emit(NewsLoadingState());
    var result = await repo.fetchArticles();
    result.fold(
            (error) {
          this.error = error;
          emit(NewsErrorState());
        },
            (model){
          responseModel = model;
          emit(NewsSuccessState());
        }
    );
  }


}