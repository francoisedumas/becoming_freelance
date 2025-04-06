# db/seeds.rb

Resource.destroy_all
LearningBlock.destroy_all
UserExercise.destroy_all
Exercise.destroy_all
Lesson.destroy_all
User.destroy_all

p "Creating admin user"

user = User.new(
    email: "jean@bon.fr",
    password: "qwerty",
    password_confirmation: "qwerty",
)
user.save

# Create the lesson
p "Creating lessons"

lessons_data = [
  { title: "Introduction au Freelancing", description: "Qu'est-ce qu'être freelance ?" },
  { title: "Définir son Offre", description: "Clarifier vos services et votre valeur ajoutée" },
  { title: "Identifier des Canaux de Prospection", description: "Stratégies pour trouver des clients potentiels" },
  { title: "Préparer son Profil", description: "Optimiser votre présentation professionnelle" },
  { title: "Créer son Site Web / Portfolio", description: "Mettre en valeur vos réalisations et compétences" },
  { title: "Obtenir des Recommandations", description: "Techniques pour encourager les témoignages positifs" },
  { title: "Contacter et Accrocher les Entreprises", description: "Méthodes efficaces pour attirer l'attention des clients" },
  { title: "Développement Commercial et Veille", description: "Suivre les tendances et adapter son offre" },
  { title: "Développer son Réseau et sa Communauté", description: "Construire des relations professionnelles durables" },
  { title: "Se Lancer Rapidement", description: "L'importance de l'action immédiate" },
  { title: "Utiliser les Plateformes, Chasseurs de Tête et Réseaux Sociaux", description: "Maximiser votre visibilité en ligne" },
  { title: "Optimiser son Profil sur les Plateformes", description: "Conseils pour un profil attractif et professionnel" },
  { title: "Définir ses Tarifs", description: "Établir une grille tarifaire compétitive" },
  { title: "Outils Simples et Efficaces", description: "Logiciels et outils pour améliorer votre productivité" },
  { title: "Démontrer son Expertise", description: "Mettre en avant vos compétences et réalisations" },
  { title: "Actions Continues", description: "Maintenir une dynamique de prospection" },
  { title: "Stratégie pour Réduire la Prospection", description: "Techniques pour fidéliser vos clients" },
  { title: "Cadrage de la Mission", description: "Définir clairement les objectifs et attentes" },
  { title: "Gestion de la Mission", description: "Suivi et ajustements pendant le projet" },
  { title: "Clôturer la Mission", description: "Finaliser le projet et recueillir le feedback" },
  { title: "Créer son Elevator Pitch", description: "Présenter son offre de manière concise et percutante" }
]

lessons_data.each do |data|
  Lesson.create!(title: data[:title], description: data[:description])
end

lesson = Lesson.find_by(title: "Identifier des Canaux de Prospection")

# Create learning blocks for the lesson
LearningBlock.create([
  {
    lesson: lesson,
    title: "Explorer les Communautés en Ligne",
    content: "- Slack / Discord : Rejoindre des communautés de freelances et des groupes liés à votre technologie pour échanger et identifier des opportunités.\n- Welcome to the Jungle, Reddit, Newsletters : Utiliser ces plateformes pour découvrir des offres d'emploi et des projets freelance."
  },
  {
    lesson: lesson,
    title: "Cibler les Petites Entreprises",
    content: "- Lister les startups et agences : Identifier les entreprises utilisant votre technologie, au-delà de votre ville (ex. Nantes, Cholet, Angers).\n- Identifier des projets dormants : Rechercher des entreprises ayant des projets ou produits en sommeil, notamment en analysant les profils de développeurs similaires."
  },
  {
    lesson: lesson,
    title: "Utiliser son Réseau et les Outils de Veille",
    content: "- Réseau personnel : Demander à votre entourage s'ils connaissent des entreprises potentiellement intéressées par vos services.\n- LinkedIn et Google : Être en veille permanente sur LinkedIn et utiliser Google pour trouver des opportunités."
  }
])

# Create exercises for the lesson
Exercise.create([
  {
    lesson: lesson,
    content: "Lister 10 entreprises cibles",
  },
  {
    lesson: lesson,
    content: "Lister 5 contacts dans votre entourage",
  },
  {
    lesson: lesson,
    content: "Rejoindre 3 communautés en ligne",
  }
])

# Create resources for the lesson
Resource.create([
  {
    lesson: lesson,
    resource_type: "link",
    url: "http://www.jobgether.com/",
    content: "Site pour trouver des opportunités de freelancing"
  },
  {
    lesson: lesson,
    resource_type: "link",
    url: "https://www.welcometothejungle.com/fr",
    content: "Plateforme pour découvrir des entreprises et des offres d'emploi"
  }
])

puts "Seed data for 'Identifier des Canaux de Prospection' lesson created successfully!"
