// Partie 1: Création de classes et d'objets

// 1. Création de la classe Rectangle
class Rectangle {
    // Attributs
    var longueur: Double
    var largeur: Double
    
    // Attribut pour compter le nombre de rectangles créés
    static var nombreRectangles = 0
    
    // Initialisateur
    init(longueur: Double, largeur: Double) {
        self.longueur = longueur
        self.largeur = largeur
        Rectangle.nombreRectangles += 1
    }
    
    // Méthode pour calculer le périmètre
    func perimeter() -> Double {
        return 2 * (longueur + largeur)
    }
    
    // Méthode pour calculer l'aire
    func area() -> Double {
        return longueur * largeur
    }
}

// 2. Création de trois rectangles
let rectangle1 = Rectangle(longueur: 5, largeur: 3)
let rectangle2 = Rectangle(longueur: 4, largeur: 6)
let rectangle3 = Rectangle(longueur: 7, largeur: 2)

// 3. Affichage du nombre de rectangles créés
print("Nombre de rectangles créés : \(Rectangle.nombreRectangles)")

// 4. Création d'une liste contenant les rectangles
var listeRectangles = [rectangle1, rectangle2, rectangle3]

// 5. Ordonner la liste en fonction de l'aire ou du périmètre
listeRectangles.sort {
    $0.area() < $1.area() // Pour trier par surface
    // Ou utiliser $0.perimeter() < $1.perimeter() pour trier par périmètre
}

// 6. Affichage du nombre de rectangles créés
print("Nombre de rectangles créés : \(Rectangle.nombreRectangles)")
