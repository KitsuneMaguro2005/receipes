 class Recipe {
 String imgLabel; // Label for the image
 String imageUrl; // URL of the image
 String Detail;

 Recipe(this.imageUrl, this.imgLabel,this.Detail);

  static List<Recipe> samples = [
    Recipe('assets/images/GreenThaiFishCurry.webp', 'GreenThaiFishCurry','aroi mak mak'),
    Recipe('assets/images/padthai.webp','padthai','thai noodle you must try it'),
    Recipe('assets/images/PumpkinCurry.webp','PumpkinCurry','this one is delicious'),
    Recipe('assets/images/Thai red curry paste.webp','Thai red curry paste','eat with vegetables and sticky rice is good'),
  ];
}