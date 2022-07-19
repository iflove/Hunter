.class final Lcom/alipay/mobile/quinox/framemonitor/e$1;
.super Ljava/lang/Object;
.source "JerkHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/framemonitor/e;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alipay/mobile/quinox/framemonitor/e;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/framemonitor/e;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/framemonitor/e;

    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/quinox/framemonitor/e$1;->b:Lcom/alipay/mobile/quinox/framemonitor/e;

    iput-object p2, p0, Lcom/alipay/mobile/quinox/framemonitor/e$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/e$1;->b:Lcom/alipay/mobile/quinox/framemonitor/e;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/framemonitor/e$1;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/framemonitor/e;->a(Lcom/alipay/mobile/quinox/framemonitor/e;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/e$1;->b:Lcom/alipay/mobile/quinox/framemonitor/e;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/framemonitor/e;->a(Lcom/alipay/mobile/quinox/framemonitor/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    const-string v0, "JerkHandler"

    const-string v1, "already started"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/e$1;->b:Lcom/alipay/mobile/quinox/framemonitor/e;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/framemonitor/e;->b(Lcom/alipay/mobile/quinox/framemonitor/e;)Lcom/alipay/mobile/quinox/framemonitor/f;

    move-result-object v0

    if-nez v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/e$1;->b:Lcom/alipay/mobile/quinox/framemonitor/e;

    new-instance v1, Lcom/alipay/mobile/quinox/framemonitor/f;

    invoke-direct {v1}, Lcom/alipay/mobile/quinox/framemonitor/f;-><init>()V

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/framemonitor/e;->a(Lcom/alipay/mobile/quinox/framemonitor/e;Lcom/alipay/mobile/quinox/framemonitor/f;)Lcom/alipay/mobile/quinox/framemonitor/f;

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/e$1;->b:Lcom/alipay/mobile/quinox/framemonitor/e;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/framemonitor/e;->b(Lcom/alipay/mobile/quinox/framemonitor/e;)Lcom/alipay/mobile/quinox/framemonitor/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/framemonitor/f;->a()V

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/e$1;->b:Lcom/alipay/mobile/quinox/framemonitor/e;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/framemonitor/e;->c(Lcom/alipay/mobile/quinox/framemonitor/e;)Lcom/alipay/mobile/quinox/framemonitor/e$c;

    move-result-object v0

    if-nez v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/e$1;->b:Lcom/alipay/mobile/quinox/framemonitor/e;

    new-instance v1, Lcom/alipay/mobile/quinox/framemonitor/e$c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/alipay/mobile/quinox/framemonitor/e$c;-><init>(B)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/framemonitor/e;->a(Lcom/alipay/mobile/quinox/framemonitor/e;Lcom/alipay/mobile/quinox/framemonitor/e$c;)Lcom/alipay/mobile/quinox/framemonitor/e$c;

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.alipay.mobile.framework.ACTIVITY_RESUME"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/alipay/mobile/quinox/framemonitor/e$1;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/quinox/framemonitor/e$a;->a(Landroid/content/Context;)Lcom/alipay/mobile/quinox/framemonitor/e$a;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/quinox/framemonitor/e$1;->b:Lcom/alipay/mobile/quinox/framemonitor/e;

    .line 75
    invoke-static {v2}, Lcom/alipay/mobile/quinox/framemonitor/e;->c(Lcom/alipay/mobile/quinox/framemonitor/e;)Lcom/alipay/mobile/quinox/framemonitor/e$c;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 77
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/e$1;->b:Lcom/alipay/mobile/quinox/framemonitor/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/framemonitor/e;->a(Lcom/alipay/mobile/quinox/framemonitor/e;Z)Z

    .line 78
    return-void
.end method
