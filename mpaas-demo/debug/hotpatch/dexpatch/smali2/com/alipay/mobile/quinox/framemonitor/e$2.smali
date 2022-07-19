.class final Lcom/alipay/mobile/quinox/framemonitor/e$2;
.super Ljava/lang/Object;
.source "JerkHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/framemonitor/e;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/quinox/framemonitor/e;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/framemonitor/e;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/framemonitor/e;

    .line 93
    iput-object p1, p0, Lcom/alipay/mobile/quinox/framemonitor/e$2;->a:Lcom/alipay/mobile/quinox/framemonitor/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/e$2;->a:Lcom/alipay/mobile/quinox/framemonitor/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/framemonitor/e;->a(Lcom/alipay/mobile/quinox/framemonitor/e;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/e$2;->a:Lcom/alipay/mobile/quinox/framemonitor/e;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/framemonitor/e;->a(Lcom/alipay/mobile/quinox/framemonitor/e;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    const-string v0, "JerkHandler"

    const-string v1, "already stopped"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/e$2;->a:Lcom/alipay/mobile/quinox/framemonitor/e;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/framemonitor/e;->b(Lcom/alipay/mobile/quinox/framemonitor/e;)Lcom/alipay/mobile/quinox/framemonitor/f;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/e$2;->a:Lcom/alipay/mobile/quinox/framemonitor/e;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/framemonitor/e;->b(Lcom/alipay/mobile/quinox/framemonitor/e;)Lcom/alipay/mobile/quinox/framemonitor/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/framemonitor/f;->b()V

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/e$2;->a:Lcom/alipay/mobile/quinox/framemonitor/e;

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/framemonitor/e;->a(Lcom/alipay/mobile/quinox/framemonitor/e;Lcom/alipay/mobile/quinox/framemonitor/f;)Lcom/alipay/mobile/quinox/framemonitor/f;

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/e$2;->a:Lcom/alipay/mobile/quinox/framemonitor/e;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/framemonitor/e;->c(Lcom/alipay/mobile/quinox/framemonitor/e;)Lcom/alipay/mobile/quinox/framemonitor/e$c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 109
    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/quinox/framemonitor/e$2;->a:Lcom/alipay/mobile/quinox/framemonitor/e;

    invoke-static {v2}, Lcom/alipay/mobile/quinox/framemonitor/e;->c(Lcom/alipay/mobile/quinox/framemonitor/e;)Lcom/alipay/mobile/quinox/framemonitor/e$c;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/e$2;->a:Lcom/alipay/mobile/quinox/framemonitor/e;

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/framemonitor/e;->a(Lcom/alipay/mobile/quinox/framemonitor/e;Lcom/alipay/mobile/quinox/framemonitor/e$c;)Lcom/alipay/mobile/quinox/framemonitor/e$c;

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/quinox/framemonitor/e$2;->a:Lcom/alipay/mobile/quinox/framemonitor/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/framemonitor/e;->a(Lcom/alipay/mobile/quinox/framemonitor/e;Z)Z

    .line 113
    return-void
.end method
