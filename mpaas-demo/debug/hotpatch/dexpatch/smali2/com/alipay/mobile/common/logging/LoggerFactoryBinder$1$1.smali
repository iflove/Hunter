.class final Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$1$1;
.super Ljava/lang/Object;
.source "LoggerFactoryBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$1;

    .line 156
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$1$1;->a:Lcom/alipay/mobile/common/logging/LoggerFactoryBinder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 159
    invoke-static {}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getInstance()Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/util/ApplicationInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "\u672a\u68c0\u6d4b\u5230 Config \u4fe1\u606f\uff0c\u8bf7\u53c2\u8003\u6587\u6863\u8fdb\u884c\u914d\u7f6e\u3002\n\u63a5\u5165 Android > \u5c06 mPaaS \u6dfb\u52a0\u5230\u60a8\u7684\u9879\u76ee\u4e2d > Step 2 \u5c06\u914d\u7f6e\u6587\u4ef6\u6dfb\u52a0\u5230\u9879\u76ee\u4e2d"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 160
    return-void
.end method
