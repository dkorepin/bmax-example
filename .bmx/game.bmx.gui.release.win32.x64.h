#ifndef BMAX_EXAMPLE_GAME_BMX_GUI_RELEASE_WIN32_X64_H
#define BMAX_EXAMPLE_GAME_BMX_GUI_RELEASE_WIN32_X64_H

#include <brl.mod/blitz.mod/.bmx/blitz.bmx.release.win32.x64.h>
#include <brl.mod/appstub.mod/.bmx/appstub.bmx.release.win32.x64.h>
#include <brl.mod/audio.mod/.bmx/audio.bmx.release.win32.x64.h>
#include <brl.mod/bank.mod/.bmx/bank.bmx.release.win32.x64.h>
#include <brl.mod/bankstream.mod/.bmx/bankstream.bmx.release.win32.x64.h>
#include <brl.mod/base64.mod/.bmx/base64.bmx.release.win32.x64.h>
#include <brl.mod/basic.mod/.bmx/basic.bmx.release.win32.x64.h>
#include <brl.mod/bmploader.mod/.bmx/bmploader.bmx.release.win32.x64.h>
#include <brl.mod/bytebuffer.mod/.bmx/bytebuffer.bmx.release.win32.x64.h>
#include <brl.mod/clipboard.mod/.bmx/clipboard.bmx.release.win32.x64.h>
#include <brl.mod/collections.mod/.bmx/collections.bmx.release.win32.x64.h>
#include <brl.mod/d3d7max2d.mod/.bmx/d3d7max2d.bmx.release.win32.x64.h>
#include <brl.mod/d3d9max2d.mod/.bmx/d3d9max2d.bmx.release.win32.x64.h>
#include <brl.mod/data.mod/.bmx/data.bmx.release.win32.x64.h>
#include <brl.mod/directsoundaudio.mod/.bmx/directsoundaudio.bmx.release.win32.x64.h>
#include <brl.mod/eventqueue.mod/.bmx/eventqueue.bmx.release.win32.x64.h>
#include <brl.mod/freeaudioaudio.mod/.bmx/freeaudioaudio.bmx.release.win32.x64.h>
#include <brl.mod/freetypefont.mod/.bmx/freetypefont.bmx.release.win32.x64.h>
#include <brl.mod/glgraphics.mod/.bmx/glgraphics.bmx.release.win32.x64.h>
#include <brl.mod/glmax2d.mod/.bmx/glmax2d.bmx.release.win32.x64.h>
#include <brl.mod/gnet.mod/.bmx/gnet.bmx.release.win32.x64.h>
#include <brl.mod/jpgloader.mod/.bmx/jpgloader.bmx.release.win32.x64.h>
#include <brl.mod/map.mod/.bmx/map.bmx.release.win32.x64.h>
#include <brl.mod/matrix.mod/.bmx/matrix.bmx.release.win32.x64.h>
#include <brl.mod/maxlua.mod/.bmx/maxlua.bmx.release.win32.x64.h>
#include <brl.mod/maxunit.mod/.bmx/maxunit.bmx.release.win32.x64.h>
#include <brl.mod/maxutil.mod/.bmx/maxutil.bmx.release.win32.x64.h>
#include <brl.mod/objectlist.mod/.bmx/objectlist.bmx.release.win32.x64.h>
#include <brl.mod/oggloader.mod/.bmx/oggloader.bmx.release.win32.x64.h>
#include <brl.mod/openalaudio.mod/.bmx/openalaudio.bmx.release.win32.x64.h>
#include <brl.mod/platform.mod/.bmx/platform.bmx.release.win32.x64.h>
#include <brl.mod/pngloader.mod/.bmx/pngloader.bmx.release.win32.x64.h>
#include <brl.mod/quaternion.mod/.bmx/quaternion.bmx.release.win32.x64.h>
#include <brl.mod/randomdefault.mod/.bmx/randomdefault.bmx.release.win32.x64.h>
#include <brl.mod/retro.mod/.bmx/retro.bmx.release.win32.x64.h>
#include <brl.mod/tgaloader.mod/.bmx/tgaloader.bmx.release.win32.x64.h>
#include <brl.mod/threadpool.mod/.bmx/threadpool.bmx.release.win32.x64.h>
#include <brl.mod/timer.mod/.bmx/timer.bmx.release.win32.x64.h>
#include <brl.mod/timerdefault.mod/.bmx/timerdefault.bmx.release.win32.x64.h>
#include <brl.mod/uuid.mod/.bmx/uuid.bmx.release.win32.x64.h>
#include <brl.mod/volumes.mod/.bmx/volumes.bmx.release.win32.x64.h>
#include <brl.mod/wavloader.mod/.bmx/wavloader.bmx.release.win32.x64.h>
#include <pub.mod/freejoy.mod/.bmx/freejoy.bmx.release.win32.x64.h>
#include <pub.mod/freeprocess.mod/.bmx/freeprocess.bmx.release.win32.x64.h>
#include <pub.mod/glad.mod/.bmx/glad.bmx.release.win32.x64.h>
#include <pub.mod/nfd.mod/.bmx/nfd.bmx.release.win32.x64.h>
#include <pub.mod/nx.mod/.bmx/nx.bmx.release.win32.x64.h>
#include <pub.mod/opengles.mod/.bmx/opengles.bmx.release.win32.x64.h>
#include <pub.mod/opengles3.mod/.bmx/opengles3.bmx.release.win32.x64.h>
#include <pub.mod/vulkan.mod/.bmx/vulkan.bmx.release.win32.x64.h>
#include <pub.mod/xmmintrin.mod/.bmx/xmmintrin.bmx.release.win32.x64.h>
int _bb_main();
struct _m_game_Tank_obj;
void __m_game_Tank_New(struct _m_game_Tank_obj* o);
struct BBClass__m_game_Tank {
	BBClass*  super;
	void      (*free)( BBObject *o );
	BBDebugScope* debug_scope;
	unsigned int instance_size;
	void      (*ctor)( BBOBJECT o );
	void      (*dtor)( BBOBJECT o );
	BBSTRING  (*ToString)( BBOBJECT x );
	int       (*Compare)( BBOBJECT x,BBOBJECT y );
	BBOBJECT  (*SendMessage)( BBOBJECT o,BBOBJECT m,BBOBJECT s );
	BBINTERFACETABLE itable;
	void*     extra;
	unsigned int obj_size;
	unsigned int instance_count;
	unsigned int fields_offset;
};

struct _m_game_Tank_obj {
	struct BBClass__m_game_Tank* clas;
};
extern struct BBClass__m_game_Tank _m_game_Tank;

#endif
