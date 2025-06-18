import 'package:flutter/material.dart';

class RememberMe extends StatelessWidget {
  const RememberMe({super.key, required this.isRememberme});

  final ValueNotifier<bool> isRememberme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: ValueListenableBuilder(
        valueListenable: isRememberme,
        builder: (context, value, child) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                onTap: () {
                  isRememberme.value = !isRememberme.value;
                },
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                    color: isRememberme.value ? Colors.grey : Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: FittedBox(
                      child: Icon(
                        isRememberme.value ? Icons.check : null,
                        // color: ColorUtil.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ),
              // hSpace(15),
              Text(
                'Remember me',
                // style: FontUtils().styleS15W500(color: ColorUtil.fontColor3),
              ),
            ],
          );
        },
      ),
    );
  }
}
