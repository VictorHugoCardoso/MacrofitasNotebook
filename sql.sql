SELECT ST_AsText(ST_GeomFromGeoJSON('
									{
									"type":"Point","coordinates":[-54.20746970795528,-54.20746970795528],
									"crs":{"type":"name","properties":{"name":"EPSG:4236"}}
									}')) As wkt;


/* SELECT ST_GeomFromText('POINT(-54.20746970795528 -25.22572956192196)', 4326) */