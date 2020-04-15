require 'open-uri'
require 'nokogiri'


url = "https://coinmarketcap.com/all/views/all/"

html_file = open(url).read
html_doc = Nokogiri::HTML(html_file)

html_doc.search('.cmc-table-row').each do |element|
  puts element.text.strip
  puts element.attribute('href').value
end

#<tr class="cmc-table-row" style="display: table-row;"><td class="cmc-table__cell cmc-table__cell--sticky cmc-table__cell--sortable cmc-table__cell--left cmc-table__cell--sort-by__rank"><div class="">1</div></td><td class="cmc-table__cell cmc-table__cell--sticky cmc-table__cell--sortable cmc-table__cell--left cmc-table__cell--sort-by__name"><div class="cmc-table__column-name cmc-table__column-name--narrow-layout sc-1kxikfi-0 eTVhdN"><div><img src="https://s2.coinmarketcap.com/static/img/coins/32x32/1.png" alt="Bitcoin" width="16" height="16" class="cmc-static-icon cmc-static-icon-1"><a href="/currencies/bitcoin/" title="Bitcoin" class="cmc-link">BTC</a></div><a href="/currencies/bitcoin/" title="Bitcoin" class="cmc-link">Bitcoin</a></div></td><td class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__market-cap"><div class="">$123,6 B</div></td><td class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__price"><a href="/currencies/bitcoin/markets/" class="cmc-link">$6 744,54</a></td><td class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__circulating-supply"><div class="">18,33 M</div></td><td class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__volume-24-h"><a href="/currencies/bitcoin/markets/" class="cmc-link">$34,44 B</a></td><td class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__percent-change-1-h"><div class="cmc--change-negative">-0,68%</div></td><td class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__percent-change-24-h"><div class="cmc--change-negative">-1,61%</div></td><td class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__percent-change-7-d"><div class="cmc--change-negative">-7,40%</div></td><td class="cmc-table__cell cmc-table__cell--right"><div class="kdqqbs-0 gJUyCH"><div class="cmc-popover sc-12d77vg-0 ERwrC"><div class="cmc-popover__trigger"><span class="cmc-icon__wrap Icon__StyledIcon-sc-1pqyw27-0 nvudS"><svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="ellipsis-h" class="svg-inline--fa fa-ellipsis-h fa-w-16 cmc-icon" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path fill="currentColor" d="M328 256c0 39.8-32.2 72-72 72s-72-32.2-72-72 32.2-72 72-72 72 32.2 72 72zm104-72c-39.8 0-72 32.2-72 72s32.2 72 72 72 72-32.2 72-72-32.2-72-72-72zm-352 0c-39.8 0-72 32.2-72 72s32.2 72 72 72 72-32.2 72-72-32.2-72-72-72z"></path></svg></span></div></div></div></td></tr>
