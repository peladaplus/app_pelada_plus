import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../../core/design_system/components/registration_group.component.dart';
import '../../../../../core/design_system/widgets/choice_image.widget.dart';
import '../../stores/registration.store.dart';

class RegistrationImagePage extends StatefulWidget {
  const RegistrationImagePage({Key? key, required this.modality})
      : super(key: key);

  final String modality;

  @override
  State<RegistrationImagePage> createState() => _RegistrationImagePageState();
}

class _RegistrationImagePageState extends State<RegistrationImagePage> {
  final RegistrationStore store = Modular.get<RegistrationStore>();

  late List<bool> imageStatusList = [false, false, false];

  @override
  Widget build(BuildContext context) => RegistrationGroupComponent(
        widget: Expanded(
          child: ShaderMask(
            shaderCallback: (Rect rect) {
              return const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black87,
                  Colors.transparent,
                  Colors.transparent,
                  Colors.black87,
                ],
                stops: [0.0, 0.1, 0.9, 1.0],
              ).createShader(rect);
            },
            blendMode: BlendMode.dstOut,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: imageStatusList.length,
                itemBuilder: (_, index) {
                  return ChoiceImageWidget(
                    image: '${widget.modality}$index',
                    isSelected: imageStatusList[index],
                    action: () {
                      setState(() {
                        imageStatusList = [false, false, false];
                        imageStatusList[index] = true;
                        store.setImage('${widget.modality}$index');
                      });
                    },
                  );
                }),
          ),
        ),
        textTitle: 'Escolha uma imagem para o seu grupo',
        textSubtitle:
            'Selecione uma imagem para ser apresentada na capa do seu grupo.',
        titleButton: 'Continuar',
        titleTextButton: 'Voltar',
        actionButton: store.image == ''
            ? null
            : () => Modular.to.pushNamed('/group/registration_frequency'),
        actionTextButton: () => Modular.to.pop(),
      );
}
