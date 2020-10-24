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

<!-- -------------
     POSTS SECTION
     ------------- -->

\begin{section}{name="posts", class="wg-pages"}

\sectionheading{"Recent Posts", class="col-12 col-lg-4"}

@@col-12,col-lg-8

{{recentposts 3}}

@@

\end{section}

~~~
   <!-- SECTION -->

   <section id=projects class="home-section wg-portfolio">
     <div class=container>
       <div class=row>
         <div class="col-12 col-lg-4 section-heading">
           <h1>Projects</h1>
         </div>
         <div class="col-12 col-lg-8"><span class="d-none default-project-filter">*</span>
           <div class=project-toolbar>
             <div class=project-filters>
               <div class=btn-toolbar>
                 <div class="btn-group flex-wrap"><a href="#" data-filter=* class="btn btn-primary btn-lg active">All</a>
                   <a href="#" data-filter=.js-id-Deep-Learning class="btn btn-primary btn-lg">Deep Learning</a>
                   <a href="#" data-filter=.js-id-Demo class="btn btn-primary btn-lg">Other</a></div>
                 </div>
               </div>
             </div>
             <div class="isotope projects-container js-layout-masonry">
               <div class="project-card project-item isotope-item js-id-Demo">
                 <div class=card><a href="http://example.org" target=_blank rel=noopener class="card-image hover-overlay"><img src="/assets/img/ext_project.jpg" alt class=img-responsive></a>
                   <div
                   class=card-text>
                   <h4><a href="http://example.org" target=_blank rel=noopener>External Project</a></h4>
                   <div class=article-style>
                     <p>An example of linking directly to an external project website using <code>external_link</code>.</p>
                   </div>
                 </div>
               </div>
             </div>
             <div class="project-card project-item isotope-item js-id-Deep-Learning">
               <div class=card><a href="/project/internal-project/" class="card-image hover-overlay"><img src="/assets/img/int_project.jpg" alt class=img-responsive></a>
                 <div class=card-text>
                   <h4><a href="/project/internal-project/">Internal Project</a>
                   </h4>
                   <div class=article-style>
                     <p>An example of using the in-built project page.</p>
                   </div>
                 </div>
               </div>
             </div>
           </div>
         </div>
       </div>
     </div>
   </section>

 <!--  SECTION  -->

 <section id=talks class="home-section wg-pages">
   <div class=container>
     <div class=row>
       <div class="col-12 col-lg-4 section-heading">
         <h1>Recent & Upcoming Talks</h1>
       </div>
       <div class="col-12 col-lg-8">
         <div class="media stream-item">
           <div class=media-body>
             <h3 class="article-title mb-0 mt-0"><a href="/talk/example/">Example Talk</a>
             </h3>
             <a href="/talk/example/" class=summary-link>
               <div class=article-style>An example talk using Academic&rsquo;s Markdown slides feature.</div>
             </a>
             <div class="stream-meta article-metadata">
               <div><span>Jun 1, 2030 1:00 PM &mdash; 3:00 PM</span>
                 <span class=middot-divider></span><span>Source Themes HQ</span></div>
               </div>
               <div class=btn-links><a class="btn btn-outline-primary my-1 mr-1 btn-sm" href="/project/internal-project/">Project</a>
                 <a class="btn btn-outline-primary my-1 mr-1 btn-sm" href="/slides/example/" target=_blank>Slides</a>
                 <a class="btn btn-outline-primary my-1 mr-1 btn-sm" href="https://twitter.com/georgecushen" target=_blank rel=noopener><i class="fab fa-twitter mr-1"></i>Follow</a></div>
               </div>
               <div class=ml-3><a href="/talk/example/"><img src="/assets/img/example_talk.jpg" alt="Example Talk"></a>
               </div>
             </div>
           </div>
         </div>
       </div>
     </section>


 <!-- SECTION -->

 <section id=featured class="home-section wg-featured">
   <div class=container>
     <div class=row>
       <div class="col-12 col-lg-4 section-heading">
         <h1>Featured Publications</h1>
       </div>
       <div class="col-12 col-lg-8">
         <div class=card-simple>
           <div class=article-metadata>
             <div><span><a href="/author/nelson-bighetti/">Nelson Bighetti</a></span>, <span>Robert Ford</span></div><span class=article-date>July 2013</span>
             <span class=middot-divider></span><span class=pub-publication>In <em>STC</em></span></div><a href="/publication/conference-paper/"><img src="/assets/img/paper_hero.jpg" class=article-banner alt="An example conference paper"></a>
             <h3 class="article-title mb-1 mt-3"><a href="/publication/conference-paper/">An example conference paper</a>
             </h3>
             <a href="/publication/conference-paper/" class=summary-link>
               <div class=article-style>
                 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis posuere tellus ac convallis placerat. Proin tincidunt magna sed ex sollicitudin condimentum.</p>
               </div>
             </a>
             <div class=btn-links>
               <a class="btn btn-outline-primary my-1 mr-1 btn-sm" href="https://eprints.soton.ac.uk/352095/1/Cushen-IMV2013.pdf" target=_blank rel=noopener>PDF</a>
               <a class="btn btn-outline-primary my-1 mr-1 btn-sm" href="https://github.com/zalandoresearch/fashion-mnist" target=_blank rel=noopener>Code</a>
               </div>
             </div>
           </div>
         </div>
       </section>

 <!--  SECTION  -->

 <section id=publications class="home-section wg-pages">
   <div class=container>
     <div class=row>
       <div class="col-12 col-lg-4 section-heading">
         <h1>Recent Publications</h1>
       </div>
       <div class="col-12 col-lg-8">
         <!-- <div class="alert alert-note">
           <div>Quickly discover relevant content by <a href="https://academic-demo.netlify.app/publication/">filtering publications</a>.</div>
         </div> -->
         <div class="media stream-item">
           <div class=media-body>
             <h3 class="article-title mb-0 mt-0"><a href="/publication/preprint/">An example preprint / working paper</a>
             </h3>
             <a href="/publication/preprint/" class=summary-link>
               <div class=article-style>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis posuere tellus ac convallis placerat. Proin tincidunt magna sed ex sollicitudin condimentum.</div>
             </a>
             <div class="stream-meta article-metadata">
               <div><span><a href="/author/nelson-bighetti/">Nelson Bighetti</a></span></div>
             </div>
             <div class=btn-links>
              <a class="btn btn-outline-primary my-1 mr-1 btn-sm" href="http://arxiv.org/pdf/1512.04133v1" target=_blank rel=noopener>PDF</a>
              <a class="btn btn-outline-primary my-1 mr-1 btn-sm" href="http://example.org" target=_blank rel=noopener>Custom Link</a>
            </div>
             </div>
             <div class=ml-3>
               <a href="/publication/preprint/"><img src="/assets/img/paper1.jpg" alt="An example preprint / working paper"></a>
             </div>
           </div>
           <div class="media stream-item">
             <div class=media-body>
               <h3 class="article-title mb-0 mt-0"><a href="/publication/journal-article/">An example journal article</a>
               </h3>
               <a href="/publication/journal-article/" class=summary-link>
                 <div class=article-style>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis posuere tellus ac convallis placerat. Proin tincidunt magna sed ex sollicitudin condimentum.</div>
               </a>
               <div class="stream-meta article-metadata">
                 <div><span><a href="/author/nelson-bighetti/">Nelson Bighetti</a></span><span title="Equal contribution" class=author-notes>(?)</span>, <span>Robert Ford</span><span title="Equal contribution" class=author-notes>(?)</span></div>
               </div>
               <div class=btn-links><a class="btn btn-outline-primary my-1 mr-1 btn-sm" href="http://arxiv.org/pdf/1512.04133v1" target=_blank rel=noopener>PDF</a>
                 <button type=button class="btn btn-outline-primary my-1 mr-1 btn-sm js-cite-modal" data-filename=/publication/journal-article/cite.bib>
                   Cite</button>
                   <a class="btn btn-outline-primary my-1 mr-1 btn-sm" href="/slides/example/" target=_blank>Slides</a></div>
                 </div>
                 <div class=ml-3><a href="/publication/journal-article/"><img src="/assets/img/paper2.jpg" alt="An example journal article"></a>
                 </div>
               </div>
               <div class="media stream-item">
                 <div class=media-body>
                   <h3 class="article-title mb-0 mt-0"><a href="/publication/conference-paper/">An example conference paper</a>
                   </h3>
                   <a href="/publication/conference-paper/" class=summary-link>
                     <div class=article-style>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis posuere tellus ac convallis placerat. Proin tincidunt magna sed ex sollicitudin condimentum.</div>
                   </a>
                   <div class="stream-meta article-metadata">
                     <div><span><a href="/author/nelson-bighetti/">Nelson Bighetti</a></span>, <span>Robert Ford</span></div>
                   </div>
                   <div class=btn-links><a class="btn btn-outline-primary my-1 mr-1 btn-sm" href="http://eprints.soton.ac.uk/352095/1/Cushen-IMV2013.pdf" target=_blank rel=noopener>PDF</a>
                      <a class="btn btn-outline-primary my-1 mr-1 btn-sm" href="https://github.com/zalandoresearch/fashion-mnist" target=_blank rel=noopener>Code</a>
                       <a class="btn btn-outline-primary my-1 mr-1 btn-sm" href="/#" target=_blank rel=noopener>Dataset</a>
                       <a class="btn btn-outline-primary my-1 mr-1 btn-sm" href="http://example.org" target=_blank rel=noopener>Custom Link</a></div>
                     </div>
                     <div class=ml-3><a href="/publication/conference-paper/"><img src="/assets/img/paper3.jpg" alt="An example conference paper"></a>
                     </div>
                   </div>
                 </div>
               </div>
             </div>
           </section>

 ~~~
