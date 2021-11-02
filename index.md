@def title = "Academic template"

<!-- -----------------
     BIOGRAPHY SECTION
     ----------------- -->

\begin{section}{name="about"}

<!-- LEFT COLUMN -->
@@col-12,col-lg-4,profile

\img{"/assets/img/person.jpg", class="avatar avatar-circle", alt="Nelson Bighetti"}
\portrait{
  name="Nelson Bighetti",
  job="Professor of Artificial Intelligence",
  link="https://www.stanford.edu/",
  linkname="Stanford University",
  twitter="https://twitter.com/GeorgeCushen",
  gscholar="https://scholar.google.co.uk/citations?user=sIwtMXoAAAAJ",
  github="https://github.com/gcushen",
  linkedin="https://www.linkedin.com/"
}
@@ <!-- end of column -->

<!-- RIGHT COLUMN -->
@@col-12,col-lg-8

\begin{biography}{resume="/assets/demo_resume.pdf"}
  Nelson Bighetti is a professor of artificial intelligence at the Stanford AI Lab. His research interests include distributed robotics, mobile computing and programmable matter. He leads the Robotic Neurobiology group, which develops
  self-reconfiguring robots, systems of self-organizing robots, and mobile sensor networks.

  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed neque elit, tristique placerat feugiat ac, facilisis vitae arcu. Proin eget egestas augue. Praesent ut sem nec arcu pellentesque aliquet. Duis dapibus diam vel metus tempus vulputate.
\end{biography}

\shortcv{
  interests=["Artificial Intelligence", "Computational Linguistics", "Information Retrieval"],
  education=[
    ("PhD in Artificial Intelligence, 2012", "Stanford University"),
    ("MEng in Artificial Intelligence, 2009", "Massachusetts Institute of Technology"),
    ("BSc in Artificial Intelligence, 2008", "Massachusetts Institute of Technology")]
}

@@ <!-- end of column -->
\end{section}

<!-- --------------
     SKILLS SECTION
     -------------- -->

\begin{section}{name="skills", class="wg-featurette", rowclass="featurette"}

\sectionheading{"Skills", class="col-md-12"}

\skill{"Julia", "90%", img="/assets/img/julia-dots.svg"}
\skill{"Machine Learning", "100%", fa="chart-line"}
\skill{"Photography", "10%", fa="camera-retro"}

\end{section}


<!-- ------------------
     EXPERIENCE SECTION
     ------------------ -->

\begin{section}{name="experience"}

\sectionheading{"Experience", class="col-12 col-lg-4"}

@@col-12,col-lg-8

\experience{
  title="CEO",
  company="GenCoin",
  descr="""
    Responsibilities include:
    * Analysing
    * Modelling
    * Deploying
    """,
  from="Jan 2017",
  to="Present",
  location="California",
  active=true
  }
\experience{
  title="Professor",
  company="University X",
  from="Jan 2016",
  to="Dec 2016",
  last=true,
  location="California",
  descr="Taught electronic engineering and researched semiconductor physics."
  }

@@

\end{section}

<!-- -----------------------
     ACCOMPLISHMENTS SECTION
     ----------------------- -->

\begin{section}{name="accomplishments"}

\sectionheading{"Accomplish­ments", class="col-12 col-lg-4"}

@@col-12,col-lg-8

\certificate{
  title="Neural Networks and Deep Learning",
  meta="Coursera",
  metalink="https://www.coursera.org",
  date="Oct 2018",
  certlink="https://www.coursera.org"
  }
\certificate{
  title="Blockchain Fundamentals",
  descr="Formulated informed **blockchain** models, hypotheses, and use cases.",
  meta="Coursera",
  metalink="https://www.edx.org",
  date="Mar 2018",
  certlink="https://www.edx.org"
  }
\certificate{
  title="Object-Oriented Programming in R: S3 and R6 Course",
  meta="DataCamp",
  metalink="https://www.datacamp.com",
  date="Jul 2017 – Dec 2017",
  certlink="https://www.datacamp.com"
}

@@

\end{section}

<!-- --------------------
     RECENT POSTS SECTION
     -------------------- -->

\begin{section}{name="posts", class="wg-pages"}

\sectionheading{"Recent Posts", class="col-12 col-lg-4"}

@@col-12,col-lg-8

{{recentposts 3}}

@@

\end{section}

<!-- -----------------
     PORTFOLIO SECTION XXX
     ----------------- -->

<!-- -------------
     TALKS SECTION XXX
     ------------- -->

<!-- --------------------
     FEATURED PUB SECTION XXX
     -------------------- -->

<!-- ---------------------------
     RECENT PUBLICATIONS SECTION XXX
     --------------------------- -->
