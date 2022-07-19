.class final Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler$3;
.super Ljava/lang/Object;
.source "ProcessAliveHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;

    .line 232
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler$3;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const-string v0, "ProcessAlive"

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler$3;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->b(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 237
    .local v1, "am":Landroid/app/ActivityManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler$3;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;

    invoke-static {v3}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->b(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":push"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "processName":Ljava/lang/String;
    const/16 v3, 0x7fff

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "com.alipay.pushsdk.push.NotificationService"

    if-eqz v6, :cond_1

    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 241
    .local v5, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v6, v5, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 242
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 243
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "check push service status and NotificationService is running."

    invoke-interface {v3, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void

    .line 246
    .end local v5    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_0
    goto :goto_0

    .line 247
    :cond_1
    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler$3;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;

    invoke-static {v3}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->b(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/logging/api/utils/PrivacyUtil;->isUserAgreed(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 248
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "check push service status and NotificationService is not running, but user hasn\'t agreed, should not start NotificationService."

    invoke-interface {v3, v0, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void

    .line 252
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->getStartupReason()Ljava/util/Map;

    move-result-object v3

    .line 253
    .local v3, "reason":Ljava/util/Map;
    new-instance v6, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v6}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 254
    .local v5, "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    move-object v5, v6

    const-string v8, "Push"

    invoke-virtual {v6, v8}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setBehaviourPro(Ljava/lang/String;)V

    .line 255
    const-string/jumbo v6, "notification_invoke"

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 256
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 257
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 258
    .local v8, "entry":Ljava/util/Map$Entry;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .end local v8    # "entry":Ljava/util/Map$Entry;
    goto :goto_1

    .line 261
    :cond_3
    move-object v6, v4

    :cond_4
    const/4 v8, 0x3

    invoke-virtual {v5, v8}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setLoggerLevel(I)V

    .line 262
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v8

    invoke-interface {v8, v4, v5}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    .line 263
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "check push service status and found Notification is not running, start notify it! process start reason: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v0, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 266
    .local v6, "intent":Landroid/content/Intent;
    move-object v6, v4

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler$3;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;

    invoke-static {v9}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->b(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 267
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler$3;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;

    invoke-static {v7}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->b(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".push.action.START_PUSH_SERVICE_FROM_MONITOR"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler$3;->a:Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;

    invoke-static {v4}, Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;->b(Lcom/alipay/android/phone/mobilesdk/monitor/handlers/ProcessAliveHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    nop

    .end local v1    # "am":Landroid/app/ActivityManager;
    .end local v2    # "processName":Ljava/lang/String;
    .end local v3    # "reason":Ljava/util/Map;
    .end local v5    # "behavor":Lcom/alipay/mobile/common/logging/api/behavor/Behavor;
    .end local v6    # "intent":Landroid/content/Intent;
    return-void

    .line 270
    :catchall_0
    move-exception v1

    .line 271
    .local v1, "tr":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "check push status error, error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .end local v1    # "tr":Ljava/lang/Throwable;
    return-void
.end method
