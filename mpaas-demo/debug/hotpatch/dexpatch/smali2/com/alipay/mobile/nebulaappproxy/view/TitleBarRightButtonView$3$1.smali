.class Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$3$1;
.super Ljava/lang/Object;
.source "TitleBarRightButtonView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$3;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$3;

    .line 457
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$3$1;->a:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$3$1;->a:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$3;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$3;->a:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->e:Lcom/alipay/mobile/antui/badge/AUBadgeView;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->access$400(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;)Lcom/alipay/mobile/antui/badge/AUBadgeView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$3$1;->a:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$3;

    iget-object v0, v0, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView$3;->a:Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;

    # getter for: Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->e:Lcom/alipay/mobile/antui/badge/AUBadgeView;
    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;->access$400(Lcom/alipay/mobile/nebulaappproxy/view/TitleBarRightButtonView;)Lcom/alipay/mobile/antui/badge/AUBadgeView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/badge/AUBadgeView;->setVisibility(I)V

    .line 463
    :cond_0
    return-void
.end method
