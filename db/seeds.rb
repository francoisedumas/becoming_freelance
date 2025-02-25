# db/seeds.rb

# Create the lesson
lesson = Lesson.create(
  title: "Identifier des Canaux de Prospection",
  description: "Stratégies pour trouver des clients potentiels"
)

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
    description: "Lister 10 entreprises cibles",
    completed: false
  },
  {
    lesson: lesson,
    description: "Lister 5 contacts dans votre entourage",
    completed: false
  },
  {
    lesson: lesson,
    description: "Rejoindre 3 communautés en ligne",
    completed: false
  }
])

# Create resources for the lesson
Resource.create([
  {
    lesson: lesson,
    resource_type: "link",
    url: "http://www.jobgether.com/",
    description: "Site pour trouver des opportunités de freelancing"
  },
  {
    lesson: lesson,
    resource_type: "link",
    url: "https://www.welcometothejungle.com/fr",
    description: "Plateforme pour découvrir des entreprises et des offres d'emploi"
  }
])

puts "Seed data for 'Identifier des Canaux de Prospection' lesson created successfully!"
