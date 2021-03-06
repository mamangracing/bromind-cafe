                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800 text-center"><?= $title; ?> Management</h1>

                    <div class="row">
                        <div class="col-lg-6 mx-auto">
                        <!-- Jika error -->
                        <?= form_error('menu', '<div class="alert alert-danger" role="alert">', '</div>');?>
                        <!-- Jika Success -->
                        <?= $this->session->flashdata('message'); ?>
                        <!-- <a href="" class="btn btn-success mb-3" data-toggle="modal" data-target="#newMenuModal">
                            Add new menu
                        </a> -->
                        <table class="table table-bordered table-hover text-center">
                            <thead class="thead-dark">
                                <tr>
                                <th scope="col">#</th>
                                <th scope="col">Menu</th>
                                <th scope="col">Actions</th>
                                </tr>
                            </thead>
                            <tbody class="text-dark">
                                <?php $no = 1; ?>
                                <?php foreach ($menu as $m) : ?>
                                <tr>
                                    <th scope="row"><?= $no++; ?></th>
                                    <td><?= $m['menu']?></td>
                                    <td>
                                        <a href="<?= base_url('menu/edit/') . $m['id']; ?>" class="badge badge-info">Edit</a>
                                    </td>
                                </tr>
                                <?php endforeach?>
                            </tbody>
                          </table>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

<!-- Modal -->
<!-- <div class="modal fade" id="newMenuModal" tabindex="-1" aria-labelledby="newMenuModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="newMenuModalLabel">Add Menu</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="< //base_url('menu'); ?>" method="post">
        <div class="modal-body">
            <div class="form-group">
                <input type="text" class="form-control" id="menu" name="menu" placeholder="Menu name">
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary">Add</button>
        </div>
      </form>
    </div>
  </div>
</div> -->