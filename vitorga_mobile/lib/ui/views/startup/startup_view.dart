import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:vitorga_mobile/app/app.locator.dart';
import 'package:vitorga_mobile/app/app.router.dart';
import 'package:vitorga_mobile/ui/common/ui_helpers.dart';

import 'startup_viewmodel.dart';

class StartupView extends StackedView<StartupViewModel> {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StartupViewModel viewModel,
    Widget? child,
  ) {
    final navigationService = locator<NavigationService>();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFD5D5D5),
          borderRadius: BorderRadius.circular(30),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 3),
              const Text(
                'Bienvenue',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              const Spacer(flex: 3),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        navigationService.navigateToRegisterView() ;
                      },
                      child: Container(
                        height: 80,
                        alignment: Alignment.center,
                        child: const Text(
                          'Crée un compte',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Material(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                      ),
                      child: InkWell(
                        onTap: () {
                        navigationService.navigateToLoginView();
                        },
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                        ),
                        child: Container(
                          height: 80,
                          alignment: Alignment.center,
                          child: const Text(
                            'Se connecter',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  StartupViewModel viewModelBuilder(BuildContext context) => StartupViewModel();

  @override
  void onViewModelReady(StartupViewModel viewModel) => SchedulerBinding.instance
      .addPostFrameCallback((timeStamp) => viewModel.runStartupLogic());
}
