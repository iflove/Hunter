.class public Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;
.super Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/IDynamicReleaseProcessor$Stub;
.source "DynamicReleaseContext.java"


# static fields
.field private static a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 90
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/IDynamicReleaseProcessor$Stub;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->b:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->c:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->d:Ljava/util/HashMap;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->e:Landroid/content/Context;

    .line 92
    if-nez v0, :cond_0

    .line 93
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->e:Landroid/content/Context;

    .line 95
    :cond_0
    return-void
.end method

.method private static a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessor;Ljava/util/List;Ljava/util/List;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;
    .locals 1
    .param p0, "processor"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessor;
    .param p1, "rollbackEntities"    # Ljava/util/List;
    .param p2, "applyEntities"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessor;",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
            ">;)",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;"
        }
    .end annotation

    .line 264
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p2, :cond_4

    .line 265
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 267
    :cond_1
    instance-of v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessorExt;

    if-eqz v0, :cond_2

    .line 268
    move-object v0, p0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessorExt;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessorExt;->process(Ljava/util/List;Ljava/util/List;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    move-result-object v0

    return-object v0

    .line 271
    :cond_2
    invoke-interface {p0, p1, p2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessor;->processDynamicRelease(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    .line 272
    if-eqz v0, :cond_3

    .line 273
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;->SUCCESS:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    .local v0, "result":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;
    goto :goto_0

    .line 275
    .end local v0    # "result":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;
    :cond_3
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;->FAILED:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    .line 277
    .restart local v0    # "result":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;
    goto :goto_0

    .line 278
    .end local v0    # "result":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;
    :cond_4
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;->FAILED:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    .line 280
    .restart local v0    # "result":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;
    :goto_0
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;
    .locals 2
    .param p1, "drt"    # Ljava/lang/String;
    .param p2, "rollbackEntities"    # Ljava/util/List;
    .param p3, "applyEntities"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
            ">;)",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;"
        }
    .end annotation

    .line 293
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 295
    .local v0, "entities":Ljava/util/List;
    move-object v0, v1

    if-nez v1, :cond_0

    .line 296
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 297
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 302
    .end local v0    # "entities":Ljava/util/List;
    :cond_1
    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 303
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 304
    .restart local v0    # "entities":Ljava/util/List;
    move-object v0, v1

    if-nez v1, :cond_2

    .line 305
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 306
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_2
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 311
    .end local v0    # "entities":Ljava/util/List;
    :cond_3
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;->NOT_PROCESSED:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    return-object v0
.end method

.method static synthetic access$000(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;

    .line 41
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->e:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 55
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;

    if-nez v0, :cond_1

    .line 56
    const-class v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;

    .line 60
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 62
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->a:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;

    return-object v0
.end method


# virtual methods
.method public handleResult(Ljava/lang/String;ILjava/util/List;Ljava/util/List;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;)V
    .locals 9
    .param p1, "drt"    # Ljava/lang/String;
    .param p2, "token"    # I
    .param p3, "rollbackEntities"    # Ljava/util/List;
    .param p4, "applyEntities"    # Ljava/util/List;
    .param p5, "result"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
            ">;",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;",
            ")V"
        }
    .end annotation

    .line 139
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v0

    new-instance v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p4

    move-object v4, p3

    move-object v5, p5

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext$1;-><init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;Ljava/util/List;Ljava/util/List;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;Ljava/lang/String;I)V

    const-string v1, "handleResult"

    invoke-virtual {v0, v8, v1}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public handleResult(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/os/Parcelable;)V
    .locals 6
    .param p1, "drt"    # Ljava/lang/String;
    .param p2, "rollbackEntities"    # Ljava/util/List;
    .param p3, "applyEntities"    # Ljava/util/List;
    .param p4, "result"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
            ">;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .line 182
    move-object v5, p4

    check-cast v5, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->handleResult(Ljava/lang/String;ILjava/util/List;Ljava/util/List;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;)V

    .line 183
    return-void
.end method

.method public processDynamicRelease(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;
    .locals 8
    .param p1, "drt"    # Ljava/lang/String;
    .param p2, "token"    # I
    .param p3, "rollbackEntities"    # Ljava/util/List;
    .param p4, "applyEntities"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
            ">;)",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;"
        }
    .end annotation

    .line 195
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DynamicReleaseContext.processDynamicRelease(dynamicReleaseType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rollbackEntities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-static {p3}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", applyEntities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-static {p4}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    const-string v2, "DynamicRelease"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessor;

    const/4 v1, 0x0

    .line 201
    .local v1, "processor":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessor;
    move-object v1, v0

    if-nez v0, :cond_0

    .line 202
    invoke-direct {p0, p1, p3, p4}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    move-result-object v0

    .local v0, "result":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;
    goto :goto_0

    .line 204
    .end local v0    # "result":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;
    :cond_0
    invoke-static {v1, p3, p4}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessor;Ljava/util/List;Ljava/util/List;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    move-result-object v0

    .line 206
    .restart local v0    # "result":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;
    :goto_0
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->handleResult(Ljava/lang/String;ILjava/util/List;Ljava/util/List;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;)V

    .line 207
    return-object v0
.end method

.method public processRpcLimit(J)V
    .locals 8
    .param p1, "limit"    # J

    .line 212
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 213
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b;

    invoke-direct {v0, p1, p2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b;-><init>(J)V

    sput-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/HotPatchUtils;->sDelay:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b;

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "processRpcLimit : limit="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/HotPatchUtils;->sDelay:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicRelease"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext$2;

    invoke-direct {v3, p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext$2;-><init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;)V

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string/jumbo v4, "time_limit_rpc"

    move-wide v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/alipay/mobile/quinox/asynctask/AsyncTaskExecutor;->schedule(Ljava/lang/Runnable;Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 227
    :cond_0
    return-void
.end method

.method public registerDynamicReleaseProcessor(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessor;)V
    .locals 5
    .param p1, "drt"    # Ljava/lang/String;
    .param p2, "processor"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessor;

    .line 104
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 107
    .local v0, "rollbackEntities":Ljava/util/List;
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 109
    .local v1, "applyEntities":Ljava/util/List;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DynamicReleaseContext.registerDynamicReleaseProcessor(drt="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", processor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DynamicRelease"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    .line 114
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 116
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->processDynamicRelease(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    return-void

    .line 117
    :catchall_0
    move-exception v2

    .line 118
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v4, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_2
    return-void
.end method

.method public unregisterDynamicReleaseProcessor(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    return-void
.end method

.method public unzip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p1, "zipFile"    # Ljava/lang/String;
    .param p2, "tarPath"    # Ljava/lang/String;

    .line 231
    const/4 v0, 0x0

    .line 233
    .local v0, "bRet":Z
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 234
    .local v3, "launcherApplicationAgent":Lcom/alipay/mobile/framework/LauncherApplicationAgent;
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v1

    .line 235
    const-string v4, "android-phone-wallet-nebulauc"

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/framework/BundleContext;->findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 236
    const-string v4, "com.uc.webview.export.extension.UCCore"

    invoke-virtual {v1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v4, v2

    .line 237
    .local v4, "clazz":Ljava/lang/Class;
    move-object v4, v1

    const-string v5, "extractWebCoreLibraryIfNeeded"

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v8, v7, v10

    const-class v8, Ljava/lang/String;

    const/4 v11, 0x2

    aput-object v8, v7, v11

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x3

    aput-object v8, v7, v12

    invoke-virtual {v1, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 239
    .local v2, "method":Ljava/lang/reflect/Method;
    move-object v2, v1

    invoke-virtual {v1, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 240
    new-array v1, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseContext;->e:Landroid/content/Context;

    aput-object v5, v1, v9

    aput-object p1, v1, v10

    aput-object p2, v1, v11

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v12

    invoke-virtual {v2, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    const/4 v0, 0x1

    .line 246
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "launcherApplicationAgent":Lcom/alipay/mobile/framework/LauncherApplicationAgent;
    .end local v4    # "clazz":Ljava/lang/Class;
    goto :goto_0

    .line 243
    :catchall_0
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to unzip("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v4, "UC7ZUnzipFail"

    invoke-static {v4, v2, v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeExceptionLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unzip(zipFile="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tarPath="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), bRet="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DynamicRelease"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return v0
.end method
