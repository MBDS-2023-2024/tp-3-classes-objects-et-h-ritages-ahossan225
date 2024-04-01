// Partie 2: Protocole

// 1. Création du protocole Shape
protocol Shape {
    func area() -> Double
    func perimeter() -> Double
}

// 2. Modification de la classe Rectangle pour implémenter le protocole Shape
class Rectangle: Shape {
    var longueur: Double
    var largeur: Double
    
    init(longueur: Double, largeur: Double) {
        self.longueur = longueur
        self.largeur = largeur
    }
    
    func perimeter() -> Double {
        return 2 * (longueur + largeur)
    }
    
    func area() -> Double {
        return longueur * largeur
    }
}

// 3. Création des classes Triangle et Circle implémentant le protocole Shape
class Triangle: Shape {
    var base: Double
    var hauteur: Double
    
    init(base: Double, hauteur: Double) {
        self.base = base
        self.hauteur = hauteur
    }
    
    func perimeter() -> Double {
        // Pour le triangle, on suppose que les côtés sont égaux
        return 3 * base
    }
    
    func area() -> Double {
        return (base * hauteur) / 2
    }
}

class Circle: Shape {
    var rayon: Double
    
    init(rayon: Double) {
        self.rayon = rayon
    }
    
    func perimeter() -> Double {
        return 2 * Double.pi * rayon
    }
    
    func area() -> Double {
        return Double.pi * rayon * rayon
    }
}

// 4. Création d'une liste contenant différents objets conformes au protocole Shape
let rectangle1 = Rectangle(longueur: 5, largeur: 3)
let rectangle2 = Rectangle(longueur: 4, largeur: 6)
let triangle1 = Triangle(base: 4, hauteur: 3)
let triangle2 = Triangle(base: 6, hauteur: 5)
let circle1 = Circle(rayon: 2)
let circle2 = Circle(rayon: 3)
let square = Rectangle(longueur: 5, largeur: 5) // Carré est un rectangle avec longueur = largeur

var listeShapes: [Shape] = [rectangle1, rectangle2, triangle1, triangle2, circle1, circle2, square]

// 5. Parcourir la liste et afficher les informations pour chaque objet
for shape in listeShapes {
    if let rectangle = shape as? Rectangle {
        print("Je suis un rectangle, ma longueur est \(rectangle.longueur), ma largeur est \(rectangle.largeur), ma surface est \(rectangle.area()) et mon périmètre est \(rectangle.perimeter())")
    } else if let triangle = shape as? Triangle {
        print("Je suis un triangle, ma base est \(triangle.base), ma hauteur est \(triangle.hauteur), ma surface est \(triangle.area()) et mon périmètre est \(triangle.perimeter())")
    } else if let circle = shape as? Circle {
        print("Je suis un cercle, mon rayon est \(circle.rayon), ma surface est \(circle.area()) et mon périmètre est \(circle.perimeter())")
    }
}
