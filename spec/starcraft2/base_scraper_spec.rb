require 'spec_helper'

describe BnetScraper::Starcraft2::BaseScraper do
  it_behaves_like 'an SC2 Scraper' do
    let(:scraper_class) { BnetScraper::Starcraft2::BaseScraper }
    let(:subject) { scraper_class.new(url: 'http://us.battle.net/sc2/en/profile/2377239/1/Demon/') }
  end

  describe '#scrape' do
    it 'should raise an error calling scrape' do
      expect { subject.scrape }.to raise_error NotImplementedError
    end
  end
end
