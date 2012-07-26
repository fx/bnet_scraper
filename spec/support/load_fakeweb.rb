require 'fakeweb'

profile_html      = File.read File.dirname(__FILE__) + '/profile.html' 
leagues_html      = File.read File.dirname(__FILE__) + '/leagues.html' 
league_html       = File.read File.dirname(__FILE__) + '/league.html' 
achievements_html = File.read File.dirname(__FILE__) + '/achievements.html'
matches_html      = File.read File.dirname(__FILE__) + '/matches.html'
status_html       = File.read File.dirname(__FILE__) + '/status.html'
failure_html      = File.read File.dirname(__FILE__) + '/failure.html'
no_ladder_html    = File.read File.dirname(__FILE__) + '/no_ladder.html'
no_leagues_html   = File.read File.dirname(__FILE__) + '/no_ladder_leagues.html'

FakeWeb.allow_net_connect = false
FakeWeb.register_uri :get, 'http://us.battle.net/sc2/en/profile/2377239/1/SomeDude/', body: failure_html, status: 404, content_type: 'text/html'
FakeWeb.register_uri :get, 'http://us.battle.net/sc2/en/profile/2377239/1/SomeDude/achievements/', body: failure_html, status: 404, content_type: 'text/html'
FakeWeb.register_uri :get, 'http://us.battle.net/sc2/en/profile/2377239/1/SomeDude/leagues/12345', body: failure_html, status: 404, content_type: 'text/html'
FakeWeb.register_uri :get, 'http://us.battle.net/sc2/en/profile/2377239/1/SomeDude/matches', body: failure_html, status: 404, content_type: 'text/html'
FakeWeb.register_uri :get, 'http://us.battle.net/sc2/en/profile/2377239/1/Demon/', body: profile_html, status: 200, content_type: 'text/html'
FakeWeb.register_uri :get, 'http://us.battle.net/sc2/en/profile/2377239/1/Demon/ladder/leagues', body: leagues_html, status: 200, content_type: 'text/html'
FakeWeb.register_uri :get, 'http://us.battle.net/sc2/en/profile/2377239/1/Demon/ladder/12345',   body: league_html, status: 200, content_type: 'text/html'
FakeWeb.register_uri :get, 'http://us.battle.net/sc2/en/profile/2377239/1/Demon/ladder/96905',   body: league_html, status: 200, content_type: 'text/html'
FakeWeb.register_uri :get, 'http://us.battle.net/sc2/en/profile/2377239/1/Demon/ladder/96716',   body: league_html, status: 200, content_type: 'text/html'
FakeWeb.register_uri :get, 'http://us.battle.net/sc2/en/profile/2377239/1/Demon/ladder/98162',   body: league_html, status: 200, content_type: 'text/html'
FakeWeb.register_uri :get, 'http://us.battle.net/sc2/en/profile/2377239/1/Demon/ladder/97369',   body: league_html, status: 200, content_type: 'text/html'
FakeWeb.register_uri :get, 'http://us.battle.net/sc2/en/profile/2377239/1/Demon/ladder/96828',   body: league_html, status: 200, content_type: 'text/html'
FakeWeb.register_uri :get, 'http://us.battle.net/sc2/en/profile/2377239/1/Demon/ladder/97985',   body: league_html, status: 200, content_type: 'text/html'
FakeWeb.register_uri :get, 'http://us.battle.net/sc2/en/profile/2377239/1/Demon/ladder/98523',   body: league_html, status: 200, content_type: 'text/html'
FakeWeb.register_uri :get, 'http://us.battle.net/sc2/en/profile/2377239/1/Demon/ladder/96863',   body: league_html, status: 200, content_type: 'text/html'
FakeWeb.register_uri :get, 'http://us.battle.net/sc2/en/profile/2377239/1/Demon/ladder/97250',   body: league_html, status: 200, content_type: 'text/html'
FakeWeb.register_uri :get, 'http://us.battle.net/sc2/en/profile/2377239/1/Demon/ladder/96830',   body: league_html, status: 200, content_type: 'text/html'
FakeWeb.register_uri :get, 'http://us.battle.net/sc2/en/profile/2377239/1/Demon/ladder/98336',   body: league_html, status: 200, content_type: 'text/html'
FakeWeb.register_uri :get, 'http://us.battle.net/sc2/en/profile/2377239/1/Demon/ladder/98936',   body: league_html, status: 200, content_type: 'text/html'
FakeWeb.register_uri :get, 'http://us.battle.net/sc2/en/profile/2377239/1/Demon/achievements/',  body: achievements_html, status: 200, content_type: 'text/html'
FakeWeb.register_uri :get, 'http://us.battle.net/sc2/en/profile/2377239/1/Demon/matches',        body: matches_html, status: 200, content_type: 'text/html'
FakeWeb.register_uri :get, 'http://www.teamliquid.net/forum/viewmessage.php?topic_id=138846',    body: status_html, status: 200, content_type: 'text/html'
FakeWeb.register_uri :get, 'http://us.battle.net/sc2/en/profile/3354437/1/ClarkeKent/',          body: no_ladder_html, status: 200, content_type: 'text/html'
FakeWeb.register_uri :get, 'http://us.battle.net/sc2/en/profile/3354437/1/ClarkeKent/ladder/leagues', body: no_leagues_html, status: 200, content_type: 'text/html'
