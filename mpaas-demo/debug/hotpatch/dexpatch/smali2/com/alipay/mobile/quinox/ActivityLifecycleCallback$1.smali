.class Lcom/alipay/mobile/quinox/ActivityLifecycleCallback$1;
.super Ljava/lang/Object;
.source "ActivityLifecycleCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;

    .line 67
    iput-object p1, p0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback$1;->this$0:Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 71
    # getter for: Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->d:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 72
    return-void
.end method
