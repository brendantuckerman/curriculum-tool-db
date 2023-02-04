# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).


## Start Seeds ##

##! User Seeds ##

    User.destroy_all
    puts "####### Creating Users ########"

    u1 = User.create!(
        name: "admin",
        email: "admin@ctool.com",
        password_digest: "chicken",
        admin: true

    )

    puts "I have created #{User.count} users."
    puts "The names of the users I have created are: #{User.pluck(:name).join(', ')}."

##! Year Seeds ##

    puts "\n####### Creating Year Levels ########"
    Year.destroy_all

    y0 = Year.create!(
        label: "Foundation",
        year: 0,
        is_band:  false
    )

    y1 = Year.create!(
        label: "Year 1",
        year: 1,
        is_band:  false
    )

    y2 = Year.create!(
        label: "Year 2",
        year: 2,
        is_band:  false
    )
    y3 = Year.create!(
        label: "Year 3",
        year: 3,
        is_band:  false
    )
    y4 = Year.create!(
        label: "Year 4",
        year: 4,
        is_band:  false
    )
    y5 = Year.create!(
        label: "Year 5",
        year: 5,
        is_band:  false
    )
    y6 = Year.create!(
        label: "Year 6",
        year: 6,
        is_band:  false
    )
    y7 = Year.create!(
        label: "Year 7",
        year: 7,
        is_band:  false
    )
    y8 = Year.create!(
        label: "Year 8",
        year: 8,
        is_band:  false
    )
    y9 = Year.create!(
        label: "Year 9",
        year: 9,
        is_band:  false
    )
    y10 = Year.create!(
        label: "Year 10",
        year: 10,
        is_band:  false
    )
    y11 = Year.create!(
        label: "Senior 1",
        year: 11,
        is_band:  false
    )
    y12 = Year.create!(
        label: "Senior 2",
        year: 12,
        is_band:  false
    )
    y13 = Year.create!(
        label: "Years 7 and 8",
        band_start: 7,
        band_end: 8,
        is_band:  true
    )
    y14 = Year.create!(
        label: "Years 9 and 10",
        band_start: 9,
        band_end: 10,
        is_band: true
    )

    puts "I have created #{Year.count} year levels."
    puts "The names of the year levels I have created are: #{Year.pluck(:label).join(', ')}.\n"

##! Learning Areas Seeds ###

    puts "\n#### Creating Learning Areas ####"

    LearningArea.destroy_all

    l_a1 = LearningArea.create!(
        name: "English"
        
    )
    l_a2 = LearningArea.create!(
        name: "Mathematics"
        
    )
    l_a3 = LearningArea.create!(
        name: "Science"
        
    )
    l_a4 = LearningArea.create!(
        name: "Humanities and Social Sciences"
        
    )
    l_a5 = LearningArea.create!(
        name: "The Arts"
        
    )
    l_a6 = LearningArea.create!(
        name: "Health and Physical Education"
        
    )
    l_a7 = LearningArea.create!(
        name: "Languages"
        
    )
    l_a8 = LearningArea.create!(
        name: "Technologies"
        
    )

    puts "I have created #{LearningArea.count} Learning Areas."
    puts "The names of the Learning Areas I have created are: #{LearningArea.pluck(:name).join(', ')}.\n"

##! Subjects Seeds

    puts "\n#### Creating Subjects ####"

    Subject.destroy_all

    s1 = Subject.create!(
        name: "History"
        
    )
    s2 = Subject.create!(
        name: "Geography"
        
    )
    s3 = Subject.create!(
        name: "Economics and Business"
        
    )
    s4 = Subject.create!(
        name: "Civics and Citizenship"
        
    )
    s5 = Subject.create!(
        name: "Design & Technologies"
        
    )
    s6 = Subject.create!(
        name: "Digital Technologies"
        
    )

    puts "I have created #{Subject.count} Subjects."
    puts "The names of the Subjects I have created are: #{Subject.pluck(:name).join(', ')}.\n"


##! GeneralCapabilities (Capabilities) Seeds

    Capability.destroy_all

    puts "\n#### Creating General Capabilities####"

    gc1 = Capability.create!(
        name: "Literacy"
    )
    gc2 = Capability.create!(
        name: "Numeracy"
    )
    gc3 = Capability.create!(
        name: "ICT Capability"
    )
    gc4 = Capability.create!(
        name: "Critical and Creative Thinking"
    )
    gc5 = Capability.create!(
        name: "Personal and Social Capability"
    )
    gc6 = Capability.create!(
        name: "Intercultural Understanding"
    )
    gc7 = Capability.create!(
        name: "Ethical Understanding"
    )

    puts "I have created #{Capability.count} General Capabilities."
    puts "The General Capabilities  I have created are: #{Capability.pluck(:name).join(', ')}."


##! Year Descriptions Seeds



    YearDescription.destroy_all

    puts "\n#### Creating Year Descriptions####"

    d1 = YearDescription.create!(
        description: "The English curriculum is built around the three interrelated strands of language, literature and literacy. Teaching and learning programs should balance and integrate all three strands. Together, the strands focus on developing students’ knowledge, understanding and skills in listening, reading, viewing, speaking, writing and creating. Learning in English builds on concepts, skills and processes developed in earlier years, and teachers will revisit and strengthen these as needed.

        In Years 7 and 8, students communicate with peers, teachers, individuals, groups and community members in a range of face-to-face and online/virtual environments. They experience learning in familiar and unfamiliar contexts that relate to the school curriculum, local community, regional and global contexts.
        
        Students engage with a variety of texts for enjoyment. They listen to, read, view, interpret, evaluate and perform a range of spoken, written and multimodal texts in which the primary purpose is aesthetic, as well as texts designed to inform and persuade. These include various types of media texts including newspapers, magazines and digital texts, early adolescent novels, non-fiction, poetry and dramatic performances. Students develop their understanding of how texts, including media texts, are influenced by context, purpose and audience.
        
        The range of literary texts for Foundation to Year 10 comprises Australian literature, including the oral narrative traditions of Aboriginal and Torres Strait Islander Peoples, as well as the contemporary literature of these two cultural groups, and classic and contemporary world literature, including texts from and about Asia.
        
        Literary texts that support and extend students in Years 7 and 8 as independent readers are drawn from a range of realistic, fantasy, speculative fiction and historical genres and involve some challenging and unpredictable plot sequences and a range of non-stereotypical characters. These texts explore themes of interpersonal relationships and ethical dilemmas within real-world and fictional settings and represent a variety of perspectives. Informative texts present technical and content information from various sources about specialised topics. Text structures are more complex including chapters, headings and subheadings, tables of contents, indexes and glossaries. Language features include successive complex sentences with embedded clauses, unfamiliar technical vocabulary, figurative and rhetorical language, and information supported by various types of graphics.
        
        Students create a range of imaginative, informative and persuasive types of texts, for example narratives, procedures, performances, reports and discussions, and are beginning to create literary analyses and transformations of texts."
    )

    puts "I have created #{YearDescription.count} Year  Descriptions.\n"


##! Tasks Seeds


Task.destroy_all

    puts "\n### Creating Task Seeds ###"

    t1 = Task.create!(
        name: "Essay Task 1",
        description: "Text response essay on 'Romeo and Juliet'",
        weighting: 33
    )


    puts "I have created #{Task.count} tasks."
    puts "The task(s)  I have created are: #{Task.pluck(:name).join(', ')}."

##! Strands Seeds

    Strand.destroy_all


    puts "\n### Creating Strands Seeds ###"

    st1 = Strand.create!(
        name: "Language"
    )
    st2 = Strand.create!(
        name: "Literature"
    )
    st3 = Strand.create!(
        name: "Literacy"
    )

    puts "I have created #{Strand.count} strands."
    puts "The strand(s)  I have created are: #{Strand.pluck(:name).join(', ')}."


##! Substrand Seeds

    Substrand.destroy_all

    puts "\n### Creating Substrands Seeds ###"

    ss1 = Substrand.create!(
        name: "Language variation and change"
        #Language
    )
    ss2 = Substrand.create!(
        name: "Literature and Context"
        #Literature
    )
    ss3 = Substrand.create!(
        name: "Texts in Context"
        #Literacy
    )

    puts "I have created #{Substrand.count} substrands."
    puts "The substrands(s)  I have created are: #{Substrand.pluck(:name).join(', ')}."

##! Thread Seeds 

    Subthread.destroy_all

    puts "\n### Creating (sub)Thread Seeds ###"

    th1 = Subthread.create!(
        name: "Language variation and change"
        #Language variation and change (has same name)
    )
    th2 = Subthread.create!(
        name: "How texts reflect the context of culture and situation in which they are created"
        #Literature and Context
    )
    th3 = Subthread.create!(
        name: "Texts and the contexts in which they are used"
        #Texts in context
    )

    puts "I have created #{Subthread.count} (sub)threads."
    puts "The subthreads(s)  I have created are: #{Subthread.pluck(:name).join(', ')}."


##! Cross-curriculum Priorities Seeds
    Priority.destroy_all

    puts "\n#### Creating (Cross-curriculum) Priority Seeds ###"

    p1 = Priority.create!(
        title: "Sustainability"
    )
    p2 = Priority.create!(
        title: "Asia and Australia's engagement with Asia"
    )
    p3 = Priority.create!(
        title: "Aboriginal and Torres Strait Islander Histories and Cultures"
    )

    puts "I have created #{Priority.count} CC Priorities."
    puts "The Priorities  I have created are: #{Priority.pluck(:title).join(', ')}.\n"


##! Content Descriptors Seeds

    ContentDescriptor.destroy_all

    puts "\n### Creating Content Descriptors ###"

    cd1 = ContentDescriptor.create!(
        description: "Understand that Standard Australian English is a living language within which the creation and loss of words and the evolution of usage is ongoing.",
        code: "ACELA1550",
        elaborations: "Identifying some of the changes in the grammar of English over time, for example from ‘thee’ and ‘thou’ to ‘you’"
    )

    puts "I have created #{ContentDescriptor.count} Content Descriptors."
    puts "The Content Descriptors  I have created are: #{ContentDescriptor.pluck(:code).join(', ')}.\n"




##! ClassGroup Seeds

    ClassGroup.destroy_all

    puts "\n### Creating ClassGroup seeds"

    cg1 = ClassGroup.create!(
        name: "10 English 1",
        class_code: "10ENG012",
        description: "Year 10 Core English"
    )

    puts "I have finished creating #{ClassGroup.count} ClassGroups."
    puts "The ClassGroups I have created are #{ClassGroup.pluck(:name).join(", ")}.\n"


##! Achievement Standards 

    AchievementStandard.destroy_all

    puts "\n ### Creating Seeds for Achievement Standards ### "

    as1 = AchievementStandard.create!(
        description: "
        Receptive modes (listening, reading and viewing)
        
        By the end of Year 9, students analyse the ways that text structures can be manipulated for effect. They analyse and explain how images, vocabulary choices and language features distinguish the work of individual authors.
        
        They evaluate and integrate ideas and information from texts to form their own interpretations. They select evidence from texts to analyse and explain how language choices and conventions are used to influence an audience. They listen for ways texts position an audience.
        Productive modes (speaking, writing and creating)
        
        Students understand how to use a variety of language features to create different levels of meaning. They understand how interpretations can vary by comparing their responses to texts to the responses of others. In creating texts, students demonstrate how manipulating language features and images can create innovative texts.
        
        Students create texts that respond to issues, interpreting and integrating ideas from other texts. They make presentations and contribute actively to class and group discussions, comparing and evaluating responses to ideas and issues. They edit for effect, selecting vocabulary and grammar that contribute to the precision and persuasiveness of texts and using accurate spelling and punctuation.
        "
    )
    puts "I have finished creating #{AchievementStandard.count} ClassGroups."
    puts "The ClassGroups I have created are #{AchievementStandard.pluck(:description).join(", ")}.\n"


##! Mode Seeds ##

    Mode.destroy_all

    puts "\n### Creating Mode Seeds ###"

    m1 = Mode.create!(
        name: "Reading and Viewing",
        notes: "Receptive Mode"
    
    )
    
    m2 = Mode.create!(
        name: "Writing and Creating",
        notes: "Productive Mode"
    
    )

    puts "I have finished creating #{Mode.count} Modes."
    puts "The Modes I have created are #{Mode.pluck(:name).join(", ")}.\n"



    ##TODO:  Associations

    ##puts "\n###### Creating Associations ##### "