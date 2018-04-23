<h2>Data Mobil</h2>
<a href="<?= site_url('mobil/form') ?>" class="btn btn-primary">Tambah Data</a>
<hr />
<table class="table table-bordered table-hover">
	<thead>
		<tr>
			<th>NOPOL</th>
			<th>MERK</th>
			<th>TAHUN</th>
			<th>HARGA SEWA</th>
			<th>AKSI</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach ($data as $r) { ?>
			<tr>
				<td><?= $r['nopol']?></td>
				<td><?= $r['merk']?></td>
				<td><?= $r['tahun']?></td>
				<td><?= $r['harga_sewa']?></td>	
				<td>
               		<a href="<?= site_url('Mobil/hapus/'.$r['nopol'])?>" class="del btn-sm btn-danger">
                   	<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>Delete</a>
            	</td>
			</tr>
			<?php } ?>
	</tbody>
</table>