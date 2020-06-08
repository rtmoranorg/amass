-- Copyright 2017 Jeff Foley. All rights reserved.
-- Use of this source code is governed by Apache 2 LICENSE that can be found in the LICENSE file.

name = "SiteDossier"
type = "scrape"

function start()
    setratelimit(1)
end

function vertical(ctx, domain)
    scrape(ctx, buildurl(domain))
end

function buildurl(domain)
    return "http://www.sitedossier.com/parentdomain/" .. domain
end
