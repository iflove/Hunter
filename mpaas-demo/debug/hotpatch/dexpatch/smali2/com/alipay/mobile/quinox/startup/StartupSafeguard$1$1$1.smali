.class Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1$1$1;
.super Ljava/lang/Object;
.source "StartupSafeguard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1$1;

    .line 369
    iput-object p1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1$1$1;->this$2:Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 372
    invoke-static {}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getInstance()Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1$1$1;->this$2:Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1$1;

    iget-object v1, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1$1;->this$1:Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1;

    iget-object v1, v1, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    # getter for: Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->d:Landroid/content/Context;
    invoke-static {v1}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->access$200(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "framework_preferences"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/quinox/utils/SharedPreferenceUtil;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 373
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    .line 374
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    move-object v1, v0

    const-string v2, "key_startup_record_times"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 375
    const-string v0, "native_crash_times"

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 376
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 377
    return-void
.end method
