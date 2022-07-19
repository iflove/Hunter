.class Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager$1$1;
.super Ljava/lang/Object;
.source "UpgradeSilentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager$1;->onComplete(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager$1;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager$1;Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager$1$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager$1;

    iput-object p2, p0, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager$1$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager$1$1;->val$path:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/android/security/upgrade/util/MD5Util;->md5sum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager$1$1;->val$path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "UpgradeSilentManager"

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager$1$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager$1;

    iget-object v1, v1, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager$1;->val$fullMd5:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "\u9759\u9ed8\u4e0b\u8f7d\uff0c\u672c\u5730 md5\u6216\u670d\u52a1\u7aef\u7ed9\u7684md5\u4e3a\u7a7a"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager$1$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager$1;

    iget-object v1, v1, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager$1;->val$fullMd5:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "\u9759\u9ed8\u4e0b\u8f7d\uff0capk\u6587\u4ef6MD5\u6821\u9a8c\u5931\u8d25\uff01"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager$1$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager$1;

    iget-object v2, v2, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager$1;->val$upgradeVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager$1$1;->this$0:Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager$1;

    iget-object v2, v2, Lcom/alipay/mobile/android/security/upgrade/service/UpgradeSilentManager$1;->val$downloadUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "silent"

    const-string v4, "CheckMd5Fail"

    invoke-interface {v0, v3, v4, v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->keyBizTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 105
    :cond_2
    return-void
.end method
