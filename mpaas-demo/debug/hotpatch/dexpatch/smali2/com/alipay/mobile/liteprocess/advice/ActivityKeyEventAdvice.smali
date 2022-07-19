.class public Lcom/alipay/mobile/liteprocess/advice/ActivityKeyEventAdvice;
.super Lcom/alipay/mobile/liteprocess/advice/AbsLiteProcessAdvice;
.source "ActivityKeyEventAdvice.java"


# static fields
.field private static a:Lcom/alipay/mobile/liteprocess/advice/ActivityKeyEventAdvice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/alipay/mobile/liteprocess/advice/AbsLiteProcessAdvice;-><init>()V

    return-void
.end method

.method public static register()V
    .locals 4

    .line 26
    sget-object v0, Lcom/alipay/mobile/liteprocess/advice/ActivityKeyEventAdvice;->a:Lcom/alipay/mobile/liteprocess/advice/ActivityKeyEventAdvice;

    if-eqz v0, :cond_0

    .line 27
    return-void

    .line 29
    :cond_0
    const-class v0, Lcom/alipay/mobile/liteprocess/advice/ActivityKeyEventAdvice;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/liteprocess/advice/ActivityKeyEventAdvice;->a:Lcom/alipay/mobile/liteprocess/advice/ActivityKeyEventAdvice;

    if-nez v1, :cond_1

    .line 31
    new-instance v1, Lcom/alipay/mobile/liteprocess/advice/ActivityKeyEventAdvice;

    invoke-direct {v1}, Lcom/alipay/mobile/liteprocess/advice/ActivityKeyEventAdvice;-><init>()V

    sput-object v1, Lcom/alipay/mobile/liteprocess/advice/ActivityKeyEventAdvice;->a:Lcom/alipay/mobile/liteprocess/advice/ActivityKeyEventAdvice;

    .line 32
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string v2, "LiteProcess"

    const-string/jumbo v3, "register activityKeyEventAdvice"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v1

    const-string v2, "boolean com.alipay.mobile.framework.app.ui.BaseActivity.dispatchKeyEvent(KeyEvent)"

    sget-object v3, Lcom/alipay/mobile/liteprocess/advice/ActivityKeyEventAdvice;->a:Lcom/alipay/mobile/liteprocess/advice/ActivityKeyEventAdvice;

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice(Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    .line 36
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v1

    const-string v2, "boolean com.alipay.mobile.framework.app.ui.BaseFragmentActivity.dispatchKeyEvent(KeyEvent)"

    sget-object v3, Lcom/alipay/mobile/liteprocess/advice/ActivityKeyEventAdvice;->a:Lcom/alipay/mobile/liteprocess/advice/ActivityKeyEventAdvice;

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice(Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    .line 40
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

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "pointCut"    # Ljava/lang/String;
    .param p2, "thisPoint"    # Ljava/lang/Object;

    .line 64
    const-string v0, "boolean com.alipay.mobile.framework.app.ui.BaseActivity.dispatchKeyEvent(KeyEvent)"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 65
    const-string v0, "boolean com.alipay.mobile.framework.app.ui.BaseFragmentActivity.dispatchKeyEvent(KeyEvent)"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    return v1

    .line 68
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessClientManager;->getHookBackKeyBlackList()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    return v1

    .line 71
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected final b(Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 4
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

    .line 50
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v2, p2, v1

    instance-of v2, v2, Landroid/view/KeyEvent;

    if-eqz v2, :cond_0

    .line 51
    aget-object v1, p2, v1

    check-cast v1, Landroid/view/KeyEvent;

    move-object v2, v0

    .line 52
    .local v2, "ev":Landroid/view/KeyEvent;
    move-object v2, v1

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 53
    invoke-static {p1}, Lcom/alipay/mobile/liteprocess/advice/ActivityBackAdvice;->isTaskRoot(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/alipay/mobile/liteprocess/LiteNebulaXCompat;->isNebulaXActivity(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    invoke-static {p1}, Lcom/alipay/mobile/liteprocess/advice/ActivityBackAdvice;->moveTaskToBack(Ljava/lang/Object;)V

    .line 55
    new-instance v1, Landroid/util/Pair;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 59
    .end local v2    # "ev":Landroid/view/KeyEvent;
    :cond_0
    return-object v0
.end method

.method public bridge synthetic onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 22
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/liteprocess/advice/AbsLiteProcessAdvice;->onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 0

    .line 22
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/liteprocess/advice/AbsLiteProcessAdvice;->onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 22
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/liteprocess/advice/AbsLiteProcessAdvice;->onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 22
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/liteprocess/advice/AbsLiteProcessAdvice;->onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 0

    .line 22
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/liteprocess/advice/AbsLiteProcessAdvice;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .line 22
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/liteprocess/advice/AbsLiteProcessAdvice;->onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method
