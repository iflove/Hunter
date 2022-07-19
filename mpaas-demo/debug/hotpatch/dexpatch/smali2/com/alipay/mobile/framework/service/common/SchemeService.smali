.class public abstract Lcom/alipay/mobile/framework/service/common/SchemeService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "SchemeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/framework/service/common/SchemeService$SchemeHandler;
    }
.end annotation


# static fields
.field public static final DT_LOG_MONITOR:Ljava/lang/String; = "dtLogMonitor"

.field public static final DT_LOG_MONITOR_TIME:Ljava/lang/String; = "dtLogMonitorTime"

.field public static final KEY_H5_URL:Ljava/lang/String; = "version.update.h5url"

.field public static final SCHEME_INNER_SOURCE:Ljava/lang/String; = "schemeInnerSource"

.field public static final SCHEME_REVEAL:Ljava/lang/String; = "alipays"

.field public static allSkipAuth:Z

.field public static h5Url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-string v0, ""

    sput-object v0, Lcom/alipay/mobile/framework/service/common/SchemeService;->h5Url:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/framework/service/common/SchemeService;->allSkipAuth:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method

.method public static getH5Url()Ljava/lang/String;
    .locals 3

    .line 32
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "version.update.h5url"

    .line 31
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/util/MpaasPropertiesUtil;->getKeyFromManifest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 34
    .local v1, "h5ErrorUrl":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    sput-object v1, Lcom/alipay/mobile/framework/service/common/SchemeService;->h5Url:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .end local v1    # "h5ErrorUrl":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "SchemeService"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    sget-object v0, Lcom/alipay/mobile/framework/service/common/SchemeService;->h5Url:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public abstract cleanTagId()V
.end method

.method public abstract extractTagId(Landroid/net/Uri;)V
.end method

.method public abstract getAppId(Landroid/net/Uri;)Ljava/lang/String;
.end method

.method public abstract getLastScheme()Ljava/lang/String;
.end method

.method public abstract getLastTagId()Ljava/lang/String;
.end method

.method public abstract getParams(Landroid/net/Uri;)Landroid/os/Bundle;
.end method

.method public abstract getSchemeParam(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getTagByAppId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isSchemeInvoke()Z
.end method

.method public abstract isSupportScheme(Landroid/net/Uri;)Z
.end method

.method public abstract process(Landroid/net/Uri;)I
.end method

.method public abstract process(Landroid/net/Uri;Ljava/lang/String;)I
.end method

.method public abstract process(Landroid/net/Uri;Z)I
.end method

.method public abstract registerSchemeHandler(Lcom/alipay/mobile/framework/service/common/SchemeService$SchemeHandler;)V
.end method

.method public abstract saveSchemeParam(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setExternData(Landroid/os/Bundle;)V
.end method

.method public abstract setH5HoldListener(Lcom/alipay/mobile/framework/service/common/H5HoldListener;)V
.end method

.method public abstract unRegisterSchemeHandler(Lcom/alipay/mobile/framework/service/common/SchemeService$SchemeHandler;)V
.end method
