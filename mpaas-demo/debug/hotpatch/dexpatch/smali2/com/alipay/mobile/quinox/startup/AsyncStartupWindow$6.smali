.class final Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$6;
.super Ljava/lang/Object;
.source "AsyncStartupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$newState:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 227
    iput p1, p0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$6;->val$newState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 230
    # getter for: Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->f:Ljava/util/Set;
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->access$600()Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 231
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    # getter for: Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->f:Ljava/util/Set;
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow;->access$600()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 232
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/quinox/utils/Callback;

    .line 233
    iget v3, p0, Lcom/alipay/mobile/quinox/startup/AsyncStartupWindow$6;->val$newState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/alipay/mobile/quinox/utils/Callback;->onCallback(Ljava/lang/Object;)V

    .line 234
    goto :goto_0

    .line 235
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
