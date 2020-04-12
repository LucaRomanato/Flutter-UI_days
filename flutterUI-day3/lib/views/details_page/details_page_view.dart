library details_page_view;

import 'package:day3/core/shared/deliveryInfo.dart';
import 'package:day3/core/shared/shared_variables.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'details_page_view_model.dart';

part 'details_page_mobile.dart';


class DetailsPageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DetailsPageViewModel viewModel = DetailsPageViewModel();
    return ViewModelProvider<DetailsPageViewModel>.withConsumer(
      viewModel: viewModel,
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: _DetailsPageMobile(viewModel),
        );
      }
    );
  }
}