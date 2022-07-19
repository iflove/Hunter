.class final Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig$1;
.super Ljava/lang/Object;
.source "DelayUploadConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->d()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;

    .line 142
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig$1;->a:Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 145
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "DelayUploadConfig"

    const-string v2, "execute timer task"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 147
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "floodDischarge"

    .line 148
    .local v1, "event":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig$1;->a:Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;

    invoke-static {v2}, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->a(Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig$1;->a:Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;

    invoke-static {v3}, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->a(Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    :cond_0
    const-string v2, "event"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->a()Lcom/alipay/mobile/common/logging/MdapLogUploadManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0}, Lcom/alipay/mobile/common/logging/MdapLogUploadManager;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 154
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig$1;->a:Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;

    invoke-static {v2}, Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;->b(Lcom/alipay/mobile/common/logging/strategy/DelayUploadConfig;)Ljava/util/concurrent/ScheduledFuture;

    .line 155
    return-void
.end method
