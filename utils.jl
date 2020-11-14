using FranklinUtils

# ----------------------------------- #
# Academic blocks // General elements #
# ----------------------------------- #

@env function section(md; name="", class="wg-$name",rowclass="")
    id = Franklin.refstring(name)
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
        <div class="$class section-heading"><h1>$title</h1></div>
        """)
end

# Insert an image with given class, alt, src
@lx img(src; class="", alt="") = html("""<img class="$class" src="$src" alt="$alt">""")

# ---------------------------------------- #
# Academic blocks // Landing page elements #
# ---------------------------------------- #

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

# skill featurette
@lx function skill(name, sub=""; img="", fa="",
                   imgstyle="display:inline-block; width:56px;",
                   fastyle="")
    illustration = ""
    if !isempty(img)
        illustration = """<img style="$imgstyle" src="$img">"""
    elseif !isempty(fa)
        illustration = """<i class="fas fa-$fa" style="$fastyle"></i>"""
    end

    return """
        <div class="col-12 col-sm-4">
          <div class=featurette-icon style="text-align:center;">
          """ * illustration * """
          </div>
          <h3>$name</h3>
          $(ifelse(isempty(sub), "", "<p>$sub</p>"))
        </div>""" |> html
end

# experience cards
@lx function experience(; title="", company="", descr="",
                          from="", to="", location="", active=false,
                          first=active)
    fill = ifelse(active, "exp-fill", "")
    # elements for the vertical bar with filled/unfilled pill
    # they are assembled depending on 'first' so that they can connect.
    pill = """
        <div class=m-2><span class="badge badge-pill border $fill">&nbsp;</span></div>"""
    vbar = """
        <div class="row h-50">
          <div class="col border-right">&nbsp;</div>
          <div class=col>&nbsp;</div>
        </div>"""
    vspace = """
        <div class="row h-50">
          <div class=col>&nbsp;</div>
          <div class=col>&nbsp;</div>
        </div>"""

    return html("""
        <div class="row experience">
          <div class="col-auto text-center flex-column d-none d-sm-flex">
            <!--
              Element next to the card (pill) with a full/empty circle
              to give a visual idea of the timeline
            -->
            $(ifelse(first, vspace * pill * vbar, vbar * pill * vspace))
          </div>

          <!--
            Card and text
          -->
          <div class="col py-2">
            <div class=card>
              <div class=card-body>
                <h4 class="card-title exp-title text-muted mt-0 mb-1">$title</h4>
                <h4 class="card-title exp-company text-muted my-0">$company</h4>
                <div class="text-muted exp-meta">$from – $to
                  <span class=middot-divider></span><span>$location</span>
                </div>
                <div class=card-text>""") * descr * html("""
                </div>
              </div>
            </div>
          </div>
        </div>""")
end

@lx function certificate(; title="", meta="", metalink="", date="", descr="",
                           cert="See certificate", certlink="")
    origin = ifelse(isempty(metalink), meta, """
        <a href="$metalink" target=_blank rel=noopener>$meta</a>
        """)
    certificate = ifelse(isempty(certlink), "", """
        <a class=card-link href="$certlink" target=_blank rel=noopener>$cert</a>
        """)
    description = ifelse(isempty(descr), "", """
        <div class=card-text>$(Franklin.fd2html(descr, internal=true))</div>
        """)
    return html("""
        <div class="card experience course">
          <div class=card-body>
            <h4 class="card-title exp-title text-muted my-0">$title</h4>
            <div class="card-subtitle my-0 article-metadata">
              $origin
              <span class=middot-divider></span>
              $date
            </div>
            $description
            $certificate
            </div>
          </div>
        """)
end

# -------------------- #
# List of recent posts #
# -------------------- #

function all_posts()
    # expected file structure here is posts/YYYY/MM/name-of-post.md
    posts = Pair{String,Date}[]
    for (root, _, files) in walkdir(joinpath(Franklin.FOLDER_PATH[], "posts"))
        for file in files
            endswith(file, ".md") || continue
            ppath = joinpath(root, file)
            endswith(ppath, joinpath("posts", "index.md")) && continue
            tmp, fn = splitdir(ppath)
            tmp, mm = splitdir(tmp)
            tmp, yy = splitdir(tmp)
            rpath = joinpath("posts", yy, mm, splitext(fn)[1])
            date = pagevar(rpath, "pubdate")
            isnothing(date) && (date = Date("$yy-$mm-01"))
            push!(posts, rpath => date)
        end
    end
    # sort by chron order, most recent first
    return sort(posts, by=(e->e.second), rev=true)
end

function show_posts(posts; byyear=false)
    isempty(posts) && return ""
    curyear = year(posts[1].second)
    io = IOBuffer()
    byyear && write(io, """
        <div class="col-12 col-lg-4"><h1>$curyear</h1></div>
        <div class="col-12 col-lg-8">
        """)
    for post in posts
        if byyear && year(post.second) < curyear
            curyear = year(post.second)
            write(io, """
                </div>
                <div class="col-12 col-lg-4"><h1>$curyear</h1></div>
                <div class="col-12 col-lg-8">
                """)
        end
        rpath = post.first
        title = pagevar(rpath, "title")
        isnothing(title) && (title = "Untitled")
        summary = pagevar(rpath, "summary")
        isnothing(summary) && (summary = "")
        date = Dates.format(post.second, dateformat"u d, Y")
        imgpath = pagevar(rpath, "img")
        if isnothing(imgpath)
            imgpath = ""
        else
            if imgpath[1] != '/'
                imgpath = "$imgpath"
            end
        end
        write(io, """
            <div class="media stream-item">
              <div class=media-body>
                <h3 class="article-title mb-0 mt-0"><a href="/$rpath">$title</a></h3>
                <a href="/$rpath" class=summary-link>
                  <div class=article-style>$summary</div>
                </a>
                <div class="stream-meta article-metadata">
                  <div class=article-metadata><span class=article-date>Published on $date.</span>
                  </div>
                </div>
              </div>
              <div class=ml-3>
                <a href="/$rpath"><img src="$imgpath" alt="$title"></a>
              </div>
            </div>""")
    end
    return String(take!(io))
end

function hfun_recentposts(params)
    n = parse(Int, params[1])
    allposts = all_posts()
    posts = allposts[1:min(n, length(allposts))]
    return show_posts(posts)
end

function hfun_allposts()
    return show_posts(all_posts(), byyear=true)
end


# --------------------------------- #
# Working with Javascript Libraries #
# --------------------------------- #

function env_mermaid(e, _)
    content = Franklin.content(e)
    return "@@mermaid ~~~$content~~~@@"
end
