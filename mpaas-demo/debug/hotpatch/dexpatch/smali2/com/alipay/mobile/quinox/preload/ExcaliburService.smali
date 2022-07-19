.class public Lcom/alipay/mobile/quinox/preload/ExcaliburService;
.super Landroid/app/Service;
.source "ExcaliburService.java"


# static fields
.field static final CHANNEL_ID:Ljava/lang/String; = "preload_helper"

.field static final MAGIC_CODE:I = 0xabc666

.field public static final START_FG_SRV_API:Ljava/lang/String; = "startFgSrvApi"

.field static final TAG:Ljava/lang/String; = "ExcaliburService"

.field private static a:Z

.field static sCallbackField:Ljava/lang/reflect/Field;

.field static sH:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 125
    invoke-static {}, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->hookIfPossibleAndNeeded()Z

    .line 126
    invoke-static {}, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->createNotificationChannelIfNeeded()V

    .line 127
    return-void
.end method

.method static canHook()Z
    .locals 12

    .line 71
    sget-object v0, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->sCallbackField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->sH:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 72
    return v1

    .line 74
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getDeviceProperty()Lcom/alipay/mobile/common/logging/api/DeviceProperty;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/DeviceProperty;->isHuaweiDevice()Z

    move-result v0

    const-string v2, "ExcaliburService"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_1

    .line 75
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "can\'t do it in huawei 8.0+ device."

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return v3

    .line 79
    :cond_1
    :try_start_0
    const-string v0, "android.app.ActivityThread$H"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v4, 0x0

    move-object v5, v4

    .line 80
    .local v5, "hClass":Ljava/lang/Class;
    const-string v6, "SCHEDULE_CRASH"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 82
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    move-object v6, v4

    .line 83
    .local v6, "activityThreadClass":Ljava/lang/Class;
    move-object v6, v0

    const-string v7, "mH"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    move-object v7, v4

    .line 84
    .local v7, "hField":Ljava/lang/reflect/Field;
    move-object v7, v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 85
    const-string v0, "currentActivityThread"

    new-array v8, v3, [Ljava/lang/Class;

    invoke-virtual {v6, v0, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v8, v4

    .line 86
    .local v8, "currentActivityThreadMethod":Ljava/lang/reflect/Method;
    move-object v8, v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 87
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {v8, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 88
    .local v0, "activityThread":Ljava/lang/Object;
    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Handler;

    .line 89
    .local v9, "h":Landroid/os/Handler;
    const-class v10, Landroid/os/Handler;

    const-string v11, "mCallback"

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 90
    .local v4, "callbackField":Ljava/lang/reflect/Field;
    move-object v4, v10

    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 91
    sput-object v4, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->sCallbackField:Ljava/lang/reflect/Field;

    .line 92
    sput-object v9, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->sH:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    return v1

    .line 94
    .end local v0    # "activityThread":Ljava/lang/Object;
    .end local v4    # "callbackField":Ljava/lang/reflect/Field;
    .end local v5    # "hClass":Ljava/lang/Class;
    .end local v6    # "activityThreadClass":Ljava/lang/Class;
    .end local v7    # "hField":Ljava/lang/reflect/Field;
    .end local v8    # "currentActivityThreadMethod":Ljava/lang/reflect/Method;
    .end local v9    # "h":Landroid/os/Handler;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    return v3
.end method

.method static createNotificationChannelIfNeeded()V
    .locals 6

    .line 130
    sget-boolean v0, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->a:Z

    if-eqz v0, :cond_0

    .line 131
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->a:Z

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    .line 135
    return-void

    .line 137
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/ContextHolder;->getContext()Landroid/app/Application;

    move-result-object v0

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v1, 0x0

    move-object v2, v1

    .line 138
    .local v2, "nm":Landroid/app/NotificationManager;
    move-object v2, v0

    if-nez v0, :cond_2

    .line 139
    return-void

    .line 141
    :cond_2
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v3, 0x2

    const-string v4, "preload_helper"

    const-string v5, "LinkService"

    invoke-direct {v0, v4, v5, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 142
    .local v1, "channel":Landroid/app/NotificationChannel;
    move-object v1, v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 143
    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 144
    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 145
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 146
    return-void
.end method

.method public static deleteChannel()V
    .locals 3

    .line 149
    const-string v0, "preload_helper"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    .line 150
    return-void

    .line 152
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/ContextHolder;->getContext()Landroid/app/Application;

    move-result-object v1

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/4 v2, 0x0

    .line 153
    .local v2, "nm":Landroid/app/NotificationManager;
    move-object v2, v1

    if-nez v1, :cond_1

    .line 154
    return-void

    .line 157
    :cond_1
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 158
    invoke-virtual {v2, v0}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :cond_2
    return-void

    .line 160
    :catchall_0
    move-exception v0

    .line 161
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "ExcaliburService"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    .end local v0    # "t":Ljava/lang/Throwable;
    return-void
.end method

.method public static hookIfPossibleAndNeeded()Z
    .locals 4

    .line 107
    invoke-static {}, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->canHook()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 109
    return v1

    .line 112
    :cond_0
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->sCallbackField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->sH:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    .line 117
    .local v2, "callback":Ljava/lang/Object;
    move-object v2, v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.alipay.mobile.rome.voicebroadcast"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1

    .line 113
    .end local v2    # "callback":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/IllegalAccessException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t access ActivityThread$H::mCallback. callbackField = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->sCallbackField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", h = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->sH:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "ExcaliburService"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    return v1
.end method

.method public static startAsFgOrStop(Landroid/content/Context;ZLandroid/content/Intent;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startOrStop"    # Z
    .param p2, "i"    # Landroid/content/Intent;

    .line 42
    const/4 v0, 0x1

    const-string v1, "ExcaliburService"

    if-eqz p1, :cond_2

    .line 43
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    .line 45
    :try_start_1
    invoke-virtual {p0, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 52
    goto :goto_0

    .line 46
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Not allowed to start service "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "startOrStop":Z
    .end local p2    # "i":Landroid/content/Intent;
    throw v2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 48
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "startOrStop":Z
    .restart local p2    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 49
    .local v2, "ise":Ljava/lang/IllegalStateException;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    const-string v3, "startFgSrvApi"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    invoke-virtual {p0, p2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 52
    nop

    .end local v2    # "ise":Ljava/lang/IllegalStateException;
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p0, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p0, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 59
    :goto_0
    return v0

    .line 60
    :catch_1
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method goForeground()Z
    .locals 5

    .line 172
    :try_start_0
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 174
    .local v0, "rv":Landroid/widget/RemoteViews;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_0

    .line 175
    new-instance v1, Landroid/app/Notification$Builder;

    const-string v3, "preload_helper"

    invoke-direct {v1, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .local v1, "builder":Landroid/app/Notification$Builder;
    goto :goto_0

    .line 177
    .end local v1    # "builder":Landroid/app/Notification$Builder;
    :cond_0
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 179
    .restart local v1    # "builder":Landroid/app/Notification$Builder;
    :goto_0
    nop

    .line 180
    const v3, 0xabc666

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 181
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 182
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 183
    .local v4, "n":Landroid/app/Notification;
    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    return v2

    .line 185
    .end local v0    # "rv":Landroid/widget/RemoteViews;
    .end local v1    # "builder":Landroid/app/Notification$Builder;
    .end local v4    # "n":Landroid/app/Notification;
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ExcaliburService"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    const/4 v1, 0x0

    return v1
.end method

.method goForegroundCompatAndDelayedStop(Z)V
    .locals 5
    .param p1, "startFgSrvApi"    # Z

    .line 199
    if-nez p1, :cond_0

    .line 201
    return-void

    .line 203
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    const-string v1, "preload_helper"

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 206
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 208
    .local v0, "n":Landroid/app/Notification;
    const v1, 0xabc666

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->startForeground(ILandroid/app/Notification;)V

    .line 209
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/alipay/mobile/quinox/preload/ExcaliburService$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/quinox/preload/ExcaliburService$1;-><init>(Lcom/alipay/mobile/quinox/preload/ExcaliburService;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 215
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 295
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 219
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "ExcaliburService"

    const-string v2, "onStartCommand"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const-string v3, "startFgSrvApi"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 221
    .local v3, "startFgSrvApi":Z
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->hookIfPossibleAndNeeded()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 222
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "Hooked successfully."

    invoke-interface {v4, v1, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->goForeground()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 225
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string v5, "Service has been promoted to fg."

    invoke-interface {v4, v1, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_2

    .line 228
    new-array v0, v0, [I

    aput v2, v0, v2

    .line 229
    .local v0, "checkCount":[I
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v4, 0x0

    .line 230
    .local v4, "handler":Landroid/os/Handler;
    move-object v4, v2

    new-instance v5, Lcom/alipay/mobile/quinox/preload/ExcaliburService$2;

    invoke-direct {v5, p0, v0, v4}, Lcom/alipay/mobile/quinox/preload/ExcaliburService$2;-><init>(Lcom/alipay/mobile/quinox/preload/ExcaliburService;[ILandroid/os/Handler;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 276
    nop

    .end local v0    # "checkCount":[I
    .end local v4    # "handler":Landroid/os/Handler;
    goto :goto_2

    .line 278
    :cond_1
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->goForegroundCompatAndDelayedStop(Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "se":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 282
    .end local v0    # "se":Ljava/lang/SecurityException;
    :cond_2
    :goto_1
    goto :goto_2

    .line 285
    :cond_3
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/quinox/preload/ExcaliburService;->goForegroundCompatAndDelayedStop(Z)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 288
    goto :goto_2

    .line 286
    :catch_1
    move-exception v0

    .line 287
    .restart local v0    # "se":Ljava/lang/SecurityException;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    .end local v0    # "se":Ljava/lang/SecurityException;
    :goto_2
    const/4 v0, 0x2

    return v0
.end method
