<!-- Responsive navbar-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container px-5">
        <a class="navbar-brand" href="#!">{{clippings.site_name}}</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" 
            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" 
            aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
                {{each navigation as nav where nav.sort_order != 1 sort by sort_order ASC}}
                <li class="nav-item"><a class="nav-link" href="#!">{{nav.title}}</a></li>
                {{end-each}}
            </ul>
        </div>
    </div>
</nav>

<!-- Header-->
<header class="bg-dark py-5">
    <div class="container px-5">
        <div class="row gx-5 justify-content-center">
            <div class="col-lg-6">
                <div class="text-center my-5">
                    <h1 class="display-5 fw-bolder text-white mb-2">{{this.title}}</h1>
                    {{this.desc}}
                    <div class="d-grid gap-3 d-sm-flex justify-content-sm-center">
                        <a class="btn btn-primary btn-lg px-4 me-sm-3" href="">{{this.btn_1}}</a>
                        <a class="btn btn-outline-light btn-lg px-4" href="">{{this.btn_2}}</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Features section-->
<section class="py-5 border-bottom" id="features">
    <div class="container px-5 my-5">
        <div class="row gx-5">
            {{each featured as feature sort_by sort_order ASC}}
            <div class="col-lg-4 mb-5 mb-lg-0">
                <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
                    <i class="bi bi-collection"></i>
                </div>
                <h2 class="h4 fw-bolder">{{feature.title}}</h2>
                <p>{{feature.desc}}</p>
                <a class="text-decoration-none" href="">
                    {{feature.btn}}
                    <i class="bi bi-arrow-right"></i>
                </a>
            </div>
            {{end-each}}
        </div>
    </div>
</section>

<!-- Pricing section-->
<section class="bg-light py-5 border-bottom" id="pricing" style="background-image: url('https://mfxxxzvh.media.zestyio.com/price.jpg');">
    <div class="container px-5 my-5">
        <div class="text-center mb-5">
            <h2 class="fw-bolder">{{this.pricing_title}}</h2>
            <p class="lead mb-0">{{this.pricing_desc}}</p>
        </div>
        <div class="row gx-5 justify-content-center">
            <!-- Pricing card-->
            {{each prices as price sort_by sort_order DESC}}
            <div class="col-lg-6 col-xl-4">
                <div class="card">
                    <div class="card-body p-5">
                        <div class="small text-uppercase fw-bold text-muted">{{price.title}}</div>
                        <div class="mb-3">
                            <span class="display-4 fw-bold">&#36;{{price.amount}}</span>
                            <span class="text-muted">/{{this.duration}}</span>
                        </div>
                        <ul class="list-unstyled mb-4">
                            {{price.desc}}
                        </ul>
                        <div class="d-grid"><a class="btn btn-outline-primary" href="#!">
                        {{this.pricing_btn}}</a></div>
                    </div>
                </div>
            </div>
            {{end-each }}
        </div>
    </div>
</section>

<!-- Testimonials section-->
<section class="py-5 border-bottom" id="testimonials">
    <div class="container px-5 my-5 px-5">
        <div class="text-center mb-5">
            <h2 class="fw-bolder">{{this.testimonials_title}}</h2>
            <p class="lead mb-0">{{this.testimonials_desc}}</p>
        </div>
        <div class="row gx-5 justify-content-center">
            <div class="col-lg-6">
                <!-- Testimonial 1-->
                {{each testimonials as test sort_by sort_order ASC}}
                <div class="card mb-4">
                    <div class="card-body p-4">
                        <div class="d-flex">
                            <div class="flex-shrink-0">
                                <i class="bi bi-chat-right-quote-fill text-primary fs-1"></i>
                            </div>
                            <div class="ms-4">
                                <p class="mb-1">{{test.review}}</p>
                                <div class="small text-muted">{{test.name}}</div>
                            </div>
                        </div>
                    </div>
                </div>
                {{end-each}}
            </div>
        </div>
    </div>
</section>

<!--Contact section --->
<section class="bg-light py-5" id="contactsection" style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
    <div class="container px-5 my-5 px-5">
        <div class="text-center mb-5">
            <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3">
                <i class="bi bi-envelope"></i>
            </div>
            <h2 class="fw-bolder">{{this.contact_title}}</h2>
            <p class="lead mb-0">{{this.contact_desc}}</p>
        </div>
    {{if {post_var.email} }}
     <!-- Modal -->
    <div class="modal fade" id="exampleModalCenter" tabindex="-1" 
    role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLongTitle">{{this.modal_title}}</h5>
            </div>
            <div class="modal-body">
            {{if {post_var.name} }}
            {{this.modal_msg}}
            {{ else }}
            failed
            {{end-if}}
            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary" onclick="close()" id="close" data-dismiss="modal">
            {{this.modal_btn}}</button>
            </div>
        </div>
    </div>
    </div>
    {{else }}
    {{end-if}}
    <section class="vh-100 bg-image">
        <div class="mask d-flex align-items-center h-100 gradient-custom-3">
            <div class="container h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-9 col-lg-7 col-xl-6">
                <div class="card" style="border-radius: 15px;">
                    <div class="card-body p-5">

                    <form action="#" method="POST" enctype="multipart/form-data">
                        <input name="zlf" value="Form Request" type="hidden">
                        <input name="zcf" value="1" type="hidden">
                        <input type="hidden" name="{{setting.contact-form.honeypot}}" value="">

                        <div class="form-outline mb-4">
                            <input type="text" name="name" required class="form-control form-control-lg"/>
                            <label class="form-label">{{this.name_label}}</label>
                        </div>

                        <div class="form-outline mb-4">
                            <input type="email" name="email" required class="form-control form-control-lg"/>
                            <label class="form-label">{{this.email_label}}</label>
                        </div>

                        <div class="form-outline mb-4">
                            <textarea type="text" name="msg" required 
                            class="form-control form-control-lg"/></textarea>
                            <label class="form-label">{{this.msg_label}}</label>
                        </div>

                        <div class="d-flex justify-content-center">
                            <button type="submit"
                            class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">
                            {{this.contact_btn}}</button>
                        </div>
                    </form> 
                    </div>
                </div>
                </div>
            </div>
            </div>
        </div>
    </section>
    </div>
</section> 

<!-- Footer-->
<footer class="py-5 bg-dark">
    <div class="container px-5"><p class="m-0 text-center text-white">
        Copyright &copy {{clippings.site_name}} {{instance.date.date(Y)}}</p></div>
</footer>