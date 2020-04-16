require_relative '../lib/mairie_christmas.rb'

it " get_townhall_email " do
    expect(get_townhall_email("http://annuaire-des-mairies.com/95/ableiges.html")).to eq("mairie.ableiges95@wanadoo.fr")
  end

it " get_townhall_urls " do
    expect(get_townhall_urls("http://annuaire-des-mairies.com/val-d-oise.html")[0]).to eq(["ABLEIGES", "http://annuaire-des-mairies.com/./95/ableiges.html"])
  end
