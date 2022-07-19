.class public Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;
.super Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;
.source "DynamicReleaseApiImpl.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/a/b;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApi;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;->c:Z

    .line 50
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;->a:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/a/b;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/a/b;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/a/b;

    .line 52
    return-void
.end method

.method private a(Landroid/os/Bundle;ZLcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;)V
    .locals 12
    .param p1, "requestData"    # Landroid/os/Bundle;
    .param p2, "isForce"    # Z
    .param p3, "callback"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;

    .line 162
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/a/b;

    const-string v1, "dynamicrelease_bundles"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/a/b;->a(Ljava/util/List;)V

    .line 165
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/HotPatchUtils;->sDelay:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b;

    const-string v1, "DynamicReleaseApi"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/HotPatchUtils;->sDelay:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Give up trigDynamicRelease : sDelay="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/HotPatchUtils;->sDelay:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void

    .line 171
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 172
    .local v0, "gapCheckSP":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 173
    .local v2, "nowTime":J
    const-string v4, "dynamicrelease_lastCheckTime"

    if-nez p2, :cond_1

    .line 174
    const-wide/16 v5, 0x0

    invoke-interface {v0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 175
    .local v5, "lastCheckTime":J
    sub-long v7, v2, v5

    sget-wide v9, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/a;->a:J

    cmp-long v11, v7, v9

    if-gez v11, :cond_1

    .line 176
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sub-long v8, v2, v5

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " < MIN_DURATION("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/a;->a:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "), return."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v1, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void

    .line 180
    .end local v5    # "lastCheckTime":J
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 182
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;->c:Z

    .line 184
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v1

    new-instance v4, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl$1;

    invoke-direct {v4, p0, p1, p3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl$1;-><init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;Landroid/os/Bundle;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;)V

    const-string v5, "invokeDynamicRelease"

    invoke-virtual {v1, v4, v5}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;

    .line 39
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public checkBundleStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "bizCode"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;->b:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/a/b;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public isBundleExist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "bundleName"    # Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;->checkBundleStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/alipay/mobile/quinox/api/QuinoxAgent;->getInstance()Lcom/alipay/mobile/quinox/api/QuinoxAgent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/api/QuinoxAgent;->findBundleByName(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isBundleExist(Ljava/util/List;)Z
    .locals 4
    .param p1, "bundleNames"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 73
    .local v2, "bundleName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;->isBundleExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 74
    return v0

    .line 76
    .end local v2    # "bundleName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 78
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 69
    :cond_3
    :goto_1
    return v0
.end method

.method public requireBundle(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;)V
    .locals 3
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 95
    .local v2, "bundleNames":Ljava/util/ArrayList;
    move-object v2, v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    if-eqz p2, :cond_0

    new-instance v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;

    invoke-direct {v1, p2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;-><init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallback;)V

    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;->requireBundle(Ljava/util/List;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;)V

    .line 97
    return-void
.end method

.method public requireBundle(Ljava/util/List;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;)V
    .locals 5
    .param p1, "bundleNames"    # Ljava/util/List;
    .param p2, "observer"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;",
            ")V"
        }
    .end annotation

    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 102
    .local v2, "requestData":Landroid/os/Bundle;
    move-object v2, v0

    sget-object v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->WHEN_USER:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->getValue()I

    move-result v3

    const-string v4, "dynamicrelease_when"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "dynamicrelease_bundles"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "requireBundle, bundleNames="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DynamicReleaseApi"

    invoke-static {v3, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    if-eqz p2, :cond_0

    new-instance v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;

    invoke-direct {v1, p2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;-><init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseObserver;)V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;->a(Landroid/os/Bundle;ZLcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;)V

    .line 109
    return-void
.end method

.method public requireBundleWithDownloadPage(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageCallback;)V
    .locals 0
    .param p1, "config"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageConfig;
    .param p2, "callback"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/page/BundleDownloadPageCallback;

    .line 119
    return-void
.end method

.method public declared-synchronized trigDynamicRelease(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;)V
    .locals 6
    .param p1, "timing"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    monitor-enter p0

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "isForce":Z
    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl$2;->$SwitchMap$com$alipay$android$phone$mobilecommon$dynamicrelease$strategy$StartTiming:[I

    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    move-object v2, v3

    goto :goto_0

    .line 147
    :cond_0
    iget-boolean v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;->c:Z

    move v0, v1

    move-object v2, v3

    goto :goto_0

    .line 144
    .end local p0    # "this":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;
    :cond_1
    const/4 v0, 0x0

    .line 145
    move-object v2, v3

    goto :goto_0

    .line 141
    :cond_2
    const/4 v0, 0x1

    .line 142
    move-object v2, v3

    goto :goto_0

    .line 127
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/crash/CrashCenter;->isLastProcessStartupCrash()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 128
    const-string v1, "DynamicReleaseApi"

    const-string v2, "crash last startup"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const/4 v0, 0x1

    move-object v2, v3

    goto :goto_0

    .line 131
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    move-object v2, v3

    .line 132
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v4, "ig_isDelayDR"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 133
    const-string v1, "DynamicReleaseApi"

    const-string/jumbo v3, "skip, as no crash happen last startup"

    invoke-static {v1, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    .line 136
    :cond_5
    :try_start_1
    iget-boolean v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;->c:Z

    move v0, v1

    .line 139
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    nop

    .line 152
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v2, "requestData":Landroid/os/Bundle;
    move-object v2, v1

    const-string v4, "dynamicrelease_when"

    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->getValue()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    const-string v1, "DynamicReleaseApi"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "trigDynamicRelease, isForce="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", timing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-direct {p0, v2, v0, v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;->a(Landroid/os/Bundle;ZLcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 123
    .end local v0    # "isForce":Z
    .end local v2    # "requestData":Landroid/os/Bundle;
    .end local p1    # "timing":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
