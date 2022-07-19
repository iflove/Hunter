.class public Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseSyncCallback;
.super Ljava/lang/Object;
.source "DynamicReleaseSyncCallback.java"

# interfaces
.implements Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;


# static fields
.field public static final SYNC_BIZ_TYPE_NOTIFY:Ljava/lang/String; = "DYNAMICSDK-NOTIFY"

.field public static final SYNC_BIZ_TYPE_USER:Ljava/lang/String; = "DYNAMICSDK-USER"

.field public static final TAG:Ljava/lang/String; = "DynamicReleaseSync"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "syncService"    # Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseSyncCallback;->c:Ljava/util/Set;

    .line 37
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "DynamicReleaseSync"

    const-string/jumbo v2, "new DynamicReleaseSyncCallback"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iput-object p2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseSyncCallback;->b:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 39
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseSyncCallback;->a:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 20
    .param p1, "msgJson"    # Ljava/lang/String;

    move-object/from16 v1, p0

    const-string v2, "DynamicReleaseSync"

    .line 64
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 65
    return v3

    .line 69
    :cond_0
    :try_start_0
    const-class v0, Lcom/alipay/mobile/base/config/model/MessageData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v4, p1

    :try_start_1
    invoke-static {v4, v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    move-object v6, v5

    .line 70
    .local v6, "messageDataList":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v7, v5

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/mobile/base/config/model/MessageData;

    .line 71
    .local v5, "messageData":Lcom/alipay/mobile/base/config/model/MessageData;
    move-object v5, v8

    if-eqz v8, :cond_2

    iget-object v8, v5, Lcom/alipay/mobile/base/config/model/MessageData;->pl:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 72
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v9, v5, Lcom/alipay/mobile/base/config/model/MessageData;->mk:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 73
    .local v8, "key":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "key == "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v2, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v9, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseSyncCallback;->c:Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 77
    iget-object v9, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseSyncCallback;->c:Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v9, v5, Lcom/alipay/mobile/base/config/model/MessageData;->pl:Ljava/lang/String;

    invoke-static {v9}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 83
    .local v7, "payload":Lcom/alibaba/fastjson/JSONObject;
    move-object v7, v9

    const-string v10, "delayTime"

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v9

    .line 84
    .local v9, "delayTime":I
    const-string/jumbo v10, "maxRandomTime"

    invoke-virtual {v7, v10}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v10

    .line 86
    .local v10, "maxRandomTime":I
    new-instance v11, Ljava/util/Random;

    invoke-direct {v11}, Ljava/util/Random;-><init>()V

    invoke-virtual {v11, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    add-int/2addr v11, v9

    .line 87
    .local v11, "delay":I
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "handleSyncMsg, delay="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v2, v13}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v14

    new-instance v15, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseSyncCallback$1;

    invoke-direct {v15, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseSyncCallback$1;-><init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseSyncCallback;)V

    const-string v16, "DynamicReleaseSync"

    int-to-long v12, v11

    sget-object v19, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v17, v12

    invoke-virtual/range {v14 .. v19}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->schedule(Ljava/lang/Runnable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 96
    .end local v5    # "messageData":Lcom/alipay/mobile/base/config/model/MessageData;
    .end local v7    # "payload":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "delayTime":I
    .end local v10    # "maxRandomTime":I
    .end local v11    # "delay":I
    :cond_2
    goto/16 :goto_0

    .line 97
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 98
    .end local v6    # "messageDataList":Ljava/util/List;
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v4, p1

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    invoke-interface {v5, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    return v3
.end method

.method static synthetic access$000(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseSyncCallback;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseSyncCallback;

    .line 24
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseSyncCallback;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onReceiveCommand(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;)V
    .locals 0
    .param p1, "syncCommand"    # Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncCommand;

    .line 45
    return-void
.end method

.method public onReceiveMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;

    .line 50
    const-string v0, "DynamicReleaseSync"

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceiveMessage  , message = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , biz = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseSyncCallback;->a(Ljava/lang/String;)Z

    .line 56
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseSyncCallback;->b:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportMsgReceived(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    return-void

    .line 58
    :catchall_0
    move-exception v1

    .line 59
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .end local v1    # "t":Ljava/lang/Throwable;
    return-void
.end method
