.class Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory$2;
.super Ljava/lang/Object;
.source "StrategyFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->clear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;

    .line 94
    iput-object p1, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory$2;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory$2;->this$0:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;

    # getter for: Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->b:Landroid/content/Context;
    invoke-static {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;->access$000(Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StrategyFactory;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "DynamicReleaseTools"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 98
    .local v2, "sp":Landroid/content/SharedPreferences;
    move-object v2, v0

    const-string v3, "dynamicrelease_config"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 102
    :cond_0
    return-void
.end method
