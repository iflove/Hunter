.class final Lcom/alipay/mobile/framework/locale/LocaleUtils$1;
.super Ljava/lang/Object;
.source "LocaleUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/framework/locale/LocaleUtils;->refreshHomeActivity(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$bundle:Landroid/os/Bundle;

.field final synthetic val$context:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/MicroApplicationContext;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/framework/locale/LocaleUtils$1;->val$context:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iput-object p2, p0, Lcom/alipay/mobile/framework/locale/LocaleUtils$1;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/framework/locale/LocaleUtils$1;->val$bundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 47
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    .line 48
    .local v2, "bundleMain":Landroid/os/Bundle;
    move-object v2, v0

    const-string v3, "disableWelcomeFromLocaleHelper"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/framework/locale/LocaleUtils$1;->val$context:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string v3, "20000001"

    invoke-interface {v0, v1, v3, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/framework/locale/LocaleUtils$1;->val$appId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/framework/locale/LocaleUtils$1;->val$context:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v3, p0, Lcom/alipay/mobile/framework/locale/LocaleUtils$1;->val$appId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/framework/locale/LocaleUtils$1;->val$bundle:Landroid/os/Bundle;

    invoke-interface {v0, v1, v3, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v2    # "bundleMain":Landroid/os/Bundle;
    :cond_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/alipay/mobile/framework/locale/LocaleUtils;->a:Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/framework/locale/LocaleUtils;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "refreshHomeActivity"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method
