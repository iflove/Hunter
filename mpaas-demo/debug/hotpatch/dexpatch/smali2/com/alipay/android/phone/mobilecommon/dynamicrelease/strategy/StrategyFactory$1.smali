.class Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory$1;
.super Ljava/lang/Object;
.source "StrategyFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->update(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;

.field final synthetic val$configJson:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;

    .line 74
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory$1;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;

    iput-object p2, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory$1;->val$configJson:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory$1;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;

    # getter for: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->b:Landroid/content/Context;
    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->access$000(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DynamicReleaseTools"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 78
    .local v2, "sp":Landroid/content/SharedPreferences;
    move-object v2, v0

    const-string v3, "dynamicrelease_config"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory$1;->val$configJson:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory$1;->val$configJson:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    :cond_0
    return-void
.end method
