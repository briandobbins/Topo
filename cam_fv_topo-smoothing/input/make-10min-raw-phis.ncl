;  fname_out = "10min-phis-raw.nc"
;
  ftarget   = addfile ("topo-10min.nc", "r")
;  fsource     = addfile("../../create_netCDF_from_rawdata/gmted2010_elevation_and_landfrac_modis.nc","r")
;
;  h = fsource->htopo
;  l = fsource->landfract  
;
;  printVarSummary( h )
;  
  lon = ftarget->lon
  lat = ftarget->lat
;
;  htopo  = area_hi2lores (h&lon,h&lat, h , True, 1,  lon, lat, True)  ; (ntim,49,120)
;  ftopo  = area_hi2lores (l&lon,l&lat, l , True, 1,  lon, lat, True)  ; (ntim,49,120)
;
;  system("/bin/rm -f " + fname_out)
;  fout = addfile (fname_out, "c")
;
;  htopo!0   = "lat"
;  htopo&lat = lat 
;  htopo!1   = "lon"
;  htopo&lon = lon 
;
;  ftopo!0   = "lat"
;  ftopo&lat = lat
;  ftopo!1   = "lon"
;  ftopo&lon = lon
;
;  fout->lon=lon
;  fout->lat=lat
;  fout->htopo=htopo
;  fout->ftopo=ftopo

  fout = addfile ("10min_grid.nc", "c")

  fout->lon=lon
  fout->lat=lat