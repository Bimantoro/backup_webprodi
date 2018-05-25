<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class agenda extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->helper('format_tanggal');
		$this->load->helper('text_manipulation');
		$this->load->library('pagination');
		$this->load->library('page_lib');
		$this->load->library('breadcrumb');
		$this->load->model('web/page_model');
		$this->load->helper('page');
		 $this->lang=$this->page_lib->lang();
	}
 
  
    public function index($uri=0,$th="",$bl=""){
		$this->breadcrumb->append_crumb('Beranda', base_url());
		$this->breadcrumb->append_crumb('Agenda', '/');
		$limit=10;
		$data['agenda'] = $this->page_model->get_arsip_agenda($limit,(int)$uri,array('tahun'=>$th,'bulan'=>$bl));
		$data['sidebar']=array('search_sidebar', 'arsip_agenda_sidebar');
		$data['main_view']="web/agenda/arsip_view";				
		$this->load->view('web/content',$data);
   }
 
 
   public function detail($id=0){
      $get_data = $this->db->get_where("agenda",array('id_agenda'=>$id));
		$agenda = $get_data->row();
		$kode_unit = $this->session->userdata('kode_unit');
		if($get_data->num_rows()>0){
		 	$this->breadcrumb->append_crumb('Beranda', base_url());
			$this->breadcrumb->append_crumb('Agenda', site_url($this->lang.'/agenda'));
			$this->breadcrumb->append_crumb(substr($agenda->nama_agenda,0,130).' ...', '/');
			$data['title']=$agenda->nama_agenda;
			$this->page_model->page_counter($id,'berita');
			
			$data['d'] = $this->db->get_where('agenda',array('id_agenda'=>$id))->row();
			$arr_filter=array();
			$arr_filter=related_text($agenda->nama_agenda);	
			$filter	="kode_unit = ".$kode_unit." AND id_agenda <> '".$id."' AND  (nama_agenda LIKE '%".rtrim(implode("%' OR nama_agenda LIKE '%",$arr_filter)," OR nama_agenda LIKE '%")."%')";
			// $data['rec']=$this->db->query("SELECT id_agenda,nama_agenda,tgl_posting from agenda WHERE ".$filter."  ORDER BY tgl_posting desc LIMIT 0,5")->result();
			// $data['pop']=$this->db->query("SELECT id_agenda,nama_agenda,tgl_posting from agenda where kode_unit=".$kode_unit." ORDER BY counter desc LIMIT 0,5")->result();

			$data['rec']=$this->page_model->get_agenda_terkait($filter, 0, 5);
			$data['pop']=$this->page_model->get_agenda_terpopuler(0, 5);

			$data['lang'] = $this->lang;

			$data['agenda']=$get_data->result();
			if($get_data->num_rows()>0){
				set_time_limit(0); 
				/* if($p->url!=null){
					/* redirect($p->url); */
					/* header('Location: '.$p->url); */
				/* }else{  */
					
					$arf=explode(".",$agenda->lampiran);
					$ext= strtolower(end($arf));
					$arr_ext=array('pdf','jpg');
					if(in_array($ext,$arr_ext)){
						$data['ext']=$ext;
					}
					$data['filetype']=$ext;	
					$data['sidebar']=array('search_sidebar', 'arsip_agenda_sidebar');
					$data['main_view']="web/agenda/detail_agenda";				
					$this->load->view('web/content',$data);
				}
		}else{
			
	      	redirect(base_url());
		}
    }
   function feed(){  
        $data['feed_name'] = 'Agenda';  
        $data['encoding'] = 'utf-8';  
        $data['feed_url'] = site_url('page/agenda/feed');
        $data['feed_description'] = 'UIN Sunan Kalijaga Yogyakarta';  
        $data['page_language'] = 'en-en';  
        $data['agenda'] = $this->page_model->get_feed_agenda(10);      
        header("Content-Type: application/rss+xml");  
        $this->load->view('agenda/rss_agenda', $data);  
    }   
 
}
 
/* End of file agenda.php */
