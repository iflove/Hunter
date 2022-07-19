.class public Lcom/alipay/mobile/quinox/perfhelper/hw/LogPowerProxy;
.super Ljava/lang/Object;
.source "LogPowerProxy.java"


# static fields
.field public static final ACTIVITY_PAUSED:I = 0x65

.field public static final ACTIVITY_RESUMED:I = 0x64

.field public static final ADD_PROCESS_DEPENDENCY:I = 0xa6

.field public static final ADD_VIEW:I = 0x97

.field public static final ALARM_BLOCKED:I = 0x73

.field public static final ALARM_START:I = 0x79

.field public static final ALL_DOWNLOAD_FINISH:I = 0x6e

.field public static final APPWIDGET_ENABLED:I = 0xa8

.field public static final APP_EXIT:I = 0x6c

.field public static final APP_LAUNCHER:I = 0x6d

.field public static final APP_PROCESS_EXIT:I = 0x70

.field public static final APP_PROCESS_START:I = 0x6f

.field public static final APP_RUN_BG:I = 0x72

.field public static final APP_RUN_FRONT:I = 0x71

.field public static final APP_START_SPEEDUP:I = 0x8b

.field public static final AUDIO_SESSION_ID_NEW:I = 0xa2

.field public static final AUDIO_SESSION_ID_RELEASE:I = 0xa3

.field public static final AUDIO_SESSION_START:I = 0xa4

.field public static final AUDIO_SESSION_STOP:I = 0xa5

.field public static final AUDIO_START:I = 0x93

.field public static final BLE_SOCKECT_CLOSED:I = 0xad

.field public static final BLE_SOCKECT_CONNECTED:I = 0xac

.field public static final BT_ACTIVE_APP:I = 0xb5

.field public static final BT_INACTIVE_APP:I = 0xb6

.field public static final COM_THERMAL_EVENT:I = 0x92

.field public static final CPU_LOAD_ABNORMAL:I = 0xb9

.field public static final DISABLE_SENSOR:I = 0x90

.field public static final ENABLE_SENSOR:I = 0x8f

.field public static final END_CAMERA:I = 0x86

.field public static final END_CHG_ROTATION:I = 0x82

.field public static final END_WEBKIT_CANVAS:I = 0x84

.field public static final FIRST_IAWARE_TAG:I = 0x7d0

.field public static final FLING_FINISH:I = 0x9b

.field public static final FLING_START:I = 0x9a

.field public static final FREEZER_EXCEPTION:I = 0x94

.field public static final FULL_SCREEN:I = 0x78

.field public static final FULL_SCREEN_END:I = 0x87

.field public static final GAMEOF3D_PAUSED:I = 0x6b

.field public static final GAMEOF3D_RESUMED:I = 0x6a

.field public static final GPS_END:I = 0x9d

.field public static final GPS_START:I = 0x9c

.field public static final GPU_DRAW:I = 0x99

.field public static final HARD_KEY_EVENT:I = 0xae

.field public static final HW_PUSH_FINISH:I = 0x77

.field public static final KEYBOARD_HIDE:I = 0x76

.field public static final KEYBOARD_SHOW:I = 0x75

.field public static final LAST_IAWARE_TAG:I = 0xbb7

.field public static final LOW_POWER_AUDIO_RESET:I = 0xab

.field public static final LOW_POWER_AUDIO_START:I = 0xa9

.field public static final LOW_POWER_AUDIO_STOP:I = 0xaa

.field public static final MEDIA_DECODE_TYPE:I = 0x8a

.field public static final MEDIA_RECORDER_END:I = 0xb2

.field public static final MEDIA_RECORDER_START:I = 0xb1

.field public static final MIME_TYPE:I = 0x7f

.field public static final MUSIC_AUDIO_PLAY:I = 0x8c

.field public static final NATIVE_ACTIVITY_CREATED:I = 0xba

.field public static final NATIVE_ACTIVITY_DESTROYED:I = 0xbb

.field public static final NOTIFICATION_CANCEL:I = 0x7b

.field public static final NOTIFICATION_CANCEL_ALL:I = 0x7c

.field public static final NOTIFICATION_ENQUEUE:I = 0x7a

.field public static final NOTIFICATION_UPDATE:I = 0xc3

.field public static final PC_WEBVIEW_END:I = 0x96

.field public static final PC_WEBVIEW_START:I = 0x95

.field public static final REMOVE_PROCESS_DEPENDENCY:I = 0xa7

.field public static final REMOVE_VIEW:I = 0x98

.field public static final SCREEN_OFF:I = 0x74

.field public static final SCREEN_SHOT_END:I = 0xb0

.field public static final SCREEN_SHOT_START:I = 0xaf

.field public static final SPEED_UP_END:I = 0xb4

.field public static final SPEED_UP_START:I = 0xb3

.field public static final START_CAMERA:I = 0x81

.field public static final START_CHG_ROTATION:I = 0x80

.field public static final START_WEBKIT_CANVAS:I = 0x83

.field public static final SURFACEVIEW_CREATED:I = 0x8d

.field public static final SURFACEVIEW_DESTROYED:I = 0x8e

.field public static final TEST_FOR_CHANNEL:I = 0x186a0

.field public static final TEXTUREVIEW_CREATED:I = 0xb7

.field public static final TEXTUREVIEW_DESTROYED:I = 0xb8

.field public static final THERMAL_LAUNCH:I = 0x91

.field public static final TOUCH_DOWN:I = 0x7d

.field public static final TOUCH_UP:I = 0x7e

.field public static final TRASH_WAKELOCK:I = 0x85

.field public static final VIDEO_END:I = 0x89

.field public static final VIDEO_START:I = 0x88

.field public static final WAKELOCK_ACQUIRED:I = 0xa0

.field public static final WAKELOCK_RELEASED:I = 0xa1

.field public static final WEBPAGE_FINISHED:I = 0x69

.field public static final WEBPAGE_STARTED:I = 0x68

.field public static final WEBVIEW_PAUSED:I = 0x67

.field public static final WEBVIEW_RESUMED:I = 0x66

.field public static final WIFI_SCAN_END:I = 0x9f

.field public static final WIFI_SCAN_START:I = 0x9e

.field private static a:Z

.field private static b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/quinox/perfhelper/hw/LogPowerProxy;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Z
    .locals 3

    .line 108
    const-string v0, "LogPowerProxy"

    sget-boolean v1, Lcom/alipay/mobile/quinox/perfhelper/hw/LogPowerProxy;->a:Z

    if-eqz v1, :cond_0

    .line 109
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/hw/LogPowerProxy;->available()Z

    move-result v0

    return v0

    .line 112
    :cond_0
    :try_start_0
    const-string v1, "com.huawei.pgmng.log.LogPower"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/quinox/perfhelper/hw/LogPowerProxy;->b:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "LogPower error"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 113
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    nop

    .line 118
    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/quinox/perfhelper/hw/LogPowerProxy;->a:Z

    .line 120
    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/hw/LogPowerProxy;->available()Z

    move-result v0

    return v0
.end method

.method public static available()Z
    .locals 1

    .line 124
    sget-object v0, Lcom/alipay/mobile/quinox/perfhelper/hw/LogPowerProxy;->b:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static push(I)I
    .locals 7
    .param p0, "tag"    # I

    .line 129
    const-string v0, "LogPowerProxy"

    invoke-static {}, Lcom/alipay/mobile/quinox/perfhelper/hw/LogPowerProxy;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/perfhelper/hw/LogPowerProxy;->b:Ljava/lang/Class;

    const-string v2, "push"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 132
    .local v1, "ret":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "push "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    return v1

    .line 134
    .end local v1    # "ret":I
    :catchall_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "push fail"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method
