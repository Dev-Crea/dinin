# Flux helper
module FluxHelper
  def button_group_link(site)
    link_to site.domaine, class: 'button primary' do
      fa_icon 'link', text: t('flux.shared.link_site', site: site.nom)
    end
  end

  def button_group_rss(site)
    link_to news_path(site_id: site.id, format: 'atom'),
            class: 'button warning' do
      fa_icon 'rss', text: t('flux.shared.souscrire', site: site.nom)
    end
  end

  def button_group_news(site)
    link_to news_path(site_id: site.id, format: 'html'),
            class: 'button secondary' do
      fa_icon 'rss-square', text: t('flux.shared.views_flux', site: site.nom)
    end
  end
end
