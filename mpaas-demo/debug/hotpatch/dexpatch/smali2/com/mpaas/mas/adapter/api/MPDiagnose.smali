.class public Lcom/mpaas/mas/adapter/api/MPDiagnose;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mpaas/mas/adapter/api/MPDiagnose$DiagnoseMsgCallback;
    }
.end annotation


# static fields
.field private static final ACTION_MONITOR_RECEIVED:Ljava/lang/String; = ".push.action.MONITOR_RECEIVED"

.field private static final BIZ_SYNC_DIAGNOSE_MSG:Ljava/lang/String; = "MAS-MPAAS-SYNC"

.field private static final EXTRA_PUSH_MESSAGE_DATA:Ljava/lang/String; = "push_msg_data"

.field private static final SERVICE_CLIENT_MONITOR:Ljava/lang/String; = "com.alipay.mobile.logmonitor.ClientMonitorService"

.field private static final TAG:Ljava/lang/String; = "MPDiagnose"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initSyncChannel(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 26
    invoke-static {}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->getInstance()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->initialize(Landroid/content/Context;)V

    .line 27
    invoke-static {}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->getInstance()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    new-instance v1, Lcom/mpaas/mas/adapter/api/MPDiagnose$DiagnoseMsgCallback;

    invoke-direct {v1, p0}, Lcom/mpaas/mas/adapter/api/MPDiagnose$DiagnoseMsgCallback;-><init>(Landroid/content/Context;)V

    const-string v2, "MAS-MPAAS-SYNC"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBiz(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    .line 28
    invoke-static {}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->getInstance()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->appToForeground()V

    .line 29
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/LogContext;->getUserId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 30
    .local v1, "userId":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    invoke-static {}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->getInstance()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->updateUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "MPLogger.setUserId must be called first!!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
