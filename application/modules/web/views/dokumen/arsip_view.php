
<div  class="article-content">
	<h2 class="mb-xl heading-primary">Unduhan</h2>	
		<div class="clear20"></div>
		<?php $i=0;?>
			<table class="table table-bordered table-hover table-condensed">
			<thead>
				<tr><th style="text-align:center;">No</th><th style="text-align:center;">Nama Unduhan</th><th style="text-align:center;">Download</th></tr>
			</thead>
			<tbody>	
			<?php foreach ($dokumen->result() as $page){ ?>
				<?php if($page->id_dokumen!=2){?>
				<tr><td width="5%" style="text-align:center;"><?php echo ++$i ?></td>
				<td width="75%"><?php echo $page->nama_dokumen?></td>
				<td align="center">
				<a href="<?php echo base_url('media/dokumen_akademik/'.$page->nama_file)?>" class='btn btn-primary btn-xs'  role="button" target='_blank'><i class="fa fa-arrow-circle-o-down"></i>Download</a></td>
			
				<?php }} ?>
			<?php
			if(count($dokumen)<=0){
			echo"<tr><td colspan='3' align='center'>Tidak ada dokumen yang tersedia</td></tr>";
			}
			?>
			</tbody>
		</table>
		
		<div class="clear20"></div>
		<div class="pagination">
		<?php
		echo $this->pagination->create_links();
		?>
		</div>
</div>
