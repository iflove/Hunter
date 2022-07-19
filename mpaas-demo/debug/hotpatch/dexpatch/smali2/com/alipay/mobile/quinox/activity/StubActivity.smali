.class public Lcom/alipay/mobile/quinox/activity/StubActivity;
.super Landroid/app/Activity;
.source "StubActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/activity/StubActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/activity/StubActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "TargetActivityNotFound"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    const-string v0, "StubActivity"

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/activity/StubActivity;->finish()V

    .line 26
    return-void

    .line 29
    :cond_0
    const-string v0, "STUB_ACTIVITY"

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 30
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 31
    .local v1, "textView":Landroid/widget/TextView;
    move-object v1, v0

    const-string v2, "StubActivity: Shouldn\'t be here."

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/quinox/activity/StubActivity;->setContentView(Landroid/view/View;)V

    .line 33
    return-void
.end method
