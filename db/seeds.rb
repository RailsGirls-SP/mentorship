# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# db/seeds.rb

mentors_data = [
  {
    name: "Ana Souza",
    current_title: "Data Scientist",
    current_company: "Nubank",
    email: "ana.souza@example.com",
    linkedin_url: "https://www.linkedin.com/in/anasouza",
    bio: "Atua com ciência de dados há mais de 6 anos, apaixonada por educação e mentoria.",
    mentorship_topics: "Carreira em Dados, Machine Learning, Python"
  },
  {
    name: "Carlos Lima",
    current_title: "Senior Software Engineer",
    current_company: "Stone",
    email: "carlos.lima@example.com",
    linkedin_url: "https://www.linkedin.com/in/carloslima",
    bio: "Especialista em backend, com foco em sistemas distribuídos e performance.",
    mentorship_topics: "Backend, Java, Arquitetura de Software"
  },
  {
    name: "Marina Ferreira",
    current_title: "Product Manager",
    current_company: "Loft",
    email: "marina.ferreira@example.com",
    linkedin_url: "https://www.linkedin.com/in/marinaferreira",
    bio: "Transição de QA para produto, hoje lidera squads focados em experiência do usuário.",
    mentorship_topics: "Gestão de Produto, UX, Transição de Carreira"
  },
  {
    name: "João Pedro Almeida",
    current_title: "Cloud Engineer",
    current_company: "AWS",
    email: "joao.almeida@example.com",
    linkedin_url: "https://www.linkedin.com/in/joaopedroalmeida",
    bio: "Certificado AWS, ajuda devs a entrarem no mundo de nuvem.",
    mentorship_topics: "Cloud, DevOps, Certificações AWS"
  },
  {
    name: "Beatriz Ramos",
    current_title: "Tech Lead",
    current_company: "XP Inc",
    email: "beatriz.ramos@example.com",
    linkedin_url: "https://www.linkedin.com/in/beatrizramos",
    bio: "Apaixonada por liderança e desenvolvimento de times de alta performance.",
    mentorship_topics: "Liderança, Gestão de Times, Engenharia de Software"
  },
  {
    name: "Lucas Oliveira",
    current_title: "AI Researcher",
    current_company: "OpenAI",
    email: "lucas.oliveira@example.com",
    linkedin_url: "https://www.linkedin.com/in/lucasoliveira",
    bio: "Atua com pesquisa em IA, com foco em NLP e modelos de linguagem.",
    mentorship_topics: "Inteligência Artificial, NLP, Pesquisa Acadêmica"
  },
  {
    name: "Juliana Mendes",
    current_title: "Data Analyst",
    current_company: "iFood",
    email: "juliana.mendes@example.com",
    linkedin_url: "https://www.linkedin.com/in/julianamendes",
    bio: "Especialista em visualização de dados e métricas de produto.",
    mentorship_topics: "Análise de Dados, Tableau, SQL"
  },
  {
    name: "Fernando Rocha",
    current_title: "Cybersecurity Specialist",
    current_company: "Banco do Brasil",
    email: "fernando.rocha@example.com",
    linkedin_url: "https://www.linkedin.com/in/fernandorocha",
    bio: "Trabalha com segurança da informação há mais de 10 anos.",
    mentorship_topics: "Segurança da Informação, Carreira Pública, LGPD"
  },
  {
    name: "Renata Alves",
    current_title: "UX Designer",
    current_company: "Globo",
    email: "renata.alves@example.com",
    linkedin_url: "https://www.linkedin.com/in/renataalves",
    bio: "UX strategist com foco em acessibilidade digital.",
    mentorship_topics: "UX Design, Acessibilidade, Figma"
  },
  {
    name: "Thiago Martins",
    current_title: "Full-stack Developer",
    current_company: "QuintoAndar",
    email: "thiago.martins@example.com",
    linkedin_url: "https://www.linkedin.com/in/thiagomartins",
    bio: "Trabalha com React e Node.js, mentor de bootcamps.",
    mentorship_topics: "Full-stack, React, Node.js"
  }
]

mentors_data.each do |mentor_attrs|
  Mentor.create!(mentor_attrs)
end
