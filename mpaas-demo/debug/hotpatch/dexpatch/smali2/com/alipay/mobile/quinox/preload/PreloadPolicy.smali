.class public Lcom/alipay/mobile/quinox/preload/PreloadPolicy;
.super Ljava/lang/Object;
.source "PreloadPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/preload/PreloadPolicy$PushPreloadMainConfig;
    }
.end annotation


# static fields
.field public static final FLAG_ASYNC_STARTUP_WINDOW:I = 0x20

.field public static final FLAG_DONT_PRELOAD:I = 0x200

.field public static final FLAG_DO_NOT_PRELOAD_AP_VIEW:I = 0x80

.field public static final FLAG_INTERCEPT_SERVICE:I = 0x8

.field public static final FLAG_KEEP_FG:I = 0x100

.field public static final FLAG_KEEP_INSTRUMENTATION:I = 0x400

.field public static final FLAG_PRELOAD_ACTIVITY:I = 0x10

.field public static final FLAG_PRELOAD_ACTIVITY_LITE:I = 0x40

.field public static final FLAG_PRELOAD_BUNDLE_CLASSLOADER:I = 0x2

.field public static final FLAG_PRELOAD_FRAMEWORK:I = 0x4

.field public static final FLAG_PRELOAD_RES:I = 0x1

.field private static final a:I

.field private static b:Ljava/lang/Integer;

.field private static c:Lorg/json/JSONObject;

.field private static final d:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    const/16 v0, 0x100

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/lit8 v0, v0, 0x1f

    sput v0, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->a:I

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->b:Ljava/lang/Integer;

    .line 57
    sput-object v0, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->c:Lorg/json/JSONObject;

    .line 58
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->d:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 133
    sget-object v0, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->c:Lorg/json/JSONObject;

    if-nez v0, :cond_2

    .line 134
    const-class v0, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;

    monitor-enter v0

    .line 135
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->c:Lorg/json/JSONObject;

    if-nez v1, :cond_0

    .line 136
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 137
    const-string v2, "preload_policy_flag"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v3

    .line 138
    .local v2, "configStr":Ljava/lang/String;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 140
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->c:Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    goto :goto_0

    .line 141
    :catchall_0
    move-exception v1

    .line 142
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v3, "PreloadPolicy"

    invoke-static {v3, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v2    # "configStr":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-object v1, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->c:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    .line 147
    sget-object v1, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->d:Lorg/json/JSONObject;

    sput-object v1, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->c:Lorg/json/JSONObject;

    .line 149
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 151
    :cond_2
    :goto_1
    sget-object v0, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->c:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static componentToPreload(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Ljava/lang/String;

    .line 155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 156
    invoke-static {p0}, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    move-object v2, v1

    .line 157
    .local v2, "config":Lorg/json/JSONObject;
    move-object v2, v0

    sget-object v3, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->d:Lorg/json/JSONObject;

    if-eq v0, v3, :cond_0

    .line 158
    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 161
    .end local v2    # "config":Lorg/json/JSONObject;
    :cond_0
    return-object v1
.end method

.method public static getFlag(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 61
    sget-object v0, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->b:Ljava/lang/Integer;

    if-nez v0, :cond_a

    .line 62
    const-class v0, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->b:Ljava/lang/Integer;

    if-nez v1, :cond_9

    .line 64
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 66
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->getCommonPreloadBy()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 67
    .local v4, "preloadBy":Ljava/lang/String;
    move-object v4, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isUILaunch()Z

    move-result v2

    const/4 v5, 0x0

    if-nez v2, :cond_1

    .line 69
    invoke-static {p0}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->isUIEntryLaunch(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 70
    const-string v2, "berserker_enable_switch"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    const-string v2, "berserker-hotStart"

    move-object v4, v2

    goto :goto_0

    .line 76
    :cond_0
    const-string v2, "hotStart"

    move-object v4, v2

    goto :goto_0

    .line 79
    :cond_1
    monitor-exit v0

    return v5

    .line 83
    :cond_2
    :goto_0
    const/16 v2, 0xf

    .line 84
    .local v2, "defaultFlag":I
    const-string v5, "berserker"

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "berserker-hotStart"

    .line 85
    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    .line 87
    :cond_3
    const-string v5, "auto-clean-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 88
    const/16 v2, 0xc7

    goto :goto_2

    .line 89
    :cond_4
    const-string v5, "perf-sync"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 90
    sget v5, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->a:I

    move v2, v5

    goto :goto_2

    .line 86
    :cond_5
    :goto_1
    const/16 v2, 0x1f

    .line 93
    :cond_6
    :goto_2
    invoke-static {p0}, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v5

    .line 94
    .local v3, "config":Lorg/json/JSONObject;
    move-object v3, v5

    sget-object v6, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->d:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eq v5, v6, :cond_7

    .line 96
    :try_start_1
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sput-object v5, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->b:Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    goto :goto_3

    .line 97
    :catchall_0
    move-exception v5

    .line 98
    .local v5, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string v6, "PreloadPolicy"

    invoke-static {v6, v5}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_7
    :goto_3
    sget-object v5, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->b:Ljava/lang/Integer;

    if-nez v5, :cond_8

    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sput-object v5, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->b:Ljava/lang/Integer;

    .line 106
    :cond_8
    const-string v5, "PreloadPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "get flag: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->b:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    .end local v2    # "defaultFlag":I
    .end local v3    # "config":Lorg/json/JSONObject;
    .end local v4    # "preloadBy":Ljava/lang/String;
    :cond_9
    monitor-exit v0

    goto :goto_4

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 110
    :cond_a
    :goto_4
    sget-object v0, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getPushPreloadMainConfig(Landroid/content/Context;)Lcom/alipay/mobile/quinox/preload/PreloadPolicy$PushPreloadMainConfig;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 120
    invoke-static {p0}, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 121
    .local v2, "config":Lorg/json/JSONObject;
    move-object v2, v0

    sget-object v3, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->d:Lorg/json/JSONObject;

    if-eq v0, v3, :cond_0

    .line 123
    :try_start_0
    invoke-static {v2}, Lcom/alipay/mobile/quinox/preload/PreloadPolicy$PushPreloadMainConfig;->parseFrom(Lorg/json/JSONObject;)Lcom/alipay/mobile/quinox/preload/PreloadPolicy$PushPreloadMainConfig;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 124
    :catchall_0
    move-exception v0

    .line 125
    .local v0, "t":Ljava/lang/Throwable;
    const-string v3, "PreloadPolicy"

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_0
    return-object v1
.end method

.method public static isNeedPreloadActivity(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 114
    invoke-static {p0}, Lcom/alipay/mobile/quinox/preload/PreloadPolicy;->getFlag(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 115
    .local v2, "flag":I
    move v2, v0

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    and-int/lit8 v0, v2, 0x10

    if-nez v0, :cond_0

    and-int/lit8 v0, v2, 0x40

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method
