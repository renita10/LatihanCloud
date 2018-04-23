<h2>Form Mobil</h2>
<form method="post" class="form" action="<?= site_url('mobil/save') ?>">
	<div class="form-group">
		<label>Nopol</label>
		<input type="text" name="nopol" class="form-control">
	</div>
	<div class="form-group">
		<label>Merk</label>
		<input type="text" name="merk" class="form-control">
	</div>
	<div class="form-group">
		<label>Tahun</label>
		<input type="text" name="tahun" class="form-control">
	</div>
	<div class="form-group">
		<label>Harga Sewa</label>
		<input type="text" name="harga_sewa" class="form-control">
	</div>
	<button type="submit" class="btn btn-success">Simpan</button>
</form>