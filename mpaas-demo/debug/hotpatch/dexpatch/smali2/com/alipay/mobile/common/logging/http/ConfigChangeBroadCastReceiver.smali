.class public Lcom/alipay/mobile/common/logging/http/ConfigChangeBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConfigChangeBroadCastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigChangeBroadCastReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 18
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "ConfigChangeBroadCastReceiver"

    const-string/jumbo v2, "onReceive resetUploadUrl"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->a()Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/http/UploadUrlConfig;->b()V

    .line 21
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogLengthConfig;->a()Lcom/alipay/mobile/common/logging/strategy/LogLengthConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/strategy/LogLengthConfig;->c()V

    .line 22
    return-void
.end method
