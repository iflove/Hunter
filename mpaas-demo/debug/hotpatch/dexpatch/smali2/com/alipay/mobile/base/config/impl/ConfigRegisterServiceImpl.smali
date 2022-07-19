.class public Lcom/alipay/mobile/base/config/impl/ConfigRegisterServiceImpl;
.super Lcom/alipay/mobile/base/config/ConfigRegisterService;
.source "ConfigRegisterServiceImpl.java"


# static fields
.field private static mConfigChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static slmacSyncReceiverListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/SoftReference<",
            "Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConfigGetListener:Lcom/alipay/mobile/base/config/ConfigService$ConfigGetListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/base/config/impl/ConfigRegisterServiceImpl;->slmacSyncReceiverListeners:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/base/config/impl/ConfigRegisterServiceImpl;->mConfigChangeListeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/alipay/mobile/base/config/ConfigRegisterService;-><init>()V

    .line 17
    const-string v0, "ConfigRegisterServiceImpl"

    iput-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigRegisterServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method private isAddConfigChangeListener(Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;)Z
    .locals 4
    .param p1, "configChangeListener"    # Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;

    .line 204
    sget-object v0, Lcom/alipay/mobile/base/config/impl/ConfigRegisterServiceImpl;->mConfigChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    .line 205
    .local v1, "softReference":Ljava/lang/ref/SoftReference;
    move-object v1, v3

    if-eqz v3, :cond_0

    .line 206
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;

    .line 207
    .local v2, "tmp":Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;
    move-object v2, v3

    if-eqz v3, :cond_0

    if-ne v2, p1, :cond_0

    .line 208
    const/4 v0, 0x1

    return v0

    .line 211
    .end local v1    # "softReference":Ljava/lang/ref/SoftReference;
    .end local v2    # "tmp":Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;
    :cond_0
    goto :goto_0

    .line 212
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addConfigChangeListener(Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;)Z
    .locals 6
    .param p1, "configChangeListener"    # Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;

    .line 73
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 74
    return v1

    .line 76
    :cond_0
    if-nez p1, :cond_1

    .line 77
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v2, "ConfigRegisterServiceImpl"

    const-string v3, "configChangeListener is null"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return v1

    .line 80
    :cond_1
    sget-object v0, Lcom/alipay/mobile/base/config/impl/ConfigRegisterServiceImpl;->mConfigChangeListeners:Ljava/util/List;

    monitor-enter v0

    .line 81
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/base/config/impl/ConfigRegisterServiceImpl;->isAddConfigChangeListener(Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string v3, "ConfigRegisterServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " configChangeListener is alreadly is add"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    monitor-exit v0

    return v1

    .line 85
    :cond_2
    sget-object v1, Lcom/alipay/mobile/base/config/impl/ConfigRegisterServiceImpl;->mConfigChangeListeners:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConfigGetListener()Lcom/alipay/mobile/base/config/ConfigService$ConfigGetListener;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/base/config/impl/ConfigRegisterServiceImpl;->mConfigGetListener:Lcom/alipay/mobile/base/config/ConfigService$ConfigGetListener;

    return-object v0
.end method

.method public notifyConfigChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 124
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    return-void

    .line 127
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "ConfigRegisterServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "notifyConfigChange start key is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v0, Lcom/alipay/mobile/base/config/impl/ConfigRegisterServiceImpl;->mConfigChangeListeners:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 130
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/base/config/impl/ConfigRegisterServiceImpl;->mConfigChangeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/SoftReference;

    .line 131
    .local v2, "softReference":Ljava/lang/ref/SoftReference;
    move-object v2, v5

    if-eqz v5, :cond_1

    .line 132
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;

    .line 133
    .local v3, "tmpListener":Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;
    move-object v3, v5

    if-eqz v5, :cond_1

    .line 134
    invoke-interface {v3}, Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;->getKeys()Ljava/util/List;

    move-result-object v5

    .line 135
    .local v4, "keys":Ljava/util/List;
    move-object v4, v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    .line 137
    :try_start_2
    invoke-interface {v3, p1, p2}, Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;->onConfigChange(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    goto :goto_0

    .line 138
    :catch_0
    move-exception v5

    .line 139
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string v7, "ConfigRegisterServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "notifyConfigChange Exception :  tmpListener.onSyncReceiver  "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " error listener is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .end local v2    # "softReference":Ljava/lang/ref/SoftReference;
    .end local v3    # "tmpListener":Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;
    .end local v4    # "keys":Ljava/util/List;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    goto :goto_0

    .line 145
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 146
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :catchall_1
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ConfigRegisterServiceImpl"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public notifySyncArrived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 154
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    return-void

    .line 157
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string v1, "ConfigRegisterServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "notifySyncArrived start key is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget-object v0, Lcom/alipay/mobile/base/config/impl/ConfigRegisterServiceImpl;->slmacSyncReceiverListeners:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 161
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/base/config/impl/ConfigRegisterServiceImpl;->slmacSyncReceiverListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/SoftReference;

    .line 162
    .local v2, "softReference":Ljava/lang/ref/SoftReference;
    move-object v2, v5

    if-eqz v5, :cond_1

    .line 163
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;

    .line 164
    .local v3, "tmpListener":Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;
    move-object v3, v5

    if-eqz v5, :cond_1

    .line 165
    invoke-interface {v3}, Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;->getKeys()Ljava/util/List;

    move-result-object v5

    .line 166
    .local v4, "keys":Ljava/util/List;
    move-object v4, v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    .line 168
    :try_start_2
    invoke-interface {v3, p1, p2}, Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;->onSyncReceiver(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    goto :goto_0

    .line 169
    :catch_0
    move-exception v5

    .line 170
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string v7, "ConfigRegisterServiceImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "notifySyncArrived Exception :  tmpListener.onSyncReceiver  "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " error listener is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .end local v2    # "softReference":Ljava/lang/ref/SoftReference;
    .end local v3    # "tmpListener":Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;
    .end local v4    # "keys":Ljava/util/List;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1
    goto :goto_0

    .line 176
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/String;
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 177
    .restart local p1    # "key":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :catchall_1
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ConfigRegisterServiceImpl"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 195
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 200
    return-void
.end method

.method public registerSyncReceiverListener(Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;)V
    .locals 3
    .param p1, "syncReceiverListener"    # Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;

    .line 28
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    return-void

    .line 31
    :cond_0
    if-nez p1, :cond_1

    .line 32
    return-void

    .line 34
    :cond_1
    sget-object v0, Lcom/alipay/mobile/base/config/impl/ConfigRegisterServiceImpl;->slmacSyncReceiverListeners:Ljava/util/List;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/base/config/impl/ConfigRegisterServiceImpl;->slmacSyncReceiverListeners:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeConfigChangeListener(Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;)V
    .locals 6
    .param p1, "configChangeListener"    # Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;

    .line 93
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    return-void

    .line 97
    :cond_0
    if-nez p1, :cond_1

    .line 98
    return-void

    .line 100
    :cond_1
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/base/config/impl/ConfigRegisterServiceImpl;->mConfigChangeListeners:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 101
    const/4 v1, 0x0

    .line 103
    .local v1, "target":Ljava/lang/ref/SoftReference;
    :try_start_1
    sget-object v2, Lcom/alipay/mobile/base/config/impl/ConfigRegisterServiceImpl;->mConfigChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/SoftReference;

    .line 104
    .local v3, "softReference":Ljava/lang/ref/SoftReference;
    move-object v3, v5

    if-eqz v5, :cond_2

    .line 105
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;

    .line 106
    .local v4, "tmp":Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;
    move-object v4, v5

    if-eqz v5, :cond_2

    if-ne v4, p1, :cond_2

    .line 107
    move-object v1, v3

    .line 108
    goto :goto_1

    .line 111
    .end local v3    # "softReference":Ljava/lang/ref/SoftReference;
    .end local v4    # "tmp":Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;
    :cond_2
    goto :goto_0

    .line 112
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 113
    sget-object v2, Lcom/alipay/mobile/base/config/impl/ConfigRegisterServiceImpl;->mConfigChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 115
    .end local v1    # "target":Ljava/lang/ref/SoftReference;
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "configChangeListener":Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 116
    .restart local p1    # "configChangeListener":Lcom/alipay/mobile/base/config/ConfigService$ConfigChangeListener;
    :catchall_1
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ConfigRegisterServiceImpl"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public setConfigGetListener(Lcom/alipay/mobile/base/config/ConfigService$ConfigGetListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/alipay/mobile/base/config/ConfigService$ConfigGetListener;

    .line 184
    iput-object p1, p0, Lcom/alipay/mobile/base/config/impl/ConfigRegisterServiceImpl;->mConfigGetListener:Lcom/alipay/mobile/base/config/ConfigService$ConfigGetListener;

    .line 185
    return-void
.end method

.method public unregisterSyncReceiverListener(Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;)V
    .locals 6
    .param p1, "syncReceiverListener"    # Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;

    .line 41
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getProcessInfo()Lcom/alipay/mobile/common/logging/api/ProcessInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/logging/api/ProcessInfo;->isLiteProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    return-void

    .line 45
    :cond_0
    if-nez p1, :cond_1

    .line 46
    return-void

    .line 48
    :cond_1
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/base/config/impl/ConfigRegisterServiceImpl;->slmacSyncReceiverListeners:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 49
    const/4 v1, 0x0

    .line 51
    .local v1, "target":Ljava/lang/ref/SoftReference;
    :try_start_1
    sget-object v2, Lcom/alipay/mobile/base/config/impl/ConfigRegisterServiceImpl;->slmacSyncReceiverListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/SoftReference;

    .line 52
    .local v3, "softReference":Ljava/lang/ref/SoftReference;
    move-object v3, v5

    if-eqz v5, :cond_2

    .line 53
    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;

    .line 54
    .local v4, "tmp":Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;
    move-object v4, v5

    if-eqz v5, :cond_2

    if-ne v4, p1, :cond_2

    .line 55
    move-object v1, v3

    .line 56
    goto :goto_1

    .line 59
    .end local v3    # "softReference":Ljava/lang/ref/SoftReference;
    .end local v4    # "tmp":Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;
    :cond_2
    goto :goto_0

    .line 60
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 61
    sget-object v2, Lcom/alipay/mobile/base/config/impl/ConfigRegisterServiceImpl;->slmacSyncReceiverListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63
    .end local v1    # "target":Ljava/lang/ref/SoftReference;
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "syncReceiverListener":Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    .restart local p1    # "syncReceiverListener":Lcom/alipay/mobile/base/config/ConfigService$SyncReceiverListener;
    :catchall_1
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "ConfigRegisterServiceImpl"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method
