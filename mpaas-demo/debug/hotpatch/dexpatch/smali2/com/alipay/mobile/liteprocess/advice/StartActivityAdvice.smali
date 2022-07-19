.class public Lcom/alipay/mobile/liteprocess/advice/StartActivityAdvice;
.super Lcom/alipay/mobile/liteprocess/advice/AbsLiteProcessAdvice;
.source "StartActivityAdvice.java"


# static fields
.field private static a:Lcom/alipay/mobile/liteprocess/advice/StartActivityAdvice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/alipay/mobile/liteprocess/advice/AbsLiteProcessAdvice;-><init>()V

    return-void
.end method

.method public static register()V
    .locals 4

    .line 23
    sget-object v0, Lcom/alipay/mobile/liteprocess/advice/StartActivityAdvice;->a:Lcom/alipay/mobile/liteprocess/advice/StartActivityAdvice;

    if-eqz v0, :cond_0

    .line 24
    return-void

    .line 26
    :cond_0
    const-class v0, Lcom/alipay/mobile/liteprocess/advice/StartActivityAdvice;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/liteprocess/advice/StartActivityAdvice;->a:Lcom/alipay/mobile/liteprocess/advice/StartActivityAdvice;

    if-nez v1, :cond_1

    .line 28
    new-instance v1, Lcom/alipay/mobile/liteprocess/advice/StartActivityAdvice;

    invoke-direct {v1}, Lcom/alipay/mobile/liteprocess/advice/StartActivityAdvice;-><init>()V

    sput-object v1, Lcom/alipay/mobile/liteprocess/advice/StartActivityAdvice;->a:Lcom/alipay/mobile/liteprocess/advice/StartActivityAdvice;

    .line 29
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    const-string/jumbo v3, "register startActivityAdvice"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v1

    const-string/jumbo v2, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivity(MicroApplication, Intent)"

    sget-object v3, Lcom/alipay/mobile/liteprocess/advice/StartActivityAdvice;->a:Lcom/alipay/mobile/liteprocess/advice/StartActivityAdvice;

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice(Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    .line 33
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v1

    const-string/jumbo v2, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startExtActivity(MicroApplication, Intent)"

    sget-object v3, Lcom/alipay/mobile/liteprocess/advice/StartActivityAdvice;->a:Lcom/alipay/mobile/liteprocess/advice/StartActivityAdvice;

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice(Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    .line 37
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 7
    .param p1, "thisPoint"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 42
    sget-boolean v0, Lcom/alipay/mobile/liteprocess/advice/StartAppAdvice;->hasStartedliteApp:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 43
    return-object v1

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 46
    .local v0, "microApplication":Lcom/alipay/mobile/framework/app/MicroApplication;
    const/4 v2, 0x0

    .line 47
    .local v2, "intent":Landroid/content/Intent;
    const/4 v3, 0x1

    if-eqz p2, :cond_2

    array-length v4, p2

    const/4 v5, 0x2

    if-lt v4, v5, :cond_2

    .line 48
    const/4 v4, 0x0

    aget-object v5, p2, v4

    instance-of v5, v5, Lcom/alipay/mobile/framework/app/MicroApplication;

    if-eqz v5, :cond_1

    .line 49
    aget-object v4, p2, v4

    move-object v0, v4

    check-cast v0, Lcom/alipay/mobile/framework/app/MicroApplication;

    .line 52
    :cond_1
    aget-object v4, p2, v3

    instance-of v4, v4, Landroid/content/Intent;

    if-eqz v4, :cond_2

    .line 53
    aget-object v4, p2, v3

    move-object v2, v4

    check-cast v2, Landroid/content/Intent;

    .line 56
    :cond_2
    if-nez v2, :cond_3

    .line 57
    return-object v1

    .line 59
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "StartActivityAdvice onExecutionAround intent = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "LiteProcess"

    invoke-interface {v4, v6, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->g()Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/alipay/mobile/liteprocess/LiteProcessServerManager;->startActivityFromLiteProcessIfNeeded(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 62
    new-instance v4, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v4, v3, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    .line 64
    :cond_4
    return-object v1
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "thisPoint"    # Ljava/lang/Object;

    .line 75
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivity(MicroApplication, Intent)"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startExtActivity(MicroApplication, Intent)"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    return v0

    .line 79
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected final b(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 1
    .param p1, "thisPoint"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 19
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/liteprocess/advice/AbsLiteProcessAdvice;->onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 0

    .line 19
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/liteprocess/advice/AbsLiteProcessAdvice;->onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 19
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/liteprocess/advice/AbsLiteProcessAdvice;->onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 19
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/liteprocess/advice/AbsLiteProcessAdvice;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 0

    .line 19
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/liteprocess/advice/AbsLiteProcessAdvice;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 19
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/liteprocess/advice/AbsLiteProcessAdvice;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method
