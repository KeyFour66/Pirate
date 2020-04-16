 it " get_townhall_urls " do
    expect(get_townhall_urls("http://annuaire-des-mairies.com/val-d-oise.html")[0]).to eq(["ABLEIGES", "http://annuaire-des-mairies.com/./95/ableiges.html"])
  end
