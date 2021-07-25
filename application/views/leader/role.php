                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800 text-center"><?= $title; ?></h1>

                    <div class="row">
                        <div class="col-lg-6 mx-auto">
                        <!-- Jika error -->
                        <?= form_error('menu', '<div class="alert alert-danger" role="alert">', '</div>');?>
                        <!-- Jika Success -->
                        <?= $this->session->flashdata('message'); ?>
                        <table class="table table-hover table-bordered text-center">
                            <thead class="thead-dark">
                                <tr>
                                <th scope="col">#</th>
                                <th scope="col">Role</th>
                                <th scope="col">Actions</th>
                                </tr>
                            </thead>
                            <tbody class="text-dark">
                                <?php $i = 1; ?>
                                <?php foreach ($role as $r) : ?>
                                <tr>
                                    <th scope="row"><?= $i; ?></th>
                                    <td><?= $r['role']?></td>
                                    <td>
                                        <a href="<?= base_url('leader/roleaccess/') . $r['id']; ?>" class="badge badge-warning">Access</a>
                                    </td>
                                </tr>
                                <?php $i++; ?>
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
<div class="modal fade" id="newRoleModal" tabindex="-1" aria-labelledby="newRoleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="newRoleModalLabel">Add Role</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="<?= base_url('leader/role'); ?>" method="post">
        <div class="modal-body">
            <div class="form-group">
                <input type="text" class="form-control" id="role" name="role" placeholder="Role name">
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="submit" class="btn btn-primary">Add</button>
        </div>
      </form>
    </div>
  </div>
</div>