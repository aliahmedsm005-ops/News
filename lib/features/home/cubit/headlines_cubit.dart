import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/home/cubit/headlines_state.dart';
import 'package:news/features/home/data/Repo/news_Repo.dart';

class HeadlinesCubit extends Cubit<TopHeadlinesStates>{
  HeadlinesCubit() : super(TopHeadlinesInitialState()){
    fetchArticles();
  }
  static HeadlinesCubit get(context)=> BlocProvider.of(context);


  final List<String> categories = [

    'business',
    'entertainment',
    'general',
    'health',
    'science',
    'sports',
    'technology'
  ];
  int categoryIndex = 0;
  void onCategoryChanged(int newIndex){
    categoryIndex = newIndex;
    fetchArticles();
  }
  NewsRepo repo = NewsRepo();
  var search = TextEditingController();

  fetchArticles() async{
    emit(TopHeadlinesLoadingState());
    var result = await repo.fetchTopHeadlines(
        category: categories[categoryIndex],
        search: search.text
    );
    result.fold(
            (error) {
          emit(TopHeadlinesErrorState(error: error));
        },
            (model){
          emit(TopHeadlinesSuccessState(responseModel: model));
        }
    );
  }
}