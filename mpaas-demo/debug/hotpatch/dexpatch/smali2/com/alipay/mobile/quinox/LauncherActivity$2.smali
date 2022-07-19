.class Lcom/alipay/mobile/quinox/LauncherActivity$2;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/LauncherActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/LauncherActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/quinox/LauncherActivity;

    .line 391
    iput-object p1, p0, Lcom/alipay/mobile/quinox/LauncherActivity$2;->this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherActivity$2;->this$0:Lcom/alipay/mobile/quinox/LauncherActivity;

    # invokes: Lcom/alipay/mobile/quinox/LauncherActivity;->doPostInit()V
    invoke-static {v0}, Lcom/alipay/mobile/quinox/LauncherActivity;->access$100(Lcom/alipay/mobile/quinox/LauncherActivity;)V

    .line 395
    return-void
.end method
