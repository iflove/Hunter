.class Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7$1;
.super Ljava/lang/Object;
.source "UpdateServicesImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;

.field final synthetic val$upgradeVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;Ljava/lang/String;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7$1;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;

    iput-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7$1;->val$upgradeVersion:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 584
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7$1;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;

    iget-object v0, v0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    # getter for: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->mIsUpdating:Z
    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$1100(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;)Z

    move-result v0

    const-string v1, "UPDATE"

    if-eqz v0, :cond_0

    .line 585
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u6b63\u5728\u66f4\u65b0\u4e2d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7$1;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;

    iget-object v3, v3, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;->val$downLoadUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    return-void

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7$1;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;

    iget-object v0, v0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;->val$downLoadUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u4e0b\u8f7d\u65b0\u5ba2\u6237\u7aef\u8def\u5f84\u9519\u8bef\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7$1;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;

    iget-object v3, v3, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;->val$downLoadUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u4e0b\u8f7d\u65b0\u5ba2\u6237\u7aef\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7$1;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;

    iget-object v3, v3, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;->val$downLoadUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7$1;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;

    iget-object v0, v0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7$1;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;

    iget-object v1, v1, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;->val$downLoadUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7$1;->val$upgradeVersion:Ljava/lang/String;

    # invokes: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->preNormalUpdate(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$1200(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7$1;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;

    iget-object v1, v0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7$1;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;

    iget-object v2, v0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;->val$downLoadUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7$1;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;

    iget-object v3, v0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;->val$downLoadFileMD5:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7$1;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;

    iget-boolean v4, v0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;->val$forceExitApp:Z

    iget-object v5, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7$1;->val$upgradeVersion:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7$1;->this$1:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;

    iget-object v6, v0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$7;->val$callback:Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;

    # invokes: Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->normalUpdate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;)V
    invoke-static/range {v1 .. v6}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->access$1300(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/alipay/mobile/android/security/upgrade/download/normal/UpgradeDownloadCallback;)V

    .line 596
    return-void
.end method
