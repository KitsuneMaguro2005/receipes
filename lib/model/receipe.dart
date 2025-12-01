 class Recipe {
 String imgLabel; // Label for the image
 String imageUrl; // URL of the image

 Recipe(this.imageUrl, this.imgLabel);

  static List<Recipe> samples = 
  [
   Recipe('assets/images/GreenThaiFishCurry.webp','Green Thai Fish Curry'),
   Recipe('assets/images/padthai.webp','Pad Thai'),
   Recipe('assets/images/PumpkinCurry.webp','pumpkin Curry'),
   Recipe('assets/images/Thai red curry paste.webp','thai red curry paste'),
  ];

 }