.class Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity$1$1;
.super Ljava/lang/Object;
.source "BaseFragmentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity$1;

    .line 393
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity$1$1;->this$1:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 396
    sget-object v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->TAG:Ljava/lang/String;

    const-string v1, "do finish after delay"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity$1$1;->this$1:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity$1;

    iget-object v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity$1;->this$0:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    # invokes: Lcom/alipay/mobile/framework/app/ui/QuinoxFragmentActivity;->finish()V
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->access$001(Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;)V

    .line 398
    return-void
.end method
