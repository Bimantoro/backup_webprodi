<!DOCTYPE html>
<html>
	<head>
		
		<?php
			// $lang=$this->page_lib->lang();
			$lang='id';
		?>
		<?php
			$d=explode('.',str_replace('http://','',base_url()));
			$dom=$d[0];
			//$dom=$this->session->userdata('subdomain');
		?>
		<?php $unit=$this->db->get_where('unit',array('subdomain'=>$dom))->row();
		?>
		
		<!-- Basic -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">	

		<title><?php echo $unit->nama_unit?> UIN Sunan Kalijaga</title>	

		<meta name="keywords" content="HTML5 Template" />
		<meta name="description" content="Porto - Responsive HTML5 Template">
		<meta name="author" content="okler.net">

		<!-- Favicon -->
		<link rel="shortcut icon" href="http://static.uin-suka.ac.id/images/favicon.png" type="image/x-icon" />
		<link rel="apple-touch-icon" href="http://static.uin-suka.ac.id/images/favicon.png">

		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

	
		<!-- Vendor CSS -->
		<link rel="stylesheet" href="<?php echo base_url()?>asset/porto/vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="<?php echo base_url()?>asset/porto/vendor/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="<?php echo base_url()?>asset/porto/vendor/simple-line-icons/css/simple-line-icons.min.css">
		<link rel="stylesheet" href="<?php echo base_url()?>asset/porto/vendor/owl.carousel/assets/owl.carousel.min.css">
		<link rel="stylesheet" href="<?php echo base_url()?>asset/porto/vendor/owl.carousel/assets/owl.theme.default.min.css">
		<link rel="stylesheet" href="<?php echo base_url()?>asset/porto/vendor/magnific-popup/magnific-popup.min.css">

		<!-- Theme CSS -->
		<link rel="stylesheet" href="<?php echo base_url()?>asset/porto/css/theme.css">
		<link rel="stylesheet" href="<?php echo base_url()?>asset/porto/css/theme-elements.css">
		<link rel="stylesheet" href="<?php echo base_url()?>asset/porto/css/theme-blog.css">
		<link rel="stylesheet" href="<?php echo base_url()?>asset/porto/css/theme-shop.css">
		<link rel="stylesheet" href="<?php echo base_url()?>asset/porto/css/theme-animate.css">
		<!-- Current Page CSS -->
		<link rel="stylesheet" href="<?php echo base_url()?>asset/porto/vendor/rs-plugin/css/settings.css" media="screen">
		<link rel="stylesheet" href="<?php echo base_url()?>asset/porto/vendor/rs-plugin/css/layers.css" media="screen">
		<link rel="stylesheet" href="<?php echo base_url()?>asset/porto/vendor/rs-plugin/css/navigation.css" media="screen">
		<link rel="stylesheet" href="<?php echo base_url()?>asset/porto/vendor/circle-flip-slideshow/css/component.css" media="screen">
		<!-- Skin CSS -->
		<link rel="stylesheet" href="<?php echo base_url()?>asset/porto/css/skins/default.css">

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="<?php echo base_url()?>asset/porto/css/custom.css">

		<!-- Head Libs -->
		<script src="<?php echo base_url()?>asset/porto/vendor/modernizr/modernizr.min.js"></script>
		<script src="<?php echo base_url()?>asset/porto/vendor/jquery/jquery.min.js"></script>
		
	</head>

	<body>

		<div class="body">
			<header id="header" class="header-mobile-nav-only" data-plugin-options='{"stickyEnabled": true, "stickyEnableOnBoxed": true, "stickyEnableOnMobile": true, "stickyStartAt": 115, "stickySetTop": "-115px", "stickyChangeLogo": true}'>
				<div class="header-body">
					<div class="header-top">
						<div class="container">
							<p>
								<span class="ml-xs"><i class="fa fa-phone"></i> <?php echo $unit->telp?></span><span class="hidden-xs"> | <a href="#"><?php echo $unit->email?></a></span>
							</p>
							<ul class="header-social-icons social-icons hidden-xs">
								<li class="social-icons-facebook"><a href="http://www.facebook.com/" target="_blank" title="Facebook"><i class="fa fa-facebook"></i></a></li>
								<li class="social-icons-twitter"><a href="http://www.twitter.com/" target="_blank" title="Twitter"><i class="fa fa-twitter"></i></a></li>
								<li class="social-icons-linkedin"><a href="http://www.linkedin.com/" target="_blank" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
					<div class="header-container container">
						<div class="header-row">
							<div class="header-column">
								<div class="header-logo">
									<a href="<?php echo base_url()?>">
										<img alt="Porto2" width="246"  height="54" data-sticky-width="165" data-sticky-height="40" data-sticky-top="43" src="<?php echo base_url('asset/images/logo-uin.png')?>">
									</a>
								</div>
							</div>
							<div class="header-column">
								<div class="header-row ">
									<div class="heading heading-middle-border-reverse">
									
										<h3 class="mt-lg mb-md"><?php echo $unit->nama_unit?></h3>
									</div>	
								</div>
								<div class="header-row">
									
									
									<!-- <nav class="header-nav-top">
										<ul class="nav nav-pills">
										<?php $bahasa=$this->db->select('*')
												->from('bahasa')
												->where('kode_bahasa !=', $lang)
												->get()->result();
										?>
										<?php foreach($bahasa as $bhs):?>
											<li class="hidden-xs">
												<a href="<?php echo base_url(str_replace('id', '', $bhs->kode_bahasa))?>"><i class="fa fa-angle-right"></i> <?php echo $bhs->nama_bahasa ?></a>
											</li>
										<?php endforeach ?>	
										</ul>
									</nav> -->
								<div class="header-row">
									<div class="header-nav">
										<button class="btn header-btn-collapse-nav mt-lg" data-toggle="collapse" data-target=".header-nav-main">
											<i class="fa fa-bars"></i>
										</button>
									
										<div class="header-nav-main header-nav-main-effect-1 header-nav-main-sub-effect-1 collapse">
											
											<nav>
												<ul class="nav nav-pills" id="mainNav">
												<?php 
												$menu=$this->db->select('menu.*')
													->from('menu')
													->where(array('parent'=>0,'status'=>1, 'kode_bahasa'=>$lang, 'kode_unit'=>$unit->kode_unit))
													->order_by('menu_order','asc')
													->get()->result();
												?>
												
												<?php foreach($menu as $m):?>
														
														<?php if($m->modul != null):?>
														<?php $this->load->view('web/'.$m->modul.'/menu',array('m'=>$m));?>	
														<?php else: ?>
														<?php 
															$sm1=$this->db->select('menu.*')
																->from('menu')
																->where(array('parent'=>$m->id_menu,'status'=>1))
																->order_by('menu_order','asc')
																->get()->result();
															?>
													<?php if(!empty($sm1)) : 
														$dropdown = "dropdown-toggle";
													?>
													
													<li class="dropdown">
													<?php else :
														$dropdown = "";
													?>
													
													<li class="">
													<?php endif?>
													
													
													<?php if($m->jenis_url=='Eksternal'):?>
														<a class="<?php echo $dropdown?>"  href="<?php echo $m->url ?>" target="<?php echo $m->target?>">
															<?php echo $m->nama_menu?>
														</a>
														<?php else:?>
														<a class="<?php echo $dropdown?>" href="<?php echo site_url($lang.'/'.$m->url) ?>">
															<?php echo $m->nama_menu?>
														</a>
														<?php endif?>
														<ul class="dropdown-menu">
															
															<?php foreach($sm1 as $sm1):?>
															
															<li>
																<?php if($sm1->jenis_url=='Eksternal'):?>
																<a href="<?php echo $sm1->url ?>" target="<?php echo $sm1->target?>"><?php echo $sm1->nama_menu?></a>
																<?php else: ?>
																<a href="<?php echo site_url($lang.'/'.$sm1->url) ?>" target="<?php echo $sm1->target?>"><?php echo $sm1->nama_menu?></a>
																<?php endif ?>
															</li>
															<?php endforeach ?>
														
															
														</ul>
													</li>
													<?php endif ?>
												
												<?php endforeach?>
													<li>
														<div class="header-search hidden-xs">
												<form id="searchForm" action="<?php echo site_url($lang.'/page/search')?>" method="post">
													<div class="input-group">
														<input type="text" class="form-control" name="cari"  id="cari" placeholder="Search..." required>
														<span class="input-group-btn">
															<button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button>
														</span>
													</div>
												</form>
											</div>
													</li>
												<!--
													
													-->
												</ul>
											</nav>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>