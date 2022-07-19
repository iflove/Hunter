.class Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework$1;
.super Landroid/content/BroadcastReceiver;
.source "QuinoxlessFramework.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;

    .line 169
    iput-object p1, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework$1;->this$0:Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 172
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "privacy_agreed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const-string v1, "QuinoxlessFramework"

    const-string/jumbo v2, "received user agreed action then call initAfterPrivacyAgreed"

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework$1;->this$0:Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;

    # invokes: Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->c()V
    invoke-static {v1}, Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;->access$000(Lcom/alipay/mobile/framework/quinoxless/QuinoxlessFramework;)V

    .line 177
    :cond_0
    return-void
.end method
