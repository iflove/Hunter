.class public Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusProxy;
.super Ljava/lang/Object;
.source "HypnusProxy.java"


# static fields
.field public static final ACTIONINFO:Ljava/lang/String; = "/sys/kernel/hypnus/action_info"

.field public static final ACTION_AGAINST_IDLE:I = 0x10

.field public static final ACTION_ANIMATION:I = 0xb

.field public static final ACTION_AUDIO_PLAYBACK:I = 0x2

.field public static final ACTION_BURST_ANR:I = 0x13

.field public static final ACTION_BURST_BM:I = 0x14

.field public static final ACTION_BURST_GC:I = 0x11

.field public static final ACTION_BURST_LM:I = 0x12

.field public static final ACTION_DOWNLOAD:I = 0x3

.field public static final ACTION_IDLE:I = 0x0

.field public static final ACTION_INSTALLATION:I = 0xf

.field public static final ACTION_IO:I = 0xc

.field public static final ACTION_LAUNCH:I = 0xd

.field public static final ACTION_NONE:I = 0x1

.field public static final ACTION_PERFD:I = 0x63

.field public static final ACTION_PREVIEW:I = 0x5

.field public static final ACTION_PRE_LAUNCH:I = 0xa

.field public static final ACTION_RESUME:I = 0x9

.field public static final ACTION_SCROLLING_H:I = 0x8

.field public static final ACTION_SCROLLING_V:I = 0x7

.field public static final ACTION_SNAPSHOT:I = 0xe

.field public static final ACTION_VIDEO_ENCODING:I = 0x6

.field public static final ACTION_VIDEO_PLAYBACK:I = 0x4

.field public static final BURST_TYPE_GC:I = 0x1

.field public static final BURST_TYPE_LM:I = 0x2

.field public static final HYPNUS_STATICS_ON:Ljava/lang/Boolean;

.field public static final NOTIFICATIONINFO:Ljava/lang/String; = "/sys/kernel/hypnus/notification_info"

.field public static final SCENEINFO:Ljava/lang/String; = "/sys/kernel/hypnus/scene_info"

.field public static final SCENE_BENCHMARK:I = 0x6

.field public static final SCENE_BOOT:I = 0xd

.field public static final SCENE_BROWSER:I = 0x3

.field public static final SCENE_CAMERA:I = 0x2

.field public static final SCENE_EBOOK:I = 0xb

.field public static final SCENE_GALLERY:I = 0x9

.field public static final SCENE_HEAVY_GAME:I = 0x5

.field public static final SCENE_IO:I = 0xe

.field public static final SCENE_LAUNCHER:I = 0xc

.field public static final SCENE_LIGHT_GAME:I = 0x4

.field public static final SCENE_LISTVIEW:I = 0x8

.field public static final SCENE_MUSIC:I = 0x1

.field public static final SCENE_NAVIGATION:I = 0xa

.field public static final SCENE_NORMAL:I = 0x0

.field public static final SCENE_SUPERAPP:I = 0xf

.field public static final SCENE_VIDEO:I = 0x7

.field public static final TIME_ANIMATION:I = 0x258

.field public static final TIME_ANIMATION_100:I = 0x64

.field public static final TIME_ANIMATION_300:I = 0x12c

.field public static final TIME_ANIMATION_500:I = 0x1f4

.field public static final TIME_BM:I = 0x32

.field public static final TIME_BURST:I = 0xc7

.field public static final TIME_DEX2OAT:I = 0x4e20

.field public static final TIME_INSTALLATION:I = 0x7530

.field public static final TIME_LAUNCH:I = 0x1388

.field public static final TIME_MAX:I = 0x927c0

.field public static final TIME_PRE_LAUNCH:I = 0x96

.field public static final TIME_SERVICE_DELAY:I = 0x186a0

.field public static final VERSION:Ljava/lang/String; = "M08"

.field public static final VERSIONINFO:Ljava/lang/String; = "/sys/kernel/hypnus/version"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    const-string v0, "persist.sys.hypnus.statics"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/SystemPropertiesWrapper;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/perfhelper/oppo/HypnusProxy;->HYPNUS_STATICS_ON:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
