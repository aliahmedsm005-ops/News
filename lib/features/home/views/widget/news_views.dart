import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/features/home/cubit/news/news_cubit.dart';
import 'package:news/features/home/cubit/news/news_state.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context)=> NewsCubit()..fetchNews(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('News'),
          ),
          body: BlocBuilder<NewsCubit, NewsState>(
              builder: (context, state){
                var cubit = NewsCubit.get(context);
                if(state is NewsLoadingState) {
                  return CircularProgressIndicator();
                }
                else if(state is NewsErrorState){
                  return Center(child: Text(cubit.error ?? ''),);
                }
                else if(state is NewsSuccessState && cubit.responseModel != null){
                  return Column(
                    children:
                    [
                      Text('${cubit.responseModel!.totalResults ?? 0}'),
                      Expanded(
                        child: ListView.separated(
                            itemBuilder: (context, index)=> Text(cubit.responseModel!.articles?[index].title??''),
                            separatorBuilder: (context, index)=> SizedBox(height: 20,),
                            itemCount: cubit.responseModel!.articles!.length
                        ),
                      )
                    ],
                  );

                }
                else{
                  return Container();
                }
              }
          ),
        )
    );
  }
}