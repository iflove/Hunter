.class Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$5$1;
.super Ljava/lang/Object;
.source "UcServiceSetup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$5;->onReceiveValue(Lcom/uc/webview/export/utility/SetupTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$5;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$5;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$5;

    .line 694
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$5$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$5$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$5;

    iget-object v0, v0, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup$5;->val$context:Landroid/content/Context;

    # invokes: Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->dumpUCMSDKIfNeed(Landroid/content/Context;)V
    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UcServiceSetup;->access$1000(Landroid/content/Context;)V

    .line 698
    return-void
.end method
