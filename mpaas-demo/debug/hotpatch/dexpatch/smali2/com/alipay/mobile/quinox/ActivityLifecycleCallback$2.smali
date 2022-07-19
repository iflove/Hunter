.class Lcom/alipay/mobile/quinox/ActivityLifecycleCallback$2;
.super Ljava/lang/Object;
.source "ActivityLifecycleCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;->onActivityResumed(Landroid/app/Activity;)V
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

    .line 132
    iput-object p1, p0, Lcom/alipay/mobile/quinox/ActivityLifecycleCallback$2;->this$0:Lcom/alipay/mobile/quinox/ActivityLifecycleCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 135
    invoke-static {}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->getInstance()Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->setStartupCrash(Z)V

    .line 136
    return-void
.end method
