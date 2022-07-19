.class final Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$2$1;
.super Ljava/lang/Object;
.source "LoggerFactoryBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$2;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$2;

    .line 275
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$2$1;->a:Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 278
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getInstance()Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$2$1;->a:Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$2;

    iget-object v1, v1, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$2;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 279
    return-void
.end method
