.class public Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;
.super Ljava/lang/Object;
.source "DynamicReleaseCenterOperator.java"


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestParameter;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "DynamicRelease"

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->a:Landroid/util/SparseArray;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->b:Landroid/content/Context;

    .line 71
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;

    invoke-direct {v1, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->c:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;

    .line 74
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "com.alipay.android.phone.mobilecommon.dynamicrelease.processor.hotpatch.HotpatchRequestParameter"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 75
    .local v5, "clazz":Ljava/lang/Class;
    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v1

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    move-object v6, v4

    .line 76
    .local v6, "constructor":Ljava/lang/reflect/Constructor;
    move-object v6, v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 77
    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v6, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestParameter;

    .line 78
    .local v4, "hotpatchRequestParameter":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestParameter;
    move-object v4, v3

    if-eqz v3, :cond_0

    .line 79
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v7, "register HotpatchRequestParameter"

    invoke-interface {v3, v0, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    sget-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v3}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->getValue()I

    move-result v3

    invoke-direct {p0, v3, v4}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->a(ILcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestParameter;)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v7, "Failed to crate HotpatchRequestParameter"

    invoke-interface {v3, v0, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .end local v4    # "hotpatchRequestParameter":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestParameter;
    .end local v5    # "clazz":Ljava/lang/Class;
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;
    goto :goto_0

    .line 84
    :catchall_0
    move-exception v3

    move-object v5, v3

    .line 85
    .local v5, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string v4, "Failed to register HotpatchRequestParameter"

    invoke-interface {v3, v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_0
    sget-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->BUNDLE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v3}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->getValue()I

    move-result v3

    new-instance v4, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/b;

    invoke-direct {v4, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/b;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v3, v4}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->a(ILcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestParameter;)V

    .line 89
    sget-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->BIRDNEST:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v3}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->getValue()I

    move-result v3

    new-instance v4, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/b/a;

    invoke-direct {v4, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/b/a;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v3, v4}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->a(ILcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestParameter;)V

    .line 92
    :try_start_1
    const-string v3, "com.alipay.android.phone.mobilesdk.cmd.CmdRequestParameter"

    const-string v4, "create"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v3, v4, v6, v2}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestParameter;

    move-object v2, v5

    .line 97
    .local v2, "cmdRequestParameter":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestParameter;
    move-object v2, v1

    if-eqz v1, :cond_1

    .line 98
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v3, "register CmdRequestParameter"

    invoke-interface {v1, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->CMD:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->getValue()I

    move-result v1

    invoke-direct {p0, v1, v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->a(ILcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestParameter;)V

    return-void

    .line 101
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v3, "Failed to crate CmdRequestParameter"

    invoke-interface {v1, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    .end local v2    # "cmdRequestParameter":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestParameter;
    return-void

    .line 103
    :catchall_1
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to register CmdRequestParameter"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .end local v1    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method private a(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;
    .locals 7
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

    .line 702
    const/4 v0, 0x0

    .line 703
    .local v0, "result":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;
    const/4 v1, 0x0

    .local v1, "retry":I
    const/4 v2, 0x0

    .line 704
    :goto_0
    if-nez v0, :cond_2

    const/4 v3, 0x2

    if-gt v1, v3, :cond_2

    .line 705
    iget-object v3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;->request(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;

    move-result-object v3

    .line 706
    .local v2, "connection":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;
    move-object v2, v3

    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;->getDynamicReleaseProcessor()Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/IDynamicReleaseProcessor;

    move-result-object v3

    .line 708
    .local v3, "processor":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/IDynamicReleaseProcessor;
    :try_start_0
    invoke-interface {v3, p1, p2, p3, p4}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/IDynamicReleaseProcessor;->processDynamicRelease(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    .line 709
    add-int/lit8 v1, v1, 0x1

    .line 718
    :goto_1
    iget-object v4, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->b:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;->release(Landroid/content/Context;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;)V

    .line 719
    goto :goto_0

    .line 718
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 710
    :catch_0
    move-exception v4

    .line 711
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string v6, "DynamicRelease"

    invoke-interface {v5, v6, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 712
    instance-of v5, v4, Landroid/os/DeadObjectException;

    if-nez v5, :cond_1

    instance-of v5, v4, Landroid/os/TransactionTooLargeException;

    if-eqz v5, :cond_0

    goto :goto_2

    .line 715
    :cond_0
    nop

    .end local v0    # "result":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;
    .end local v1    # "retry":I
    .end local v2    # "connection":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;
    .end local v3    # "processor":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/IDynamicReleaseProcessor;
    .end local p1    # "drt":Ljava/lang/String;
    .end local p2    # "token":I
    .end local p3    # "rollbackEntities":Ljava/util/List;
    .end local p4    # "applyEntities":Ljava/util/List;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 713
    .restart local v0    # "result":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;
    .restart local v1    # "retry":I
    .restart local v2    # "connection":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;
    .restart local v3    # "processor":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/IDynamicReleaseProcessor;
    .restart local p1    # "drt":Ljava/lang/String;
    .restart local p2    # "token":I
    .restart local p3    # "rollbackEntities":Ljava/util/List;
    .restart local p4    # "applyEntities":Ljava/util/List;
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 718
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_3
    iget-object v5, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->b:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;->release(Landroid/content/Context;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;)V

    throw v4

    .line 721
    .end local v2    # "connection":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;
    .end local v3    # "processor":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/IDynamicReleaseProcessor;
    :cond_2
    return-object v0
.end method

.method private a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;)Ljava/util/List;
    .locals 10
    .param p1, "RequestInfo"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;",
            ")",
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;",
            ">;"
        }
    .end annotation

    .line 126
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getResourceParams(): types="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;->c:Ljava/util/List;

    invoke-static {v2}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DynamicRelease"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 129
    .local v0, "resourceParams":Ljava/util/List;
    iget-object v1, p1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 130
    .local v5, "type":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->a:Landroid/util/SparseArray;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestParameter;

    .line 131
    .local v3, "requestParameter":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestParameter;
    move-object v3, v6

    if-nez v6, :cond_0

    .line 132
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to get requestParameter(null) for type: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v2, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_0
    :try_start_0
    invoke-interface {v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestParameter;->getRequestParam()Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceParam;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 136
    .local v4, "dynamicResourceParam":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceParam;
    move-object v4, v6

    if-nez v6, :cond_1

    .line 137
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to get dynamicResourceParam(null) for type: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v2, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 147
    .end local v4    # "dynamicResourceParam":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceParam;
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 139
    .restart local v4    # "dynamicResourceParam":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceParam;
    :cond_1
    :try_start_2
    invoke-static {v4}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/WireLiteWrapper;->toUnionResourceParam(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceParam;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;

    move-result-object v6

    .line 140
    .local v6, "unionResourceParam":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-object v8, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->BUNDLE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v8}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->getValue()I

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v7, v8, :cond_2

    .line 141
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "bizScene = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;->b:Ljava/util/List;

    invoke-static {v9}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v2, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v7, p1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;->b:Ljava/util/List;

    iput-object v7, v6, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->bizScene:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    :cond_2
    :try_start_4
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 149
    nop

    .end local v4    # "dynamicResourceParam":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceParam;
    .end local v6    # "unionResourceParam":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;
    goto/16 :goto_0

    .line 147
    .end local v3    # "requestParameter":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestParameter;
    :catchall_1
    move-exception v4

    .line 148
    .local v4, "tr":Ljava/lang/Throwable;
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to get requestParameter for type: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v2, v7, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    .end local v4    # "tr":Ljava/lang/Throwable;
    .end local v5    # "type":Ljava/lang/Integer;
    goto/16 :goto_0

    .line 152
    :cond_3
    return-object v0
.end method

.method private a(ILcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestParameter;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "parameter"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseRequestParameter;

    .line 115
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerDynamicReleaseRequestParameter type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DynamicRelease"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    return-void
.end method

.method private static a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;ILjava/lang/String;)V
    .locals 3
    .param p0, "callback"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;
    .param p1, "errorCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .line 273
    if-eqz p0, :cond_0

    .line 274
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;->onError(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v0

    .line 277
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "DynamicRelease"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    .end local v0    # "ex":Ljava/lang/Throwable;
    return-void

    .line 278
    :cond_0
    :goto_0
    return-void
.end method

.method private a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)V
    .locals 10
    .param p1, "requestInfo"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;
    .param p2, "info"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;
    .param p3, "callback"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;

    .line 338
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "process DynamicResourceInfo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DynamicRelease"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "drt":Ljava/lang/String;
    iget-object v8, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->version:Ljava/lang/String;

    .line 343
    .local v8, "drv":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 344
    .local v9, "items":Ljava/util/List;
    iget-object v1, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->item:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->item:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 345
    iget-object v1, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->item:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 348
    :cond_0
    sget-object v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator$2;->a:[I

    iget-object v2, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v2}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 357
    :cond_1
    invoke-direct {p0, p2, v0, v8, v9}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->b(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 364
    :goto_0
    return-void

    .line 354
    :cond_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v0

    move-object v5, v8

    move-object v6, v9

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)V

    .line 355
    return-void

    .line 350
    :cond_3
    invoke-direct {p0, p2, v0, v8, v9}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->a(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 351
    return-void
.end method

.method private a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)V
    .locals 25
    .param p1, "requestInfo"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;
    .param p2, "info"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;
    .param p3, "drt"    # Ljava/lang/String;
    .param p4, "drv"    # Ljava/lang/String;
    .param p5, "items"    # Ljava/util/List;
    .param p6, "callback"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;",
            ">;",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;",
            ")V"
        }
    .end annotation

    .line 429
    move-object/from16 v7, p0

    move-object/from16 v8, p4

    move-object/from16 v6, p6

    const/4 v1, 0x0

    .line 430
    .local v1, "applyEntities":Ljava/util/List;
    const/4 v0, 0x0

    .line 434
    .local v0, "rollbackEntities":Ljava/util/List;
    const/4 v2, 0x0

    .line 435
    .local v2, "applyItems":Ljava/util/List;
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 436
    .local v5, "iterator":Ljava/util/Iterator;
    move-object/from16 v17, v3

    .end local v5    # "iterator":Ljava/util/Iterator;
    .local v17, "iterator":Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 438
    :cond_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;

    .line 439
    .local v3, "item":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;
    iget-object v5, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resStatus:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_2

    .line 440
    if-nez v0, :cond_1

    .line 441
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 443
    :cond_1
    new-instance v5, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    invoke-direct {v5, v8, v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;-><init>(Ljava/lang/String;Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 445
    :cond_2
    if-nez v2, :cond_3

    .line 446
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 448
    :cond_3
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    .end local v3    # "item":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v5, v0

    move-object v3, v2

    goto :goto_1

    .line 436
    :cond_4
    move-object v5, v0

    move-object v3, v2

    .line 454
    .end local v0    # "rollbackEntities":Ljava/util/List;
    .end local v2    # "applyItems":Ljava/util/List;
    .local v3, "applyItems":Ljava/util/List;
    .local v5, "rollbackEntities":Ljava/util/List;
    :goto_1
    const-string v2, "DynamicRelease"

    if-eqz v6, :cond_7

    .line 455
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .local v0, "applyEntityList":Ljava/util/List;
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v10, v4

    :goto_2
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;

    .line 457
    .local v10, "item":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;
    move-object v10, v11

    if-eqz v11, :cond_5

    .line 458
    new-instance v11, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    invoke-direct {v11, v8, v10}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;-><init>(Ljava/lang/String;Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    .end local v10    # "item":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;
    :cond_5
    goto :goto_2

    .line 461
    :cond_6
    invoke-interface {v6, v0, v5}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;->onStart(Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 463
    .end local v0    # "applyEntityList":Ljava/util/List;
    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v9, v4

    .line 464
    .local v0, "t":Ljava/lang/Throwable;
    :goto_3
    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 454
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_7
    move-object v9, v4

    .line 465
    :goto_4
    nop

    .line 468
    :goto_5
    const/4 v10, 0x0

    .line 470
    .local v10, "exception":Ljava/lang/Throwable;
    :try_start_2
    iget-object v0, v7, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 471
    .local v9, "dbHelper":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;
    move-object/from16 v15, p3

    move-object/from16 v13, p5

    :try_start_3
    invoke-virtual {v0, v15, v8, v13}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;->insertDynamicResourceItem(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 475
    .end local v9    # "dbHelper":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/storage/DynamicReleaseDatabaseHelper;
    move-object v0, v10

    goto :goto_7

    .line 472
    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v15, p3

    move-object/from16 v13, p5

    .line 473
    .local v9, "e":Ljava/lang/Throwable;
    :goto_6
    move-object v9, v0

    move-object v10, v0

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "Failed to insert: "

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p5 .. p5}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " into database. "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v9}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v10

    .line 477
    .end local v9    # "e":Ljava/lang/Throwable;
    .end local v10    # "exception":Ljava/lang/Throwable;
    .local v0, "exception":Ljava/lang/Throwable;
    :goto_7
    if-eqz v0, :cond_9

    .line 479
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;

    .line 480
    .local v9, "item":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;
    iget-object v10, v9, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resId:Ljava/lang/String;

    iget-object v11, v9, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resVersion:Ljava/lang/String;

    iget-object v12, v9, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resStatus:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-virtual {v9}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->getLogParams()Ljava/util/Map;

    move-result-object v24

    const-string v22, "Start|Fail_Database"

    move-object/from16 v18, p3

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v23, v0

    invoke-static/range {v18 .. v24}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 481
    .end local v9    # "item":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;
    goto :goto_8

    .line 483
    :cond_8
    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 484
    const/4 v2, -0x4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v2, v4}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;ILjava/lang/String;)V

    .line 485
    return-void

    .line 488
    :cond_9
    if-eqz v3, :cond_18

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a

    move-object v11, v4

    goto/16 :goto_13

    .line 492
    :cond_a
    iget-object v9, v7, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->b:Landroid/content/Context;

    invoke-static {v9}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;

    move-result-object v9

    sget v10, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->when:I

    invoke-virtual {v9, v10}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->getDownloadDelay(I)J

    move-result-wide v18

    .line 493
    .local v18, "downloadDelay":J
    iget-object v9, v7, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->b:Landroid/content/Context;

    invoke-static {v9}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;

    move-result-object v9

    sget v10, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->when:I

    invoke-virtual {v9, v10}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->getMaxRetry(I)I

    move-result v20

    .line 495
    .local v20, "maxRetry":I
    iget-object v9, v7, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->c:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;

    move-object/from16 v10, p2

    move-object v11, v3

    move-object/from16 v12, p1

    move-wide/from16 v13, v18

    move/from16 v15, v20

    move-object/from16 v16, p6

    invoke-virtual/range {v9 .. v16}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;Ljava/util/List;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;JILcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)Ljava/util/List;

    move-result-object v1

    .line 498
    const/4 v9, 0x1

    invoke-static {v3, v5, v9}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a/c;->a(Ljava/util/List;Ljava/util/List;Z)Ljava/util/Set;

    move-result-object v9

    .line 499
    .local v9, "applyRollbackItems":Ljava/util/Set;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "applyRollbackItems="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const/4 v10, 0x0

    invoke-static {v3, v1, v10}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a/c;->a(Ljava/util/List;Ljava/util/List;Z)Ljava/util/Set;

    move-result-object v10

    .line 503
    .local v10, "downloadFailedItems":Ljava/util/Set;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "downloadFailedItems="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const/4 v11, 0x0

    .line 507
    .local v11, "rollbackApplyDownloadFail":Z
    const/4 v12, 0x0

    .line 508
    .local v12, "applyDownloadFail":Z
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_f

    .line 509
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 510
    .local v14, "downloadFailedItem":Ljava/lang/String;
    invoke-interface {v9, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 511
    const/4 v11, 0x1

    goto :goto_a

    .line 513
    :cond_b
    const/4 v12, 0x1

    .line 516
    :goto_a
    if-eqz v11, :cond_d

    if-nez v12, :cond_c

    goto :goto_b

    :cond_c
    move/from16 v21, v11

    move/from16 v22, v12

    goto :goto_c

    .line 519
    .end local v14    # "downloadFailedItem":Ljava/lang/String;
    :cond_d
    :goto_b
    goto :goto_9

    .line 509
    :cond_e
    move/from16 v21, v11

    move/from16 v22, v12

    goto :goto_c

    .line 508
    :cond_f
    move-object v13, v4

    move/from16 v21, v11

    move/from16 v22, v12

    .line 522
    .end local v11    # "rollbackApplyDownloadFail":Z
    .end local v12    # "applyDownloadFail":Z
    .local v21, "rollbackApplyDownloadFail":Z
    .local v22, "applyDownloadFail":Z
    :goto_c
    if-nez v21, :cond_11

    if-eqz v22, :cond_10

    goto :goto_d

    .line 554
    :cond_10
    const-string v4, "All [*apply] bundle download success, continue processing."

    invoke-static {v2, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 523
    :cond_11
    :goto_d
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_17

    .line 524
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v12, v13

    .line 525
    .local v12, "iter":Ljava/util/Iterator;
    move-object/from16 v23, v11

    .end local v12    # "iter":Ljava/util/Iterator;
    .local v23, "iter":Ljava/util/Iterator;
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_16

    .line 527
    :goto_e
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v15, v11

    check-cast v15, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    .line 528
    .local v15, "applyEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    iget-object v11, v15, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resId:Ljava/lang/String;

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 529
    if-eqz v21, :cond_12

    .line 531
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Remove [rollback->[apply]] DynamicReleaseEntity:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->remove()V

    .line 533
    iget-object v12, v15, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resId:Ljava/lang/String;

    iget-object v13, v15, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resVersion:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v15}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getLogParams()Ljava/util/Map;

    move-result-object v16

    const-string v24, "Start|Fail_Download"

    move-object/from16 v11, p3

    move-object v4, v15

    .end local v15    # "applyEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    .local v4, "applyEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    move-object/from16 v15, v24

    invoke-static/range {v11 .. v16}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_f

    .line 529
    .end local v4    # "applyEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    .restart local v15    # "applyEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    :cond_12
    move-object v4, v15

    .end local v15    # "applyEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    .restart local v4    # "applyEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    goto :goto_f

    .line 536
    .end local v4    # "applyEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    .restart local v15    # "applyEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    :cond_13
    move-object v4, v15

    .end local v15    # "applyEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    .restart local v4    # "applyEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    if-eqz v22, :cond_14

    .line 538
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Remove [apply] DynamicReleaseEntity:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->remove()V

    .line 540
    iget-object v12, v4, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resId:Ljava/lang/String;

    iget-object v13, v4, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resVersion:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v4}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getLogParams()Ljava/util/Map;

    move-result-object v16

    const-string v15, "Start|Fail_Download"

    move-object/from16 v11, p3

    invoke-static/range {v11 .. v16}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 543
    .end local v4    # "applyEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    :cond_14
    :goto_f
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_15

    goto :goto_10

    :cond_15
    const/4 v4, 0x0

    goto :goto_e

    .line 545
    .end local v23    # "iter":Ljava/util/Iterator;
    :cond_16
    :goto_10
    goto :goto_11

    .line 547
    :cond_17
    const-string v4, "All [*apply] bundle download failed, continue processing."

    invoke-static {v2, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :goto_11
    const/16 v4, -0x9

    const/4 v11, 0x0

    invoke-static {v6, v4, v11}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;ILjava/lang/String;)V

    .line 558
    .end local v9    # "applyRollbackItems":Ljava/util/Set;
    .end local v10    # "downloadFailedItems":Ljava/util/Set;
    .end local v18    # "downloadDelay":J
    .end local v20    # "maxRetry":I
    .end local v21    # "rollbackApplyDownloadFail":Z
    .end local v22    # "applyDownloadFail":Z
    :goto_12
    move-object v9, v1

    goto :goto_14

    .line 488
    :cond_18
    move-object v11, v4

    .line 489
    :goto_13
    const-string v4, "applyItems is empty, no need to download."

    invoke-static {v2, v4}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    const/4 v4, -0x5

    invoke-static {v6, v4, v11}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;ILjava/lang/String;)V

    move-object v9, v1

    .line 558
    .end local v1    # "applyEntities":Ljava/util/List;
    .local v9, "applyEntities":Ljava/util/List;
    :goto_14
    if-eqz v9, :cond_19

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_19
    if-eqz v5, :cond_1c

    .line 559
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 560
    :cond_1a
    move-object/from16 v10, p1

    iget v4, v10, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;->e:I

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object v11, v3

    .end local v3    # "applyItems":Ljava/util/List;
    .local v11, "applyItems":Ljava/util/List;
    move-object/from16 v3, p4

    move-object v12, v5

    .end local v5    # "rollbackEntities":Ljava/util/List;
    .local v12, "rollbackEntities":Ljava/util/List;
    move-object v5, v9

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->a(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    return-void

    .line 559
    .end local v11    # "applyItems":Ljava/util/List;
    .end local v12    # "rollbackEntities":Ljava/util/List;
    .restart local v3    # "applyItems":Ljava/util/List;
    .restart local v5    # "rollbackEntities":Ljava/util/List;
    :cond_1b
    move-object/from16 v10, p1

    move-object v11, v3

    move-object v12, v5

    .end local v3    # "applyItems":Ljava/util/List;
    .end local v5    # "rollbackEntities":Ljava/util/List;
    .restart local v11    # "applyItems":Ljava/util/List;
    .restart local v12    # "rollbackEntities":Ljava/util/List;
    goto :goto_15

    .line 558
    .end local v11    # "applyItems":Ljava/util/List;
    .end local v12    # "rollbackEntities":Ljava/util/List;
    .restart local v3    # "applyItems":Ljava/util/List;
    .restart local v5    # "rollbackEntities":Ljava/util/List;
    :cond_1c
    move-object/from16 v10, p1

    move-object v11, v3

    move-object v12, v5

    .line 562
    .end local v3    # "applyItems":Ljava/util/List;
    .end local v5    # "rollbackEntities":Ljava/util/List;
    .restart local v11    # "applyItems":Ljava/util/List;
    .restart local v12    # "rollbackEntities":Ljava/util/List;
    :goto_15
    const-string v1, "[applyEntities && rollbackEntities] is empty. return."

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    return-void
.end method

.method private a(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 19
    .param p1, "info"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;
    .param p2, "drt"    # Ljava/lang/String;
    .param p3, "drv"    # Ljava/lang/String;
    .param p4, "items"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;",
            ">;)V"
        }
    .end annotation

    .line 377
    move-object/from16 v8, p1

    move-object/from16 v9, p4

    const/4 v0, 0x0

    .line 379
    .local v0, "applyItems":Ljava/util/List;
    const/4 v1, 0x0

    .line 381
    .local v1, "rollbackEntities":Ljava/util/List;
    iget-object v2, v8, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->rollback:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 382
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 384
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 385
    move-object v0, v2

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, p3

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    goto :goto_0

    .line 387
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getHotpatchVersion()Ljava/lang/String;

    move-result-object v2

    .line 388
    .end local p3    # "drv":Ljava/lang/String;
    .local v2, "drv":Ljava/lang/String;
    new-instance v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v3

    move-object v11, v2

    move-object v12, v2

    move-object v13, v2

    invoke-direct/range {v10 .. v16}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 390
    .local v4, "rollbackEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    move-object v4, v3

    iget v5, v8, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->quickRollback:I

    invoke-virtual {v3, v5}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->setQuickRollback(I)V

    .line 392
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 393
    move-object v1, v3

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    .end local v4    # "rollbackEntity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v16, v2

    goto :goto_0

    .line 397
    .end local v2    # "drv":Ljava/lang/String;
    .restart local p3    # "drv":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 398
    move-object v0, v2

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v16, p3

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    .line 402
    .end local v0    # "applyItems":Ljava/util/List;
    .end local v1    # "rollbackEntities":Ljava/util/List;
    .end local p3    # "drv":Ljava/lang/String;
    .local v16, "drv":Ljava/lang/String;
    .local v17, "applyItems":Ljava/util/List;
    .local v18, "rollbackEntities":Ljava/util/List;
    :goto_0
    if-eqz v17, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 405
    :cond_2
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->c:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;

    new-instance v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;

    invoke-direct {v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;-><init>()V

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c/c;->a(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;Ljava/util/List;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;JILcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)Ljava/util/List;

    move-result-object v0

    .line 406
    .local v0, "applyEntities":Ljava/util/List;
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 407
    const/4 v13, 0x0

    const/4 v1, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, v16

    move-object v14, v0

    move-object v15, v1

    invoke-direct/range {v10 .. v15}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->a(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    return-void

    .line 413
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processHotpatchInfo();  download failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " return."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DynamicRelease"

    invoke-static {v2, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    .end local v0    # "applyEntities":Ljava/util/List;
    return-void

    .line 403
    :cond_4
    :goto_1
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, v16

    move-object/from16 v15, v18

    invoke-direct/range {v10 .. v15}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->a(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
            ">;)V"
        }
    .end annotation

    .line 592
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v10, p4

    move-object/from16 v4, p5

    const-string v0, "ToolsToMain"

    const-string v5, ", drv="

    const-string v6, ", drt="

    const-string v7, "DynamicReleaseProcessService return (don\'t process). result="

    const-string v11, "DynamicRelease"

    .line 593
    nop

    .line 596
    const/4 v8, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 597
    const-string/jumbo v14, "tools"

    invoke-static {v0, v14, v12, v13}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/a/a;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 599
    iget-object v14, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->b:Landroid/content/Context;

    invoke-static {v14}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;->request(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;

    move-result-object v14
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    :try_start_1
    invoke-virtual {v14}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;->getDynamicReleaseProcessor()Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/IDynamicReleaseProcessor;

    move-result-object v15

    .line 602
    invoke-interface {v15, v9, v3, v4, v10}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/IDynamicReleaseProcessor;->processDynamicRelease(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    move-result-object v8

    .line 605
    const-string/jumbo v15, "main"

    invoke-static {v0, v15, v12, v13}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/a/a;->a(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 618
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v11, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object v0, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->b:Landroid/content/Context;

    invoke-static {v0, v14}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;->release(Landroid/content/Context;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 624
    return-void

    .line 606
    :catch_0
    move-exception v0

    goto :goto_0

    .line 618
    :catchall_0
    move-exception v0

    move-object v14, v8

    goto :goto_1

    .line 606
    :catch_1
    move-exception v0

    move-object v14, v8

    .line 608
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v12

    invoke-interface {v12, v11, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 611
    instance-of v12, v0, Landroid/os/DeadObjectException;

    if-nez v12, :cond_0

    instance-of v12, v0, Landroid/os/TransactionTooLargeException;

    if-eqz v12, :cond_1

    .line 612
    :cond_0
    invoke-direct {v1, v9, v3, v4, v10}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->a(Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v8, v3

    .line 614
    :cond_1
    if-eqz v8, :cond_2

    .line 618
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v11, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object v0, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->b:Landroid/content/Context;

    invoke-static {v0, v14}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;->release(Landroid/content/Context;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 624
    return-void

    .line 615
    :cond_2
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 618
    :catchall_1
    move-exception v0

    :goto_1
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v11, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object v2, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->b:Landroid/content/Context;

    invoke-static {v2, v14}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;->release(Landroid/content/Context;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 628
    :catchall_2
    move-exception v0

    .line 631
    const/16 v12, 0x30

    const-string v14, "issueDesc"

    if-eqz v4, :cond_7

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 632
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    .line 633
    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getLogParams()Ljava/util/Map;

    move-result-object v8

    .line 635
    sget-object v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v3}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v8, :cond_6

    invoke-interface {v8, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 636
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->getHotpatchDesc()Ljava/lang/String;

    move-result-object v3

    .line 637
    invoke-interface {v8, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 638
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 639
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 640
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 641
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 642
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v6

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 643
    nop

    .line 644
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v6, v13, :cond_3

    .line 645
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    sub-int/2addr v13, v6

    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    goto :goto_4

    .line 644
    :cond_3
    const/16 v13, 0x30

    .line 648
    :goto_4
    if-ne v12, v13, :cond_4

    if-eq v13, v7, :cond_4

    .line 649
    const/4 v13, 0x0

    invoke-virtual {v5, v13, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 648
    :cond_4
    const/4 v13, 0x0

    .line 651
    invoke-virtual {v5, v13, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 641
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 654
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    :cond_6
    iget-object v3, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resId:Ljava/lang/String;

    iget-object v4, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resVersion:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "Start|Fail_Remote"

    move-object/from16 v2, p1

    move-object v7, v0

    invoke-static/range {v2 .. v8}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 658
    goto/16 :goto_2

    .line 661
    :cond_7
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 662
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    .line 663
    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getLogParams()Ljava/util/Map;

    move-result-object v13

    .line 664
    iget-object v3, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resId:Ljava/lang/String;

    iget-object v4, v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resVersion:Ljava/lang/String;

    const/4 v5, 0x1

    const-string v6, "Start|Download|Verify|Fail_Remote"

    move-object/from16 v2, p1

    move-object v7, v0

    move-object v8, v13

    invoke-static/range {v2 .. v8}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 666
    sget-object v2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v2}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    if-eqz v13, :cond_d

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 667
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getHotpatchDesc()Ljava/lang/String;

    move-result-object v2

    .line 668
    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 669
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 670
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 671
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 672
    const/4 v5, 0x0

    :goto_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_a

    .line 673
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v5

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 674
    nop

    .line 675
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_8

    .line 676
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v5

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_8

    .line 675
    :cond_8
    const/16 v7, 0x30

    .line 679
    :goto_8
    if-ne v12, v7, :cond_9

    if-eq v7, v6, :cond_9

    .line 680
    const/4 v15, 0x0

    invoke-virtual {v4, v15, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 679
    :cond_9
    const/4 v15, 0x0

    .line 682
    invoke-virtual {v4, v15, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 672
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 685
    :cond_a
    const/4 v15, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getHotpatchVersion()Ljava/lang/String;

    move-result-object v4

    .line 687
    const/4 v5, 0x0

    const-string v6, "Start|Fail_Remote"

    move-object/from16 v2, p1

    move-object v3, v4

    move-object v7, v0

    move-object v8, v13

    invoke-static/range {v2 .. v8}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    goto :goto_a

    .line 670
    :cond_b
    const/4 v15, 0x0

    goto :goto_a

    .line 669
    :cond_c
    const/4 v15, 0x0

    goto :goto_a

    .line 666
    :cond_d
    const/4 v15, 0x0

    .line 690
    :goto_a
    goto/16 :goto_6

    .line 693
    :cond_e
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "processDynamicRelease() exception occur."

    invoke-interface {v2, v11, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 695
    return-void
.end method

.method private a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;Ljava/util/List;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)Z
    .locals 4
    .param p1, "requestInfo"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;
    .param p2, "infoList"    # Ljava/util/List;
    .param p3, "callback"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;",
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;",
            ">;",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;",
            ")Z"
        }
    .end annotation

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "bRet":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;

    .line 321
    .local v2, "info":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;
    new-instance v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a/a;

    invoke-direct {v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a/a;-><init>()V

    iget-object v3, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->b:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a/a;->a(Landroid/content/Context;Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 322
    const/4 v0, 0x1

    .line 323
    invoke-direct {p0, p1, v2, p3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)V

    .line 325
    .end local v2    # "info":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;
    :cond_0
    goto :goto_0

    .line 326
    :cond_1
    if-nez v0, :cond_2

    .line 327
    const/4 v1, -0x3

    const/4 v2, 0x0

    invoke-static {p3, v1, v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;ILjava/lang/String;)V

    .line 329
    :cond_2
    return v0
.end method

.method private b(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 15
    .param p1, "info"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;
    .param p2, "drt"    # Ljava/lang/String;
    .param p3, "drv"    # Ljava/lang/String;
    .param p4, "items"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;",
            ">;)V"
        }
    .end annotation

    .line 575
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "processCmdInfo() : info="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DynamicRelease"

    invoke-interface {v0, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 579
    .local v0, "applyEntities":Ljava/util/List;
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;

    .line 580
    .local v3, "item":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;
    new-instance v14, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    iget-object v6, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resId:Ljava/lang/String;

    iget-object v7, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resVersion:Ljava/lang/String;

    iget-object v8, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resType:Ljava/lang/String;

    iget-object v9, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->fileMD5:Ljava/lang/String;

    iget-object v10, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->fileUrl:Ljava/lang/String;

    iget-object v11, v3, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->fileContent:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v4, v14

    move-object/from16 v5, p3

    invoke-direct/range {v4 .. v13}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    .local v4, "entity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    .end local v3    # "item":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;
    .end local v4    # "entity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    goto :goto_0

    .line 585
    :cond_0
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v7, v0

    invoke-direct/range {v3 .. v8}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->a(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V

    .line 586
    return-void
.end method


# virtual methods
.method public processDynamicReleaseResult(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceResult;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)Z
    .locals 6
    .param p1, "RequestInfo"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;
    .param p2, "result"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceResult;
    .param p3, "callback"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;

    .line 288
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "process DynamicResourceResult: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DynamicRelease"

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceResult;->info:Ljava/util/List;

    const/4 v1, 0x0

    move-object v3, v1

    .line 291
    .local v3, "infoList":Ljava/util/List;
    move-object v3, v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator$1;-><init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 306
    invoke-direct {p0, p1, v3, p3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;Ljava/util/List;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)Z

    move-result v0

    return v0

    .line 292
    :cond_1
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "infoList="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", bRet=false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const/4 v0, -0x2

    invoke-static {p3, v0, v1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;ILjava/lang/String;)V

    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method declared-synchronized rpcRequest(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;Lcom/alipay/mobile/common/rpc/RpcFactory;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)Z
    .locals 9

    monitor-enter p0

    .line 166
    :try_start_0
    iget-object v0, p3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;->c:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 171
    :cond_0
    new-instance v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;

    invoke-direct {v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;-><init>()V

    .line 172
    sget-object v2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;->android:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;

    iput-object v2, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->platform:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionPlatformType;

    .line 173
    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;->getProductId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->productId:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->productVersion:Ljava/lang/String;

    .line 175
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->getReleaseCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->releaseVersion:Ljava/lang/String;

    .line 189
    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->utdid:Ljava/lang/String;

    .line 190
    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getClientId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->clientId:Ljava/lang/String;

    .line 191
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->phoneBrand:Ljava/lang/String;

    .line 192
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->phoneModel:Ljava/lang/String;

    .line 193
    invoke-static {}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/a;->a()Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/WireLiteWrapper;->toUnionAndroidVmType(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->vmType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

    .line 194
    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;->getChannelId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->channel:Ljava/lang/String;

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->apiLevel:Ljava/lang/String;

    .line 196
    iget-object v2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->netType:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->uid:Ljava/lang/String;

    .line 198
    invoke-static {}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/b;->a()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->cpuInstructionList:Ljava/util/List;

    .line 199
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->manufacturer:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/RuntimeInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->extraInfo:Ljava/lang/String;

    .line 201
    iget p1, p3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;->a:I

    invoke-static {p1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/WireLiteWrapper;->toUnionStartTimingType(I)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;

    move-result-object p1

    iput-object p1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->startTiming:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;

    .line 202
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getDeviceProperty()Lcom/alipay/mobile/common/logging/api/DeviceProperty;

    move-result-object p1

    invoke-interface {p1}, Lcom/alipay/mobile/common/logging/api/DeviceProperty;->getRomVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->rom:Ljava/lang/String;

    .line 203
    invoke-direct {p0, p3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->resourceParam:Ljava/util/List;

    .line 204
    iget-object p1, p3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;->d:Ljava/lang/String;

    iput-object p1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->clientPosition:Ljava/lang/String;

    .line 205
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object p1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->osVersion:Ljava/lang/String;

    .line 207
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p1

    const-string v2, "DynamicRelease"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "rpc request: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 209
    nop

    .line 211
    :try_start_1
    const-class p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/UnionResourceFacade;

    invoke-virtual {p2, p1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getBgRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/UnionResourceFacade;

    .line 212
    invoke-virtual {p2, p1}, Lcom/alipay/mobile/common/rpc/RpcFactory;->getRpcInvokeContext(Ljava/lang/Object;)Lcom/alipay/mobile/common/rpc/RpcInvokeContext;

    .line 217
    invoke-interface {p1, v0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/UnionResourceFacade;->getUnionResource(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;

    move-result-object p1

    .line 218
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p2

    const-string v2, "DynamicRelease"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "rpc result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-wide/16 v2, 0x0

    if-eqz p1, :cond_2

    sget-object p2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->e:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;

    invoke-virtual {p2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/b/b$a;->a()Ljava/lang/String;

    move-result-object p2

    iget-object v0, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceRequest;->netType:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 222
    iget-object p2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->b:Landroid/content/Context;

    const-string v0, "DynamicReleaseTools"

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 223
    const-string v0, "last_wifi_time"

    invoke-interface {p2, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 224
    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 225
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v6, "wifi_interval"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-interface {v0, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 227
    :cond_1
    const-string v0, "client_upgrade_time"

    invoke-interface {p2, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 228
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v6, "wifi_interval"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    invoke-interface {v0, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 231
    :goto_0
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v0, "last_wifi_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {p2, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 234
    :cond_2
    if-eqz p1, :cond_7

    .line 238
    iget-object p2, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->success:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 243
    const-string p2, "Start|Success"

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeRPCLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    iget-object p2, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->limit:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceLimit;

    if-eqz p2, :cond_5

    .line 246
    iget-object p2, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->limit:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceLimit;

    iget-object p2, p2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceLimit;->waittime:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget-object v4, p1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->limit:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceLimit;

    iget-object v4, v4, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceLimit;->randomtime:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr p2, v0

    int-to-long v4, p2

    .line 247
    cmp-long p2, v4, v2

    if-lez p2, :cond_4

    .line 249
    iget p1, p3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;->a:I

    sget-object p2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->WHEN_USER:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    invoke-virtual {p2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->getValue()I

    move-result p2

    if-eq p1, p2, :cond_3

    .line 250
    iget-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;->request(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;

    move-result-object p1

    .line 251
    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;->getDynamicReleaseProcessor()Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/IDynamicReleaseProcessor;

    move-result-object p2

    .line 252
    invoke-interface {p2, v4, v5}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/IDynamicReleaseProcessor;->processRpcLimit(J)V

    .line 253
    iget-object p2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->b:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;->release(Landroid/content/Context;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/process/ProcessServiceConnection;)V

    .line 255
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "RPC is limiting"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 257
    :cond_4
    invoke-static {p1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/WireLiteWrapper;->toDynamicResourceResult(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceResult;

    move-result-object p1

    invoke-virtual {p0, p3, p1, p4}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->processDynamicReleaseResult(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceResult;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)Z

    move-result v1

    .line 259
    goto :goto_1

    .line 260
    :cond_5
    invoke-static {p1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/WireLiteWrapper;->toDynamicResourceResult(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceResult;

    move-result-object p1

    invoke-virtual {p0, p3, p1, p4}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->processDynamicReleaseResult(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/c;Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceResult;Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;)Z

    move-result v1

    .line 267
    goto :goto_1

    .line 239
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "RPC result is failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 240
    const-string p2, "Start|Fail"

    invoke-static {p2, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeRPCLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    throw p1

    .line 235
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "RPC result is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 236
    const-string p2, "Start|Fail"

    invoke-static {p2, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeRPCLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 237
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    :catchall_0
    move-exception p1

    .line 264
    :try_start_2
    const-string p2, "Start|Fail"

    invoke-static {p2, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeRPCLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object p2

    const-string p3, "DynamicRelease"

    invoke-interface {p2, p3, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p2, p1}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/DynamicReleaseCenterOperator;->a(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/request/IDynamicReleaseCallback;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 268
    :goto_1
    monitor-exit p0

    return v1

    .line 167
    :cond_8
    :goto_2
    :try_start_3
    const-string p1, "DynamicRelease"

    const-string/jumbo p2, "requestInfo.types is empty"

    invoke-static {p1, p2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 168
    monitor-exit p0

    return v1

    .line 165
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
