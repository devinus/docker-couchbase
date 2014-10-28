FROM phusion/baseimage
MAINTAINER Devin Torres <devin@devintorr.es>

ENV COUCHBASE_VERSION 3.0.0

RUN \
  curl -O http://packages.couchbase.com/releases/$COUCHBASE_VERSION/couchbase-server-community_$COUCHBASE_VERSION-ubuntu12.04_amd64.deb && \
  dpkg -i couchbase-server-community_$COUCHBASE_VERSION-ubuntu12.04_amd64.deb && \
  rm couchbase-server-community_$COUCHBASE_VERSION-ubuntu12.04_amd64.deb

# http://docs.couchbase.com/admin/admin/Install/install-networkPorts.html
EXPOSE 4369 8091 8092 11207 11209 11210 11211 11214 11215 18091 18092 \
  21100 21101 21102 21103 21104 21105 21106 21107 21108 21109 \
  21110 21111 21112 21113 21114 21115 21116 21117 21118 21119 \
  21120 21121 21122 21123 21124 21125 21126 21127 21128 21129 \
  21130 21131 21132 21133 21134 21135 21136 21137 21138 21139 \
  21140 21141 21142 21143 21144 21145 21146 21147 21148 21149 \
  21150 21151 21152 21153 21154 21155 21156 21157 21158 21159 \
  21160 21161 21162 21163 21164 21165 21166 21167 21168 21169 \
  21170 21171 21172 21173 21174 21175 21176 21177 21178 21179 \
  21180 21181 21182 21183 21184 21185 21186 21187 21188 21189 \
  21190 21191 21192 21193 21194 21195 21196 21197 21198 21199 \
  21200 21201 21202 21203 21204 21205 21206 21207 21208 21209 \
  21210 21211 21212 21213 21214 21215 21216 21217 21218 21219 \
  21220 21221 21222 21223 21224 21225 21226 21227 21228 21229 \
  21230 21231 21232 21233 21234 21235 21236 21237 21238 21239 \
  21240 21241 21242 21243 21244 21245 21246 21247 21248 21249 \
  21250 21251 21252 21253 21254 21255 21256 21257 21258 21259 \
  21260 21261 21262 21263 21264 21265 21266 21267 21268 21269 \
  21270 21271 21272 21273 21274 21275 21276 21277 21278 21279 \
  21280 21281 21282 21283 21284 21285 21286 21287 21288 21289 \
  21290 21291 21292 21293 21294 21295 21296 21297 21298 21299

CMD ["/opt/couchbase/bin/couchbase-server", "--", "-noinput"]
