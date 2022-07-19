.class Lcom/alipay/mobile/framework/locale/LocaleHelper$1;
.super Ljava/lang/Object;
.source "LocaleHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/framework/locale/LocaleHelper;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/locale/LocaleHelper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/locale/LocaleHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/framework/locale/LocaleHelper;

    .line 642
    iput-object p1, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper$1;->this$0:Lcom/alipay/mobile/framework/locale/LocaleHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 645
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const/4 v1, 0x0

    .line 646
    .local v1, "filter":Landroid/content/IntentFilter;
    move-object v1, v0

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper$1;->this$0:Lcom/alipay/mobile/framework/locale/LocaleHelper;

    # getter for: Lcom/alipay/mobile/framework/locale/LocaleHelper;->d:Landroid/app/Application;
    invoke-static {v0}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->access$100(Lcom/alipay/mobile/framework/locale/LocaleHelper;)Landroid/app/Application;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/framework/locale/LocaleHelper$1;->this$0:Lcom/alipay/mobile/framework/locale/LocaleHelper;

    # getter for: Lcom/alipay/mobile/framework/locale/LocaleHelper;->g:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/alipay/mobile/framework/locale/LocaleHelper;->access$000(Lcom/alipay/mobile/framework/locale/LocaleHelper;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 648
    return-void
.end method
