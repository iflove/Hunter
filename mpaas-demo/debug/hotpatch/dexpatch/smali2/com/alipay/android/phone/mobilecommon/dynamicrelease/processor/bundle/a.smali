.class public final Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/a;
.super Ljava/lang/Object;
.source "BundleProcessor.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseProcessorExt;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/a;->a:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method public final process(Ljava/util/List;Ljava/util/List;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;
    .locals 22
    .param p1, "rollbackEntities"    # Ljava/util/List;
    .param p2, "applyEntities"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
            ">;)",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "DynamicRelease"

    .line 44
    iget-object v0, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;

    move-result-object v0

    iget-object v3, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->clearKillProcessFlag(Landroid/content/Context;)V

    .line 47
    iget-object v0, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->pauseKillProcess()Z

    const/4 v0, 0x0

    .line 80
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 47
    move v4, v0

    .line 50
    .local v4, "bRet":Z
    const/4 v5, 0x0

    .line 51
    .local v5, "bEffect":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v6, "removeNames":Ljava/util/ArrayList;
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 53
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    .line 54
    .local v8, "entity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    iget-object v9, v8, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resId:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    .end local v8    # "entity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    goto :goto_0

    .line 58
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v7, "applyNames":Ljava/util/ArrayList;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v8, "updatePaths":Ljava/util/List;
    if-eqz p2, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 61
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    .line 62
    .local v11, "entity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    invoke-virtual {v11}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getLocation()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v12, v11, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resId:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .end local v11    # "entity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    goto :goto_1

    .line 68
    :cond_1
    const/4 v10, 0x0

    const/4 v11, 0x0

    :cond_2
    :try_start_0
    iget-object v12, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/a;->a:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    .line 71
    .local v10, "context":Landroid/content/Context;
    move-object v10, v12

    const-string v13, "getBundleManager"

    invoke-static {v12, v13}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 73
    .local v11, "bundleManager":Ljava/lang/Object;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "BundleManager.updateBundles(updatePaths="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", removeNames="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-static {v6}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "), begin."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 73
    invoke-static {v2, v12}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 77
    .local v12, "updateResult":Landroid/os/Bundle;
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 78
    .local v13, "updatedBundleNames":Ljava/util/Set;
    const-string/jumbo v14, "updateBundles"

    const/4 v15, 0x6

    new-array v9, v15, [Ljava/lang/Class;

    const-class v17, Ljava/util/List;

    aput-object v17, v9, v0

    const-class v17, Ljava/util/List;

    const/4 v15, 0x1

    aput-object v17, v9, v15

    const-class v17, Ljava/util/Set;

    const/16 v19, 0x2

    aput-object v17, v9, v19

    sget-object v17, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x3

    aput-object v17, v9, v15

    sget-object v17, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v20, 0x4

    aput-object v17, v9, v20

    const-class v17, Landroid/os/Bundle;

    const/16 v21, 0x5

    aput-object v17, v9, v21

    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v8, v15, v0

    const/16 v18, 0x1

    aput-object v6, v15, v18

    aput-object v13, v15, v19

    .line 80
    const/16 v17, 0x3

    aput-object v3, v15, v17

    aput-object v3, v15, v20

    aput-object v12, v15, v21

    .line 78
    invoke-static {v11, v14, v9, v15}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v5, v3

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "BundleManager.updateBundles(), end. updatedBundleNames="

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-static {v13}, Lcom/alipay/mobile/quinox/utils/StringUtil;->collection2String(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", effect="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-static {v2, v3}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v3, "com.alipay.mobile.framework.DescriptionManager"

    const-string v9, "createInstance"

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Class;

    const-class v18, Landroid/content/Context;

    aput-object v18, v15, v0

    new-array v0, v14, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v10, v0, v14

    invoke-static {v3, v9, v15, v0}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    const-string/jumbo v3, "updateDescriptionsFromMetaInfoCfg"

    const/4 v9, 0x3

    new-array v14, v9, [Ljava/lang/Class;

    const-class v9, Ljava/util/Collection;

    const/4 v15, 0x0

    aput-object v9, v14, v15

    const-class v9, Ljava/util/Collection;

    const/4 v15, 0x1

    aput-object v9, v14, v15

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v14, v19

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v6, v9, v15

    const/4 v15, 0x1

    aput-object v13, v9, v15

    .line 94
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v9, v19

    .line 92
    invoke-static {v0, v3, v14, v9}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 96
    if-eqz v5, :cond_3

    .line 101
    :try_start_1
    const-string v0, "com.alipay.mobile.liteprocess.LiteProcessApi"

    const-string/jumbo v3, "notifyBundleUpdate"

    const/4 v9, 0x1

    new-array v14, v9, [Ljava/lang/Class;

    const-class v15, Landroid/os/Bundle;

    const/16 v17, 0x0

    aput-object v15, v14, v17

    new-array v15, v9, [Ljava/lang/Object;

    aput-object v12, v15, v17

    invoke-static {v0, v3, v14, v15}, Lcom/alipay/mobile/quinox/utils/ReflectUtil;->invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    goto :goto_2

    .line 102
    :catchall_0
    move-exception v0

    .line 104
    .local v0, "tr":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 108
    .end local v0    # "tr":Ljava/lang/Throwable;
    .end local v11    # "bundleManager":Ljava/lang/Object;
    :cond_3
    :goto_2
    const/4 v0, 0x0

    :goto_3
    if-nez v5, :cond_9

    .line 109
    iget-object v3, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/a;->a:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-static {v3, v9}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->setNeedRestart(Landroid/content/Context;Z)V

    .line 110
    if-eqz p2, :cond_5

    .line 111
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v9, 0x0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    .line 112
    .local v9, "entity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    move-object v9, v3

    if-eqz v3, :cond_4

    iget-object v3, v9, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resId:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 113
    invoke-static {v10}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;

    move-result-object v3

    iget-object v14, v9, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resId:Ljava/lang/String;

    iget-object v15, v9, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resVersion:Ljava/lang/String;

    invoke-virtual {v3, v14, v15}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .end local v9    # "entity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    :cond_4
    goto :goto_4

    .line 110
    :cond_5
    const/4 v9, 0x0

    .line 118
    :cond_6
    if-eqz p1, :cond_a

    .line 119
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    .line 120
    .restart local v9    # "entity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    move-object v9, v3

    if-eqz v3, :cond_7

    iget-object v3, v9, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resId:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 121
    invoke-static {v10}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;

    move-result-object v3

    iget-object v14, v9, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resId:Ljava/lang/String;

    iget-object v15, v9, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resVersion:Ljava/lang/String;

    invoke-virtual {v3, v14, v15}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->addParams(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .end local v9    # "entity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    :cond_7
    goto :goto_5

    :cond_8
    goto :goto_6

    .line 126
    :cond_9
    iget-object v3, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/a;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->resumeKillProcess()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 129
    :cond_a
    :goto_6
    if-eqz v5, :cond_b

    .line 131
    :try_start_3
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.alipay.mobile.dynamicrelease.bundle.update"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    move-object v0, v3

    const-string v9, "applyBundles"

    invoke-virtual {v3, v9, v7}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 133
    const-string/jumbo v3, "rollbackBundles"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 134
    invoke-static {v10}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 137
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_7

    .line 135
    :catchall_1
    move-exception v0

    .line 136
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_4
    invoke-static {v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 140
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_b
    :goto_7
    const/4 v0, 0x1

    .line 160
    .end local v4    # "bRet":Z
    .end local v10    # "context":Landroid/content/Context;
    .end local v12    # "updateResult":Landroid/os/Bundle;
    .end local v13    # "updatedBundleNames":Ljava/util/Set;
    .local v0, "bRet":Z
    goto/16 :goto_a

    .line 141
    .end local v0    # "bRet":Z
    .restart local v4    # "bRet":Z
    :catchall_2
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    const/4 v2, 0x0

    .line 146
    .end local v4    # "bRet":Z
    .local v2, "bRet":Z
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v11

    .line 147
    .local v4, "exception":Ljava/lang/String;
    move-object v4, v3

    if-eqz v3, :cond_c

    const-string v3, "Last update not done, wait till next launch."

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 148
    :cond_c
    if-eqz p1, :cond_d

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d

    .line 149
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    .line 150
    .restart local v9    # "entity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    sget-object v10, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->BUNDLE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v10}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v9, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resId:Ljava/lang/String;

    iget-object v14, v9, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resVersion:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v9}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getLogParams()Ljava/util/Map;

    move-result-object v18

    const-string v16, "Start|Fail"

    move-object/from16 v17, v0

    invoke-static/range {v12 .. v18}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 151
    .end local v9    # "entity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    goto :goto_8

    .line 154
    :cond_d
    if-eqz p2, :cond_e

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e

    .line 155
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;

    .line 156
    .restart local v9    # "entity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    sget-object v10, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->BUNDLE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-virtual {v10}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->name()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v9, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resId:Ljava/lang/String;

    iget-object v14, v9, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->resVersion:Ljava/lang/String;

    const/4 v15, 0x1

    invoke-virtual {v9}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;->getLogParams()Ljava/util/Map;

    move-result-object v18

    const-string v16, "Start|Download|Verify|Fail"

    move-object/from16 v17, v0

    invoke-static/range {v12 .. v18}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/DynamicReleaseBehaveLogger;->writeLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 157
    .end local v9    # "entity":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;
    goto :goto_9

    .line 162
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v4    # "exception":Ljava/lang/String;
    :cond_e
    move v0, v2

    .end local v2    # "bRet":Z
    .local v0, "bRet":Z
    :goto_a
    if-eqz v0, :cond_10

    .line 163
    if-eqz v5, :cond_f

    .line 164
    sget-object v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;->SUCCESS:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    return-object v2

    .line 167
    :cond_f
    iget-object v2, v1, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->getInstance(Landroid/content/Context;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/KillProcess;->markKillProcessFlag()V

    .line 168
    sget-object v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;->SUCCESS_NEED_RESTART:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    return-object v2

    .line 172
    :cond_10
    sget-object v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;->FAILED:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    return-object v2
.end method

.method public final processDynamicRelease(Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .param p1, "rollbackEntities"    # Ljava/util/List;
    .param p2, "applyEntities"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseEntity;",
            ">;)Z"
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/processor/bundle/a;->process(Ljava/util/List;Ljava/util/List;)Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    move-result-object v0

    const/4 v1, 0x0

    .line 38
    .local v1, "processResult":Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;
    move-object v1, v0

    sget-object v2, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;->SUCCESS:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    if-eq v0, v2, :cond_1

    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;->SUCCESS_NEED_RESTART:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/aidl/DynamicReleaseProcessResult;

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
