.class Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl$1;
.super Ljava/lang/Object;
.source "DynamicReleaseApiImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;->a(Landroid/os/Bundle;ZLcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;

.field final synthetic val$callback:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;

.field final synthetic val$requestData:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;Landroid/os/Bundle;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;

    .line 184
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl$1;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;

    iput-object p2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl$1;->val$requestData:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl$1;->val$callback:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 187
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl$1;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;

    # getter for: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;->a:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;->access$000(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getDefaultSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 190
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 191
    .local v1, "timeId":J
    const-string v3, "MainToTools"

    const-string/jumbo v4, "main"

    invoke-static {v3, v4, v1, v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/a/a;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 192
    iget-object v3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl$1;->val$requestData:Landroid/os/Bundle;

    const-string v4, "hotpatchUniqueId"

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 194
    const-string v3, "dynamicrelease_location"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 195
    iget-object v5, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl$1;->val$requestData:Landroid/os/Bundle;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl$1;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;

    # getter for: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;->a:Landroid/content/Context;
    invoke-static {v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;->access$000(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/RequestServiceConnection;->require(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/RequestServiceConnection;

    move-result-object v3

    move-object v5, v4

    .line 198
    .local v5, "requestConnection":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/RequestServiceConnection;
    move-object v5, v3

    if-eqz v3, :cond_0

    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/RequestServiceConnection;->getDynamicRequestProcessor()Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseRequester;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 199
    .local v4, "requester":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseRequester;
    :goto_0
    move-object v4, v3

    if-eqz v3, :cond_4

    .line 201
    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl$1;->val$requestData:Landroid/os/Bundle;

    iget-object v6, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl$1;->val$callback:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;

    invoke-interface {v4, v3, v6}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseRequester;->request(Landroid/os/Bundle;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)I

    move-result v3

    .line 202
    .local v3, "token":I
    iget-object v6, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl$1;->val$callback:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;

    if-eqz v6, :cond_1

    if-lez v3, :cond_1

    .line 203
    invoke-virtual {v6, v3, v5}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->bind(ILcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/RequestServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    .end local v3    # "token":I
    :cond_1
    iget-object v3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl$1;->val$callback:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;

    if-nez v3, :cond_4

    .line 217
    :goto_1
    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/RequestServiceConnection;->release()V

    return-void

    .line 205
    :catchall_0
    move-exception v3

    .line 206
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v6, "DynamicReleaseRequest"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeExceptionLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 208
    :try_start_2
    iget-object v6, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl$1;->val$callback:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;

    if-eqz v6, :cond_2

    .line 209
    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;->onError(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 213
    :cond_2
    goto :goto_2

    .line 211
    :catchall_1
    move-exception v6

    .line 212
    .local v6, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string v7, "DynamicReleaseApi"

    invoke-static {v7, v6}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 216
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v6    # "t":Ljava/lang/Throwable;
    :goto_2
    iget-object v3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl$1;->val$callback:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;

    if-nez v3, :cond_4

    .line 217
    goto :goto_1

    .line 216
    :catchall_2
    move-exception v3

    iget-object v6, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseApiImpl$1;->val$callback:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/callback/DynamicReleaseCallbackWrapper;

    if-nez v6, :cond_3

    .line 217
    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/RequestServiceConnection;->release()V

    :cond_3
    throw v3

    .line 221
    :cond_4
    return-void
.end method
