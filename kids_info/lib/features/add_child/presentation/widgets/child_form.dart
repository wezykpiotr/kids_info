import 'package:flutter/material.dart';

class ChildForm extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController birthdayController;
  final TextEditingController ageInDaysController;
  final TextEditingController weightController;
  final TextEditingController birthLenghtController;
  final TextEditingController headSizeController;
  final String selectedSex;
  final bool isTwin;
  final Function(String) onNameChanged;
  final Function(String) onSexChanged;
  final Function(bool) onTwinChanged;
  final Function(DateTime?) onDateSelected;
  final VoidCallback onSave;
  final Function(BuildContext, TextEditingController, bool) onMeasurementTap;

  const ChildForm({
    super.key,
    required this.nameController,
    required this.birthdayController,
    required this.ageInDaysController,
    required this.weightController,
    required this.birthLenghtController,
    required this.headSizeController,
    required this.selectedSex,
    required this.isTwin,
    required this.onNameChanged,
    required this.onSexChanged,
    required this.onTwinChanged,
    required this.onDateSelected,
    required this.onSave,
    required this.onMeasurementTap,
  }) : assert(selectedSex == 'male' || selectedSex == 'female', 
         'Sex must be either male or female');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildBasicInfo(),
            const SizedBox(height: 32),
            const Text('More information'),
            _buildPersonalInfo(context),
            const SizedBox(height: 32),
            const Text('Measurements'),
            _buildMeasurements(context),
            const SizedBox(height: 32),
            _buildSaveButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildBasicInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: nameController,
          decoration: const InputDecoration(
            hintText: 'Child',
            border: InputBorder.none,
          ),
          style: const TextStyle(color: Colors.grey, fontSize: 32),
          enabled: false,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: TextFormField(
            controller: ageInDaysController,
            decoration: const InputDecoration(
              hintText: 'Age',
              border: InputBorder.none,
            ),
            style: const TextStyle(color: Colors.grey, fontSize: 32),
            enabled: false,
          ),
        ),
      ],
    );
  }

  Widget _buildPersonalInfo(BuildContext context) {
    return Column(
      children: [
        _buildInfoRow(
          icon: "assets/icons/user.png",
          label: "Name:",
          child: TextFormField(
            controller: nameController,
            onChanged: onNameChanged,
            decoration: const InputDecoration(
              hintText: 'Enter a name...',
              border: InputBorder.none,
            ),
          ),
        ),
        _buildInfoRow(
          icon: "assets/icons/sex.png",
          label: "Sex:",
          child: DropdownButton<String>(
            value: selectedSex,
            onChanged: (value) => onSexChanged(value ?? 'male'),
            items: ['male', 'female'].map((item) {
              return DropdownMenuItem(
                value: item,
                child: Text(item),
              );
            }).toList(),
          ),
        ),
        _buildInfoRow(
          icon: "assets/icons/twins.png",
          label: "Twin?:",
          child: Switch(
            value: isTwin,
            onChanged: onTwinChanged,
            activeColor: Colors.green,
          ),
        ),
        _buildInfoRow(
          icon: "assets/icons/happy-birthday.png",
          label: "Date of birth:",
          child: TextFormField(
            controller: birthdayController,
            decoration: const InputDecoration(
              hintText: 'Enter a date of birth',
              border: InputBorder.none,
            ),
            onTap: () async {
              final date = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2010),
                lastDate: DateTime(2050),
              );
              onDateSelected(date);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildMeasurements(BuildContext context) {
    return Column(
      children: [
        _buildInfoRow(
          icon: "assets/icons/weight.png",
          label: "Birth weight:",
          child: TextFormField(
            controller: weightController,
            decoration: const InputDecoration(
              hintText: 'Enter a weight',
              border: InputBorder.none,
            ),
            onTap: () => onMeasurementTap(context, weightController, true),
          ),
        ),
        _buildInfoRow(
          icon: "assets/icons/height.png",
          label: "Birth length:",
          child: TextFormField(
            controller: birthLenghtController,
            decoration: const InputDecoration(
              hintText: 'Enter a length',
              border: InputBorder.none,
            ),
            onTap: () => onMeasurementTap(context, birthLenghtController, false),
          ),
        ),
        _buildInfoRow(
          icon: "assets/icons/head-size.png",
          label: "Head size:",
          child: TextFormField(
            controller: headSizeController,
            decoration: const InputDecoration(
              hintText: 'Enter a head size',
              border: InputBorder.none,
            ),
            onTap: () => onMeasurementTap(context, headSizeController, false),
          ),
        ),
      ],
    );
  }

  Widget _buildInfoRow({
    required String icon,
    required String label,
    required Widget child,
  }) {
    return Row(
      children: [
        Image(
          width: 32,
          height: 32,
          image: AssetImage(icon),
        ),
        const SizedBox(width: 20),
        Text(label),
        const Spacer(),
        SizedBox(width: 200, child: child),
      ],
    );
  }

  Widget _buildSaveButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(50),
      ),
      onPressed: onSave,
      child: const Text('Add a child'),
    );
  }
}