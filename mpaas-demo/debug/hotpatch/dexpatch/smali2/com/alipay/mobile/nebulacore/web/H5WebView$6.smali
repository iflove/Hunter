.class Lcom/alipay/mobile/nebulacore/web/H5WebView$6;
.super Ljava/lang/Object;
.source "H5WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebView;->onRelease()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/mobile/nebulacore/web/H5WebView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 1093
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$6;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iput p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$6;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1096
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$6;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iget v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$6;->a:I

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a(Lcom/alipay/mobile/nebulacore/web/H5WebView;I)V

    .line 1097
    return-void
.end method
