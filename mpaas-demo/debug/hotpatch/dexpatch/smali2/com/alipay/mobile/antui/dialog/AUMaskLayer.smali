.class public Lcom/alipay/mobile/antui/dialog/AUMaskLayer;
.super Lcom/alipay/mobile/antui/basic/AUDialog;
.source "AUMaskLayer.java"


# instance fields
.field private mContentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentView"    # Landroid/view/View;

    .line 19
    sget v0, Lcom/alipay/mobile/antui/R$style;->maskLayerDialogStyle:I

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/antui/basic/AUDialog;-><init>(Landroid/content/Context;I)V

    .line 20
    iput-object p2, p0, Lcom/alipay/mobile/antui/dialog/AUMaskLayer;->mContentView:Landroid/view/View;

    .line 21
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 25
    invoke-super {p0, p1}, Lcom/alipay/mobile/antui/basic/AUDialog;->onCreate(Landroid/os/Bundle;)V

    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/antui/dialog/AUMaskLayer;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/antui/dialog/AUMaskLayer;->setContentView(Landroid/view/View;)V

    .line 27
    return-void
.end method
