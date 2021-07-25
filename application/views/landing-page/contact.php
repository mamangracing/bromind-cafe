<!-- Contact Us -->
<main class="container">
    <div class="col-xl-12">
        <?= $this->session->flashdata('pesan');?>
    </div>
    <div class="card">
        <div class="card-body">
            <h2 id="h-contact">Contact Us</h2>
            <div id="red-line"></div>
            <?= form_open_multipart('LandingPage/contact');?>
                <div id="sm-nm">Name</div>
                <input type="text" name="name" id="name" placeholder="Name in here">
                <div style="margin-left: -12px;">
                    <?= form_error('name', '<small class="text-danger pl-3">', '</small>');?>
                </div>
                <div id="sm-em">Email</div>
                <input type="email" name="email" id="email" placeholder="Email in here">
                <div style="margin-left: -12px;">
                    <?= form_error('email', '<small class="text-danger pl-3">', '</small>');?>
                </div>
                <div class="message">
                    <div id="sm-msg">Message</div>
                    <textarea name="message" id="message" rows="9" placeholder="Write message in here..."></textarea>
                    <?= form_error('message', '<small class="text-danger pl-3">', '</small>');?>
                </div>
                <div class="checkbox">
                    <input type="checkbox" id="robot" name="robot" value="robot">
                    <label class="my-auto" for="robot">I'm not a robot</label>
                </div>
                <button type="submit" class="btn btn-danger">Send</button>
            </form>
        </div>
    </div>
</main>