.class public abstract Lcom/uc/webview/export/utility/SetupTask;
.super Lcom/uc/webview/export/internal/setup/UCSetupTask;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uc/webview/export/internal/setup/UCSetupTask<",
        "Lcom/uc/webview/export/utility/SetupTask;",
        "Lcom/uc/webview/export/utility/SetupTask;",
        ">;"
    }
.end annotation


# static fields
.field public static sFirstUCM:Lcom/uc/webview/export/internal/setup/br;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/webview/export/utility/SetupTask;->sFirstUCM:Lcom/uc/webview/export/internal/setup/br;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;-><init>()V

    .line 29
    const-string v0, "SetupTask"

    iput-object v0, p0, Lcom/uc/webview/export/utility/SetupTask;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected callStatException(Ljava/lang/String;Lcom/uc/webview/export/internal/setup/UCSetupException;)V
    .locals 6

    .line 80
    const-string v0, ""

    .line 81
    nop

    .line 84
    :try_start_0
    invoke-virtual {p2}, Lcom/uc/webview/export/internal/setup/UCSetupException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :try_start_1
    invoke-virtual {p2}, Lcom/uc/webview/export/internal/setup/UCSetupException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 86
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x100

    if-gt v5, v4, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    .line 86
    :goto_0
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 89
    :catch_0
    move-exception v2

    goto :goto_1

    .line 100
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 89
    :catch_1
    move-exception v1

    move-object v1, v0

    :goto_1
    nop

    .line 91
    :try_start_2
    new-instance v2, Landroid/util/Pair;

    new-instance v3, Lcom/uc/webview/export/cyclone/UCHashMap;

    invoke-direct {v3}, Lcom/uc/webview/export/cyclone/UCHashMap;-><init>()V

    const-string v4, "cnt"

    const-string v5, "1"

    .line 94
    invoke-virtual {v3, v4, v5}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v3

    const-string v4, "err"

    .line 95
    invoke-virtual {p2}, Lcom/uc/webview/export/internal/setup/UCSetupException;->errCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, v4, p2}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object p2

    const-string v3, "cls"

    .line 96
    invoke-virtual {p2, v3, v1}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object p2

    const-string v1, "msg"

    .line 97
    invoke-virtual {p2, v1, v0}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object p2

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p0, v2}, Lcom/uc/webview/export/utility/SetupTask;->callbackStat(Landroid/util/Pair;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    return-void

    .line 101
    :goto_2
    return-void
.end method

.method public callbackFinishStat(Ljava/lang/String;)V
    .locals 3

    .line 58
    const-string v0, "i"

    const-string v1, "SetupTask"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finish: core="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, p1, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 62
    :cond_0
    return-void
.end method

.method public getFirstUCMFileHashs()Ljava/lang/String;
    .locals 4

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    :try_start_0
    sget-object v1, Lcom/uc/webview/export/utility/SetupTask;->sFirstUCM:Lcom/uc/webview/export/internal/setup/br;

    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {v1}, Lcom/uc/webview/export/internal/setup/br;->getFileHashs()Ljava/util/Map;

    move-result-object v1

    .line 115
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 116
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 118
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    goto :goto_0

    .line 120
    :cond_0
    goto :goto_1

    .line 121
    :cond_1
    const-string v1, "first_ucm=null;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    goto :goto_1

    .line 123
    :catchall_0
    move-exception v1

    .line 124
    const-string v2, "SetupTask"

    const-string v3, "getFirstUCMFileHashs error"

    invoke-static {v2, v3, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPercent()I
    .locals 1

    .line 131
    invoke-super {p0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getPercent()I

    move-result v0

    return v0
.end method

.method public bridge synthetic setAsDefault()Lcom/uc/webview/export/internal/setup/BaseSetupTask;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/uc/webview/export/utility/SetupTask;->setAsDefault()Lcom/uc/webview/export/utility/SetupTask;

    move-result-object v0

    return-object v0
.end method

.method public setAsDefault()Lcom/uc/webview/export/utility/SetupTask;
    .locals 1

    .line 105
    sput-object p0, Lcom/uc/webview/export/internal/SDKFactory;->u:Lcom/uc/webview/export/utility/SetupTask;

    .line 106
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->k:Z

    .line 107
    return-object p0
.end method

.method public setException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V
    .locals 1

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/uc/webview/export/utility/SetupTask;->setException(Lcom/uc/webview/export/internal/setup/UCSetupException;Z)V

    .line 67
    return-void
.end method

.method public setException(Lcom/uc/webview/export/internal/setup/UCSetupException;Z)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->setException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    .line 72
    const-string v0, "sdk_stp_exc"

    invoke-virtual {p0, v0, p1}, Lcom/uc/webview/export/utility/SetupTask;->callStatException(Ljava/lang/String;Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    .line 73
    const-string v0, "0"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/utility/SetupTask;->callbackFinishStat(Ljava/lang/String;)V

    .line 74
    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/UCSetupException;->toRunnable()Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcom/uc/webview/export/internal/SDKFactory;->a(Ljava/lang/Runnable;)V

    .line 77
    :cond_0
    return-void
.end method

.method public startSync()V
    .locals 2

    .line 34
    invoke-virtual {p0}, Lcom/uc/webview/export/utility/SetupTask;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 37
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 40
    :goto_0
    invoke-static {}, Lcom/uc/webview/export/internal/SDKFactory;->h()V

    .line 41
    return-void
.end method
