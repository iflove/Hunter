.class Lcom/alipay/mobile/framework/app/ui/BaseActivity$1$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/framework/app/ui/BaseActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/framework/app/ui/BaseActivity$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/app/ui/BaseActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/framework/app/ui/BaseActivity$1;

    .line 394
    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity$1$1;->this$1:Lcom/alipay/mobile/framework/app/ui/BaseActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 397
    sget-object v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->TAG:Ljava/lang/String;

    const-string v1, "do finish after delay"

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/BaseActivity$1$1;->this$1:Lcom/alipay/mobile/framework/app/ui/BaseActivity$1;

    iget-object v0, v0, Lcom/alipay/mobile/framework/app/ui/BaseActivity$1;->this$0:Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    # invokes: Lcom/alipay/mobile/framework/app/ui/QuinoxActivity;->finish()V
    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->access$001(Lcom/alipay/mobile/framework/app/ui/BaseActivity;)V

    .line 399
    return-void
.end method
