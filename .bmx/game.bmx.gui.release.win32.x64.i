import brl.blitz
import brl.appstub
import brl.audio
import brl.bank
import brl.bankstream
import brl.base64
import brl.basic
import brl.bmploader
import brl.bytebuffer
import brl.clipboard
import brl.collections
import brl.d3d7max2d
import brl.d3d9max2d
import brl.data
import brl.directsoundaudio
import brl.eventqueue
import brl.freeaudioaudio
import brl.freetypefont
import brl.glgraphics
import brl.glmax2d
import brl.gnet
import brl.jpgloader
import brl.map
import brl.matrix
import brl.maxlua
import brl.maxunit
import brl.maxutil
import brl.objectlist
import brl.oggloader
import brl.openalaudio
import brl.platform
import brl.pngloader
import brl.quaternion
import brl.randomdefault
import brl.retro
import brl.tgaloader
import brl.threadpool
import brl.timer
import brl.timerdefault
import brl.uuid
import brl.volumes
import brl.wavloader
import pub.freejoy
import pub.freeprocess
import pub.glad
import pub.nfd
import pub.nx
import pub.opengles
import pub.opengles3
import pub.vulkan
import pub.xmmintrin
DrawObject^Object{
-New()="__m_game_DrawObject_New"
-Draw%(x#,y#)="_m_game_DrawObject_Draw_ff"
}="_m_game_DrawObject"
Tank^DrawObject{
SPEED#=5.00000000#
.x#&
.y#&
-New()="__m_game_Tank_New"
-New(x#,y#)="_m_game_Tank_New_ff"
-Update%()="_m_game_Tank_Update"
}="_m_game_Tank"
BumObject^Object{
-New()="_m_game_BumObject_New"
}="_m_game_BumObject"
Player:Tank&=mem:p("_m_game_Player")