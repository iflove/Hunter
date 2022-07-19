.class final Lcom/alipay/mobile/common/logging/event/ClientClientLaunchEvent$1;
.super Ljava/lang/Object;
.source "ClientClientLaunchEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/logging/event/ClientClientLaunchEvent;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/common/logging/event/ClientClientLaunchEvent;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/logging/event/ClientClientLaunchEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/logging/event/ClientClientLaunchEvent;

    .line 80
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/event/ClientClientLaunchEvent$1;->a:Lcom/alipay/mobile/common/logging/event/ClientClientLaunchEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 83
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "ClientClientLaunchEvent"

    const-string v2, "historyCheck upload"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 85
    .local v2, "bundle":Landroid/os/Bundle;
    move-object v2, v0

    const-string v3, "event"

    const-string v4, "historyCheck"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->a()Lcom/alipay/mobile/common/logging/MdapLogUploadManager;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v2}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 87
    return-void
.end method
