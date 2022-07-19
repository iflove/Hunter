.class Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$9;
.super Ljava/lang/Object;
.source "UpdateServicesImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->checkMd5Failed(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

.field final synthetic val$forceExitApp:Z

.field final synthetic val$upgradeVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;ZLjava/lang/String;)V
    .locals 0

    .line 927
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$9;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    iput-boolean p2, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$9;->val$forceExitApp:Z

    iput-object p3, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$9;->val$upgradeVersion:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 931
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "UPDATE"

    const-string/jumbo v2, "\u63d0\u793a(MD5\u6821\u9a8c\u5931\u8d25\u5bfc\u81f4\u7684)\u5347\u7ea7\u5931\u8d25!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$9;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 934
    new-instance v2, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;

    invoke-direct {v2, v0}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 935
    sget v0, Lcom/alipay/mobile/android/security/upgrade/R$string;->retry_download_title:I

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;

    .line 936
    sget v0, Lcom/alipay/mobile/android/security/upgrade/R$string;->upgrade_download_failed:I

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;

    .line 937
    sget v0, Lcom/alipay/mobile/android/security/upgrade/R$string;->retry_download:I

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$9$1;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$9$1;-><init>(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$9;)V

    invoke-virtual {v2, v0, v3}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;

    .line 947
    iget-boolean v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$9;->val$forceExitApp:Z

    if-nez v0, :cond_0

    .line 948
    sget v0, Lcom/alipay/mobile/android/security/upgrade/R$string;->update_cancel:I

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/ResourcesUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$9$2;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$9$2;-><init>(Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$9;)V

    invoke-virtual {v2, v0, v3}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;

    .line 958
    :cond_0
    invoke-virtual {v2}, Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog$Builder;->show()Lcom/alipay/mobile/upgrade/ui/UpdateRetryDialog;

    .line 959
    sget-object v2, Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;->OPENPAGE:Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;

    const-string/jumbo v3, "redownload"

    const-string v4, "UC-SECURITY-150925-01"

    const-string v5, ""

    const-string/jumbo v6, "newversion"

    iget-object v7, p0, Lcom/alipay/mobile/android/security/upgrade/service/impl/UpdateServicesImpl$9;->val$upgradeVersion:Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lcom/alipay/mobile/android/security/upgrade/log/LoggerUtils;->writeUpdateBehaviorLog(Lcom/alipay/mobile/android/security/upgrade/log/UserBehaviorIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 963
    goto :goto_0

    .line 960
    :catchall_0
    move-exception v0

    .line 961
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "\u63d0\u793a\u5347\u7ea7\u5931\u8d25\u65f6\u5d29\u6e83\uff01"

    invoke-interface {v2, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 964
    :goto_0
    return-void
.end method
