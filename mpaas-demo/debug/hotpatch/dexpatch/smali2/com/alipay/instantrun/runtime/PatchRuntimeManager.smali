.class public Lcom/alipay/instantrun/runtime/PatchRuntimeManager;
.super Ljava/lang/Object;
.source "PatchRuntimeManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IR.PatchRuntimeManager"

.field private static final sPatchRuntimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/instantrun/runtime/PatchRuntime;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/instantrun/runtime/PatchRuntimeManager;->sPatchRuntimeMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPatchStatus(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 111
    nop

    .line 112
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 113
    sget-object v4, Lcom/alipay/instantrun/runtime/PatchRuntimeManager;->sPatchRuntimeMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 114
    or-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_0
    or-int/lit16 v2, v2, 0x100

    .line 118
    goto :goto_0

    .line 119
    :cond_1
    sget-object v1, Lcom/alipay/instantrun/runtime/PatchRuntimeManager;->sPatchRuntimeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 120
    invoke-interface {p0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    .line 121
    or-int/lit8 v2, v2, 0x10

    goto :goto_1

    .line 123
    :cond_2
    or-int/lit16 v2, v2, 0x100

    .line 125
    goto :goto_1

    .line 126
    :cond_3
    return v2

    .line 127
    :catchall_0
    move-exception p0

    .line 128
    const-string v1, "IR.PatchRuntimeManager"

    invoke-static {v1, p0}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    return v0
.end method

.method public static declared-synchronized cleanRuntimePatch()V
    .locals 6

    const-class v0, Lcom/alipay/instantrun/runtime/PatchRuntimeManager;

    monitor-enter v0

    .line 66
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    sget-object v2, Lcom/alipay/instantrun/runtime/PatchRuntimeManager;->sPatchRuntimeMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 68
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 69
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/instantrun/runtime/PatchRuntime;

    .line 70
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v3, :cond_0

    .line 74
    invoke-virtual {v3}, Lcom/alipay/instantrun/runtime/PatchRuntime;->rollback()I

    move-result v3

    .line 75
    and-int/lit8 v3, v3, 0x1

    if-gtz v3, :cond_1

    .line 76
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_1
    goto :goto_0

    .line 79
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 80
    sget-object v3, Lcom/alipay/instantrun/runtime/PatchRuntimeManager;->sPatchRuntimeMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    monitor-exit v0

    return-void

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized installPatch(Lcom/alipay/instantrun/Patch;Ljava/lang/String;Ljava/lang/ClassLoader;)I
    .locals 6

    const-class v0, Lcom/alipay/instantrun/runtime/PatchRuntimeManager;

    monitor-enter v0

    .line 25
    :try_start_0
    const-string v1, "IR.PatchRuntimeManager"

    const-string v2, "installPatch: enter"

    invoke-static {v1, v2}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    if-eqz p0, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 32
    :cond_0
    sget-object v1, Lcom/alipay/instantrun/runtime/PatchRuntimeManager;->sPatchRuntimeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/instantrun/runtime/PatchRuntime;

    .line 33
    if-eqz v2, :cond_4

    .line 35
    invoke-virtual {v2, p0, p1, p2}, Lcom/alipay/instantrun/runtime/PatchRuntime;->isMyself(Lcom/alipay/instantrun/Patch;Ljava/lang/String;Ljava/lang/ClassLoader;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2, p0, p1}, Lcom/alipay/instantrun/runtime/PatchRuntime;->isSamePatch(Lcom/alipay/instantrun/Patch;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v2, p0, p1}, Lcom/alipay/instantrun/runtime/PatchRuntime;->isSamePatch(Lcom/alipay/instantrun/Patch;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 40
    invoke-virtual {p0, p1}, Lcom/alipay/instantrun/Patch;->forceInstantRun(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 41
    invoke-virtual {v2}, Lcom/alipay/instantrun/runtime/PatchRuntime;->rollback()I

    move-result v2

    .line 42
    const-string v3, "IR.PatchRuntimeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "forceInstantRun rollbackResult:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    and-int/lit8 v2, v2, 0x10

    if-lez v2, :cond_2

    .line 44
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v2, Lcom/alipay/instantrun/runtime/PatchRuntime;

    invoke-direct {v2, p0, p1, p2}, Lcom/alipay/instantrun/runtime/PatchRuntime;-><init>(Lcom/alipay/instantrun/Patch;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 46
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-virtual {v2}, Lcom/alipay/instantrun/runtime/PatchRuntime;->installPatch()I

    move-result p0

    .line 48
    const-string p1, "IR.PatchRuntimeManager"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "forceInstantRun installPatch: patchResult:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit v0

    return p0

    .line 53
    :cond_2
    :try_start_1
    const-string p0, "IR.PatchRuntimeManager"

    const-string p1, "installPatch: triggered before, new patch installed failed"

    invoke-static {p0, p1}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    const/16 p0, 0x100

    monitor-exit v0

    return p0

    .line 36
    :cond_3
    :goto_0
    :try_start_2
    const-string p0, "IR.PatchRuntimeManager"

    const-string p1, "installPatch: triggered before, old result"

    invoke-static {p0, p1}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v2}, Lcom/alipay/instantrun/runtime/PatchRuntime;->getInstallResult()I

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return p0

    .line 58
    :cond_4
    :try_start_3
    new-instance v2, Lcom/alipay/instantrun/runtime/PatchRuntime;

    invoke-direct {v2, p0, p1, p2}, Lcom/alipay/instantrun/runtime/PatchRuntime;-><init>(Lcom/alipay/instantrun/Patch;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 59
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-virtual {v2}, Lcom/alipay/instantrun/runtime/PatchRuntime;->installPatch()I

    move-result p0

    .line 61
    const-string p1, "IR.PatchRuntimeManager"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "installPatch: patchResult:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    monitor-exit v0

    return p0

    .line 28
    :cond_5
    :goto_1
    :try_start_4
    const-string p0, "IR.PatchRuntimeManager"

    const-string p1, "installPatch: got invalid params"

    invoke-static {p0, p1}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 29
    const/4 p0, 0x1

    monitor-exit v0

    return p0

    .line 24
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isPatchTriggered(Ljava/lang/String;)Z
    .locals 2

    .line 85
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const/4 p0, 0x0

    return p0

    .line 88
    :cond_0
    sget-object v0, Lcom/alipay/instantrun/runtime/PatchRuntimeManager;->sPatchRuntimeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "isPatchTriggered="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "IR.PatchRuntimeManager"

    invoke-static {v1, p0}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return v0
.end method

.method public static isSamePatch(Lcom/alipay/instantrun/Patch;Ljava/lang/String;)Z
    .locals 2

    .line 100
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    sget-object v1, Lcom/alipay/instantrun/runtime/PatchRuntimeManager;->sPatchRuntimeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/instantrun/runtime/PatchRuntime;

    .line 104
    if-eqz v1, :cond_1

    invoke-virtual {v1, p0, p1}, Lcom/alipay/instantrun/runtime/PatchRuntime;->isSamePatch(Lcom/alipay/instantrun/Patch;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    .line 105
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "isSamePatch="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IR.PatchRuntimeManager"

    invoke-static {p1, p0}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return v0

    .line 101
    :cond_2
    :goto_0
    return v0
.end method
