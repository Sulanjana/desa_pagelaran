			<div class="container">
				<br />
				<h2><a href="<?= base_url('albums'); ?>">Album</a> | <a href="<?= base_url('albums/galeri_instagram'); ?>">Galeri Instagram</a></h2>
				<div class="row">
					<div class="masonry-loader masonry-loader-loaded">
						<div class="masonry" data-plugin-masonry="" style="position: relative; height: 904.314px;">

							<?php
							$no = $this->uri->segment(3) + 1;
							foreach ($album->result_array() as $h) {
								$total_foto = $this->model_utama->view_where('gallery', array('id_album' => $h['id_album']))->num_rows();
								$keterangan = strip_tags($h['keterangan']);
								$isi_keterangan = substr($keterangan, 0, 120);
								$isi_keterangan = substr($keterangan, 0, strrpos($isi_keterangan, " "));
								echo "
							<div class='masonry-item' style='margin: 10px; width: 30%; position: absolute; left: 0px; top: 0px;'>
								<a style='text-decoration:none;color:#000000;' href='" . base_url() . "albums/detail/$h[album_seo]' >
									<span class='thumb-info thumb-info-hide-wrapper-bg'>
										<span class='thumb-info-wrapper'>";
								if ($h['gbr_album'] == '') {
									echo "<img style='width:100%; height:160px' class='entry-thumb td-animation-stack-type0-2' src='" . base_url() . "asset/img_album/no-image.jpg' alt='no-image.jpg'/>";
								} else {
									echo "<img style='width:100%; height:160px' class='entry-thumb td-animation-stack-type0-2' src='" . base_url() . "asset/img_album/$h[gbr_album]' alt='$h[gbr_album]'/>";
								}
								echo "
										</span>
										<span class='thumb-info-caption'>
												<a href='" . base_url() . "albums/detail/$h[album_seo]'><h4 style='padding:15px 0 0 10px;'>$h[jdl_album]($total_foto Foto)</h4></a>
												<span class='thumb-info-caption-text'></span>

										</span>
									</span>

								</a>
							</div>
							";


								if ($no % 2 == 0) {
									echo "<div style='clear:both'></div>";
								}
								$no++;
							}
							?>


						</div>
						<div class="bounce-loader">
							<div class="bounce1"></div>
							<div class="bounce2"></div>
							<div class="bounce3"></div>
						</div>
					</div>
				</div>

			</div>