.class public Lcom/alipay/mobile/common/logging/util/ToolThreadUtils;
.super Ljava/lang/Object;
.source "ToolThreadUtils.java"


# static fields
.field public static ACTION_TOOLS_THREAD_WITH_START:Ljava/lang/String;

.field public static ACTION_TOOLS_THREAD_WITH_START_END_END:Ljava/lang/String;

.field public static ACTION_TOOLS_THREAD_WITH_START_END_START:Ljava/lang/String;

.field private static a:Lcom/alipay/mobile/common/logging/util/ToolThreadUtils;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-string v0, "action.tools.thread.START"

    sput-object v0, Lcom/alipay/mobile/common/logging/util/ToolThreadUtils;->ACTION_TOOLS_THREAD_WITH_START:Ljava/lang/String;

    .line 17
    const-string v0, "action.tools.thread.START_END.START"

    sput-object v0, Lcom/alipay/mobile/common/logging/util/ToolThreadUtils;->ACTION_TOOLS_THREAD_WITH_START_END_START:Ljava/lang/String;

    .line 18
    const-string v0, "action.tools.thread.START_END.END"

    sput-object v0, Lcom/alipay/mobile/common/logging/util/ToolThreadUtils;->ACTION_TOOLS_THREAD_WITH_START_END_END:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/util/ToolThreadUtils;->b:Landroid/content/Context;

    .line 29
    if-nez p1, :cond_0

    .line 30
    return-void

    .line 32
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 33
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/ToolThreadUtils;->b:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/util/ToolThreadUtils;->c:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    .line 36
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/logging/util/ToolThreadUtils;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/common/logging/util/ToolThreadUtils;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/util/ToolThreadUtils;->a:Lcom/alipay/mobile/common/logging/util/ToolThreadUtils;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/alipay/mobile/common/logging/util/ToolThreadUtils;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/logging/util/ToolThreadUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alipay/mobile/common/logging/util/ToolThreadUtils;->a:Lcom/alipay/mobile/common/logging/util/ToolThreadUtils;

    .line 24
    :cond_0
    sget-object v1, Lcom/alipay/mobile/common/logging/util/ToolThreadUtils;->a:Lcom/alipay/mobile/common/logging/util/ToolThreadUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 20
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public end()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/ToolThreadUtils;->b:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/ToolThreadUtils;->c:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/alipay/mobile/common/logging/util/ToolThreadUtils;->ACTION_TOOLS_THREAD_WITH_START_END_END:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/ToolThreadUtils;->c:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 57
    return-void

    .line 53
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void
.end method

.method public start(Z)V
    .locals 2
    .param p1, "needEnd"    # Z

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/ToolThreadUtils;->b:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/util/ToolThreadUtils;->c:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    if-nez v0, :cond_0

    goto :goto_1

    .line 42
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_1

    .line 44
    sget-object v1, Lcom/alipay/mobile/common/logging/util/ToolThreadUtils;->ACTION_TOOLS_THREAD_WITH_START_END_START:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 46
    :cond_1
    sget-object v1, Lcom/alipay/mobile/common/logging/util/ToolThreadUtils;->ACTION_TOOLS_THREAD_WITH_START:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/util/ToolThreadUtils;->c:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 49
    return-void

    .line 40
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_1
    return-void
.end method
