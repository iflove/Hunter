.class public Lcom/alipay/mobile/quinox/utils/QuinoxPrivacyUtil;
.super Ljava/lang/Object;
.source "QuinoxPrivacyUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/quinox/utils/QuinoxPrivacyUtil$FuseJudge;
    }
.end annotation


# static fields
.field private static final KILLABLE_BLACK_LIST_COMPONENTS:[Ljava/lang/String;

.field public static final SUICIDE:Z = true

.field private static final TAG:Ljava/lang/String; = "QuinoxPrivacyUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 29
    const-string v0, "com.alipay.mobile.clean.PowerSaveService"

    const-string v1, "com.alipay.mobile.base.network.NetworkStartMainProcService "

    const-string v2, "com.alipay.mobile.performance.sync.PerfSyncService"

    const-string v3, "com.alipay.mobile.common.fgbg.FgBgMonitorService"

    const-string v4, "com.alipay.android.phone.mobilesdk.apm.service.APMInnerService"

    const-string v5, "com.alipay.android.launcher.service.LauncherService"

    const-string v6, "com.alipay.mobile.healthcommon.stepcounter.APMainStepService"

    const-string v7, "com.alipay.android.phone.offlinepay.nfc.CardService"

    const-string v8, "com.alipay.mobile.clean.CleanService"

    const-string v9, "org.rome.android.ipp.binder.IppService"

    const-string v10, "com.alipay.mobile.clean.RestoreService"

    const-string v11, "com.alipay.mobile.quinox.preload.PreloadReceiver"

    const-string v12, "com.alipay.mobile.quinox.preload.PreloadService"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/utils/QuinoxPrivacyUtil;->KILLABLE_BLACK_LIST_COMPONENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static killSelfNoRestart(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "quinox.killSelfNoRestart: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QuinoxPrivacyUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x1

    :try_start_0
    const-string v2, "com.alipay.mobile.clean.CleanUtil"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "killSelfNoRestart"

    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p0, v4, v6

    .line 83
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    goto :goto_0

    .line 85
    :catchall_0
    move-exception v2

    .line 86
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "killSelfNoRestart fail"

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    const-string v2, "kill process"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Z)V

    .line 90
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 91
    return-void
.end method

.method public static setupNetworkMonitor(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 94
    const-string v0, "QuinoxPrivacyUtil"

    const-string v1, "setup network monitor"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-boolean v1, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->NEW_PRIVACY:Z

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->isUserAgreed(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    :try_start_0
    const-string v1, "com.alipay.mobile.permission.NetworkMonitor"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "init"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    .line 102
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    return-void

    .line 103
    :catchall_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "fail setup network monitor"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void

    .line 97
    :cond_1
    :goto_0
    return-void
.end method

.method public static shouldSuicide(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "processAlias"    # Ljava/lang/String;

    .line 49
    sget-boolean v0, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->NEW_PRIVACY:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 50
    return v1

    .line 56
    :cond_0
    invoke-static {p0}, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->isUserAgreed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    return v1

    .line 62
    :cond_1
    sget-object v0, Lcom/alipay/mobile/quinox/utils/QuinoxPrivacyUtil;->KILLABLE_BLACK_LIST_COMPONENTS:[Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/SystemUtil;->canKillProcessByComponents([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 63
    .local v2, "killableComponent":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 64
    .local v0, "canKillByComponent":Z
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "killableComponent: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QuinoxPrivacyUtil"

    invoke-static {v4, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    if-nez v0, :cond_2

    .line 66
    return v1

    .line 70
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {p0, v2, v5, v6, p1}, Lcom/alipay/mobile/quinox/utils/QuinoxPrivacyUtil$FuseJudge;->shouldKillByFuse(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)Z

    move-result v1

    .line 71
    .local v1, "canKillByFuse":Z
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "can kill by fuse: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return v1
.end method
