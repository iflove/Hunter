.class final Lcom/alipay/mobile/base/loading/DefaultLoadingView$1;
.super Ljava/lang/Object;
.source "DefaultLoadingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/base/loading/DefaultLoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/base/loading/DefaultLoadingView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/base/loading/DefaultLoadingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/base/loading/DefaultLoadingView;

    .line 88
    iput-object p1, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView$1;->a:Lcom/alipay/mobile/base/loading/DefaultLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/base/loading/DefaultLoadingView$1;->a:Lcom/alipay/mobile/base/loading/DefaultLoadingView;

    invoke-virtual {v0}, Lcom/alipay/mobile/base/loading/DefaultLoadingView;->cancel()V

    .line 92
    return-void
.end method
