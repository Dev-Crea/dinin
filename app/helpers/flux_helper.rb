# Flux helper
module FluxHelper
  def button_group_link(site)
    link_to site.domaine, class: 'button primary' do
      fa_icon 'link', text: site.domaine
    end
  end

  def button_group_rss(site)
    link_to news_path(site_id: site.id, format: 'atom'),
            class: 'button success' do
      fa_icon 'rss', text: t('flux.shared.souscrire', site: site.nom)
    end
  end
end
