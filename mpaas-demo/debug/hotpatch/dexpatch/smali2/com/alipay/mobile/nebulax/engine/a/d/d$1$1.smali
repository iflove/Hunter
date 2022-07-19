.class Lcom/alipay/mobile/nebulax/engine/a/d/d$1$1;
.super Ljava/lang/Object;
.source "NXWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/a/d/d$1;->a(Ljava/util/List;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulax/engine/a/d/d$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/d/d$1;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/d$1$1;->a:Lcom/alipay/mobile/nebulax/engine/a/d/d$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 267
    invoke-static {}, Lcom/alipay/mobile/nebulax/engine/common/b/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "shouldLoad\u88ab\u62e6\u622a\u4e86!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 268
    return-void
.end method
