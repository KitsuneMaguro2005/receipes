import 'package:flutter/material.dart';
import 'package:receipes/model/receipe.dart';
import 'package:receipes/model/recipe.dart'; // ตรวจสอบตัวสะกดชื่อไฟล์ model ของคุณด้วยนะครับ

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;
  const RecipeDetail({super.key, required this.recipe});

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  // 1. ย้ายตัวแปรมาไว้ใน State เพื่อให้ค่าไม่ถูก reset เมื่อ build ใหม่ [cite: 93, 102]
  int _sliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe Detail'),
      ),
      body: Column(
        children: [
          Image(image: AssetImage(widget.recipe.imageUrl)),
          const SizedBox(height: 16.0),
          Text(
            widget.recipe.imgLabel,
            style: const TextStyle(color: Colors.green, fontSize: 20),
          ),
          const SizedBox(height: 20.0),
          Text(
            widget.recipe.Detail,
            style: const TextStyle(color: Colors.black, fontSize: 18),
          ),
          const SizedBox(height: 20.0),
          Expanded(
            child: ListView.builder(
              itemCount: widget.recipe.ingredient.length,
              itemBuilder: (BuildContext context, int index) {
                final ingredient = widget.recipe.ingredient[index];
                // 2. นำจำนวนวัตถุดิบมาคูณกับค่าจาก Slider 
                return Text(
                  '${ingredient.quantity * _sliderValue} ${ingredient.unit} ${ingredient.name}',
                  style: const TextStyle(fontSize: 16.0),
                );
              },
            ),
          ),
          // 3. ส่วนประกอบ Slider สำหรับปรับจำนวน servings [cite: 79, 91]
          Slider(
            min: 1,
            max: 10,
            divisions: 10,
            label: '$_sliderValue servings',
            value: _sliderValue.toDouble(),
            onChanged: (newValue) {
              // 4. ใช้ setState เพื่อแจ้งให้ Flutter อัปเดตหน้าจอเมื่อค่าเปลี่ยน [cite: 85, 86, 87]
              setState(() {
                _sliderValue = newValue.round();
              });
            },
          ),
        ],
      ),
    );
  }
}