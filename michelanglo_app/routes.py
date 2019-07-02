
######################### Routes ##################################
def includeme(config):
    config.add_static_view('static', 'static', cache_max_age=3600)
    config.add_static_view('images', '../images', cache_max_age=3600)
    config.add_static_view('favicon.ico','static/favicon.ico', cache_max_age=3600)
    config.add_route('home', '/')
    config.add_route('home_text', '/verbose')
    config.add_route('custom', '/custom')
    config.add_route('pdb', '/pdb')
    config.add_route('pymol', '/pymol')
    config.add_route('gallery', '/gallery')
    config.add_route('docs', '/docs/{id}')
    config.add_route('main_docs', '/docs')
    config.add_route('ajax_convert', '/ajax_convert')
    config.add_route('ajax_custom', '/ajax_custom')
    config.add_route('ajax_pdb', '/ajax_pdb')
    config.add_route('task_check','/task_check')
    config.add_route('save_pdb', '/save_pdb')
    config.add_route('save_zip', '/save_zip')
    config.add_route('edit_user-page', '/edit_user-page')
    config.add_route('combine_user-page', '/combine_user-page')
    config.add_route('delete_user-page', '/delete_user-page')
    config.add_route('login', '/login')
    config.add_route('status', '/status')
    config.add_route('get', '/get')
    config.add_route('mutate', '/mutate')
    config.add_route('msg', '/msg')
    config.add_route('get_pages', '/get_pages')
    config.add_route('admin', '/admin')
    config.add_route('venus', '/venus')
    config.add_route('extended', '/michelanglo.js')
    config.add_route('extended_menu', '/michelanglo_menu.js')
    config.add_route('userdata', '/data/{id}')


    #previously existent routes... deadlink possible:
    #config.add_route('sandbox', '/sandbox')
    #config.add_route('clash', '/clash')
    #config.add_route('imagetoggle', '/imagetoggle')
    #config.add_route('markup', '/markup')
