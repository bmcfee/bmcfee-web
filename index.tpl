<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Brian McFee</title>

        <link rel="stylesheet"      href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet"      href="css/base.css">
        <link rel="shortcut icon"   href="favicon.ico">
    </head>

    <body>
        <div class="container-narrow">
            <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="nav navbar-header">
                    <h5 class="navbar-text">Brian McFee</h5>
                    <h6 class="navbar-text">brm2132@columbia.edu</h6>
                </div> 
                <ul class="nav nav-pills navbar-right">
                    <li class="active"><a href="#home">Home</a></li>
                    <li class="divider"></li>
                    <li class="active"><a href="#teaching">Teaching</a></li>
                    <li class="divider"></li>
                    <li class="active"><a href="#pubs">Publications</a></li>
                    <li class="divider"></li>
                    <li class="active"><a href="#resources">Software / data</a></li>
                    <li class="divider"></li>
                    <li class="active"><a href="#hacks">Hacks</a></li>
                </ul>
            </nav>
            <div class="main" id="home">
                <img class="pull-right img-rounded" style="margin-left: 15px;" src="i/bmcfee12.jpg" alt="Luke / Gert / Brian">
                <p>
                    I develop machine learning tools to analyze multimedia data.
                    This includes recommender systems, image and audio analysis, similarity learning, 
                    cross-modal feature integration, and automatic annotation.
                </p>

                <p>
                    As of Fall of 2012, I am a postdoctoral research scholar in the <a
                    href="http://jazz.columbia.edu/">Center for Jazz Studies</a> and <a
                    href="http://labrosa.ee.columbia.edu/">LabROSA</a> at <a
                    href="http://www.columbia.edu/">Columbia University</a>.  
                </p>
                <p>
                    Previously, I was advised by <a
                    href="http://cosmal.ucsd.edu/~gert/">Prof. Gert Lanckriet</a> in the <a
                    href="http://cosmal.ucsd.edu/cal">Computer Audition Lab</a> and <a
                    href="http://ai.ucsd.edu">Artificial Intelligence Group</a> at the <a
                    href="http://www.ucsd.edu">University of California, San&nbsp;Diego</a>.  
                </p>
                <p>
                    In May, 2012, I defended my dissertation, titled 
                        <em>More like this: machine learning approaches to music similarity</em> [<small><a
                        href="papers/bmcfee_dissertation.bib"><span class="glyphicon glyphicon-retweet" alt="bib"></span></a>|<a href="papers/bmcfee_dissertation.pdf"><span class="glyphicon glyphicon-file" alt="pdf"></span></a></small>].
                </p>

                <p>
                    For a full history, here's my <a href="cv-brianmcfee.pdf">curriculum vit&aelig;</a>.
                </p>
            </div>

            <hr>
            <div id="teaching">
                <h4>Teaching</h4>
                <dl class="dl-horizontal">
                    {% for class in classes %}
                        <dt>{{ class.date }}</dt>
                        <dd>
                            <a href="{{ class.url }}">{{ class.desc }}</a>
                        </dd>
                    {% endfor %}
                </dl>
            </div>

            <hr>
            <div id="pubs">
                <h4>Publications</h4>
            
                <div class="publications">
                {% for pub in pubs %}
                    <div>
                        <div style="float: right; text-align: right;">
                            <div> 
                                {{ pub.date }} 
                                <div>
                                {% if pub.slides %}
                                    <a href="{{ pub.slides }}"><span class="glyphicon glyphicon-film"></span></a> |
                                {% endif %}
                                {% if pub.poster %}
                                    <a href="{{ pub.poster }}"><span class="glyphicon glyphicon-picture"></span></a> |
                                {% endif %}
                                {% if pub.code %}
                                    <a href="{{ pub.code }}"><span class="glyphicon glyphicon-cog"></span></a> |
                                {% endif %}
                                {% if pub.data %}
                                    <a href="{{ pub.data }}"><span class="glyphicon glyphicon-folder-open"></span></a> |
                                {% endif %}
                                {% if pub.bib %}
                                    <a href="{{ pub.bib }}"><span class="glyphicon glyphicon-retweet"></span></a> | 
                                {% endif %}
                                {% if pub.pdf %}
                                    <a href="{{ pub.pdf }}"><span class="glyphicon glyphicon-file"></span></a>
                                {% endif %}
                                </div>
                                {% if pub.notes %}
                                    <span class="badge" style="text-align: right">{{ pub.notes }}</span>
                                {% endif %}
                            </div>
                        </div>
                        <div style="font-size: 120%">
                            {{ pub.title }}
                        </div>
                        <div class="text-muted">
                            {%- for a in pub.authors -%}
                                {%- if not loop.first -%}
                                    {%- if loop.length == 2 -%}
                                    &nbsp;and&nbsp;
                                    {%- elif loop.last -%}
                                    , and&nbsp;
                                    {%- else -%}
                                    ,&nbsp;
                                    {%- endif -%}
                                {%- endif -%}
                                {%- if authors[a].url -%}
                                    <a href="{{ authors[a].url }}">{{ authors[a].name }}</a>
                                {%- else -%}
                                    {{ authors[a].name }}
                                {%- endif -%}
                            {%- endfor -%}
                        </div>
                        <div class="text-muted">
                            {{ pub.venue }}
                        </div>
                    </div>
                {% endfor %}
                </div>
            </div>

            <hr>
            <div id="resources">
                <h4>Software</h4>
                <dl class="dl-horizontal">
                    {% for item in software %}
                        <dt> <a href="{{ item.url }}">{{ item.name }}</a> </dt>
                        <dd> {{ item.desc }} </dd>
                    {% endfor %}
                </dl>
                <p>More projects can be found on my <a href="http://github.com/bmcfee/">GitHub profile</a>.</p>
        
                
                <hr>
                <h4>Data</h4>
                <dl class="dl-horizontal">
                    {% for item in data %}
                        <dt> <a href="{{ item.url }}">{{ item.name }}</a> </dt>
                        <dd> {{ item.desc }} </dd>
                    {% endfor %}
                </dl>
            </div>

            <hr>
            <div id="hacks">
                <h4>Hack-day projects</h4>
                <dl class="dl-horizontal">
                    {% for item in hacks %}
                        <dt> <a href="{{ item.url }}">{{ item.name }}</a> </dt>
                        <dd> {{ item.desc }} </dd>
                    {% endfor %}
                </dl>
                <p>See my <a href="http://functiontelechy.tumblr.com/">hack-day blog</a> for more projects.</p>
            </div>

        </div>
    </body>

</html>