.class final Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler$3;
.super Ljava/lang/Object;
.source "StatisticalExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    .line 110
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler$3;->a:Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler$3;->a:Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->ensureCrashSdk()V

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler$3;->a:Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a(Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "DELAY_CRASH_BEGIN"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 115
    return-void
.end method
