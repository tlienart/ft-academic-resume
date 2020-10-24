using FranklinUtils

# -------------------------- #
# Academic blocks // General #
# -------------------------- #

@env function section(md; title="", name=title, class="", heading=true, rowclass="")
    id = Franklin.refstring(name)
    header = ">"
    if heading
        header = "section-heading> <h1>$title</h1>"
    end
    return html("""
        <section id=\"$id\" class=\"home-section $class\">
          <div class="container">
            <div class="row $rowclass">""") * md * html("""
            </div>
          </div>
        </section>""")
end

@lx function sectionheading(title; class="")
    return html("""
        <div class="$class section-heading"><h1>Skills</h1></div>
        """)
end

# Insert an image with given class, alt, src
@lx img(src; class="", alt="") = html("""<img class="$class" src="$src" alt="$alt">""")

# -------------------------------------- #
# Academic blocks // Landing page blocks #
# -------------------------------------- #

# Portrait block with a few optional fields: name, job title, social buttons
@lx function portrait(; name="", job="", link="", linkname="",
                     twitter="", gscholar="", github="", linkedin="")
    io = IOBuffer()
    write(io, html("<div class=portrait-title>"))
    isempty(name) || write(io, html("<h2>$name</h2>"))
    isempty(job) || write(io, html("<h3>$job</h3>"))
    if !isempty(link)
        if isempty(linkname)
            write(io, html("""<h3><a href="$link" target=_blank rel=noopener><span>$link</span></a></h3>"""))
        else
            write(io, html("""<h3><a href="$link" target=_blank rel=noopener><span>$linkname</span></a></h3>"""))
        end
    end
    if !all(isempty, (twitter, gscholar, github, linkedin))
        write(io, html("<ul class=network-icon aria-hidden=true>"))
        isempty(twitter) || write(io, html("""<li><a href="$twitter" target=_blank rel=noopener><i class="fab fa-twitter big-icon"></i></a></li>"""))
        isempty(gscholar) || write(io, html("""<li><a href="$gscholar" target=_blank rel=noopener><i class="fas fa-graduation-cap big-icon"></i></a></li>"""))
        isempty(github) || write(io, html("""<li><a href="$github" target=_blank rel=noopener><i class="fab fa-github big-icon"></i></a></li>"""))
        isempty(linkedin) || write(io, html("""<li><a href="$linkedin" target=_blank rel=noopener><i class="fab fa-linkedin big-icon"></i></a></li>"""))
        write(io, html("</ul>"))
    end
    write(io, html("</div>"))
    return String(take!(io))
end

# Biography block with optional resume link
@env function biography(md; resume="")
    io = IOBuffer()
    write(io, html("""<h1>Biography</h1>""") * md)
    isempty(resume) || write(io, html("""
        </br><p><i class="fas fa-download pr-1 fa-fw"></i>Download my <a href="$resume" target=_blank>resumé</a>.</p>"""))
    return String(take!(io))
end

# Short CV block with a column for interests and one for education
@lx function shortcv(; interests=nothing, education=nothing)
    io = IOBuffer()
    write(io, html("""<div class=row>"""))
    if !isnothing(interests)
        write(io, html("""<div class=col-md-5><h3>Interests</h3><ul class=ul-interests>"""))
        for i in interests
            write(io, html("""<li>$i</li>"""))
        end
        write(io, html("""</ul></div>"""))
    end
    if !isnothing(education)
        write(io, html("""<div class=col-md-7><h3>Education</h3><ul class="ul-edu fa-ul">"""))
        for (course, school) in education
            write(io, html("""
                <li><i class="fa-li fas fa-graduation-cap"></i>
                  <div class=description>
                    <p class=course>$course</p>
                    <p class=institution>$school</p>
                  </div>
                </li>
                """))
        end
        write(io, html("""</ul></div>"""))
    end
    write(io, html("""</div>""")) # end row
    return String(take!(io))
end

# function lx_skill(c, _)
#
# end

# --------------------------------- #
# Working with Javascript Libraries #
# --------------------------------- #

function env_mermaid(e, _)
    content = Franklin.content(e)
    return "@@mermaid ~~~$content~~~@@"
end
