.class Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask$1;
.super Ljava/lang/Object;
.source "BasePopupWindowWithMask.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;

    .line 74
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask$1;->a:Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 77
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask$1;->a:Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;->a(Lcom/alipay/mobile/nebulaappproxy/view/BasePopupWindowWithMask;)V

    .line 79
    const/4 v0, 0x1

    return v0

    .line 81
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
