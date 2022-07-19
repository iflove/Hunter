.class Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2;
.super Ljava/lang/Object;
.source "H5EmbedWebView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;

    .line 195
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2;->a:Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 198
    new-instance v0, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2$1;-><init>(Lcom/alipay/mobile/nebulacore/embedview/H5EmbedWebView$2;)V

    const-wide/16 v1, 0x10

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 223
    return-void
.end method
