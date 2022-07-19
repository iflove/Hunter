.class Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext$1;
.super Ljava/lang/Object;
.source "DynamicReleaseContext.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->handleResult(Ljava/lang/String;ILjava/util/List;Ljava/util/List;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;

.field final synthetic val$applyEntities:Ljava/util/List;

.field final synthetic val$drt:Ljava/lang/String;

.field final synthetic val$result:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

.field final synthetic val$rollbackEntities:Ljava/util/List;

.field final synthetic val$token:I


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;Ljava/util/List;Ljava/util/List;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;

    .line 139
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext$1;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;

    iput-object p2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext$1;->val$applyEntities:Ljava/util/List;

    iput-object p3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext$1;->val$rollbackEntities:Ljava/util/List;

    iput-object p4, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext$1;->val$result:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    iput-object p5, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext$1;->val$drt:Ljava/lang/String;

    iput p6, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext$1;->val$token:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "drv":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext$1;->val$applyEntities:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext$1;->val$applyEntities:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getDynamicReleaseVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext$1;->val$rollbackEntities:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext$1;->val$rollbackEntities:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getDynamicReleaseVersion()Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_1
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "go to start DynamicReleaseRequestService process result: result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext$1;->val$result:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", drt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext$1;->val$drt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", drv="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DynamicRelease"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext$1;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;

    # getter for: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->e:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->access$000(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/RequestServiceConnection;->require(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/RequestServiceConnection;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 155
    .local v3, "requestConnection":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/RequestServiceConnection;
    move-object v3, v1

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/RequestServiceConnection;->getDynamicRequestProcessor()Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseRequester;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    move-object v4, v2

    .line 156
    .local v4, "requester":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseRequester;
    move-object v4, v1

    if-eqz v1, :cond_3

    .line 157
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 158
    .local v2, "bundle":Landroid/os/Bundle;
    move-object v2, v1

    const-class v5, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 159
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext$1;->val$result:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    const-string v5, "dynamic_release_process_result"

    invoke-virtual {v2, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 160
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext$1;->val$drt:Ljava/lang/String;

    const-string v5, "dynamic_release_process_type"

    invoke-virtual {v2, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v1, "dynamic_release_process_version"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext$1;->val$token:I

    const-string v5, "dynamic_release_process_token"

    invoke-virtual {v2, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 163
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext$1;->val$rollbackEntities:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    const-string v5, "dynamic_release_process_rollback"

    invoke-virtual {v2, v5, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 164
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext$1;->val$applyEntities:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    const-string v5, "dynamic_release_process_apply"

    invoke-virtual {v2, v5, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 166
    :try_start_0
    const-string v1, "com.alipay.android.phone.mobilecommon.dynamicrelease.PROCESS_RESULT"

    invoke-interface {v4, v1, v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseRequester;->handleAction(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :goto_2
    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/RequestServiceConnection;->release()V

    .line 171
    return-void

    .line 167
    :catchall_0
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v5, "HandleAction"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeExceptionLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v1    # "e":Ljava/lang/Throwable;
    goto :goto_2

    .line 170
    :catchall_1
    move-exception v1

    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/RequestServiceConnection;->release()V

    throw v1

    .line 173
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_3
    return-void
.end method
