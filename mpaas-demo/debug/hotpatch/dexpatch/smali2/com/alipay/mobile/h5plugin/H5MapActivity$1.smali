.class Lcom/alipay/mobile/h5plugin/H5MapActivity$1;
.super Ljava/lang/Object;
.source "H5MapActivity.java"

# interfaces
.implements Lcom/alipay/mobile/apmap/AdapterAMap$AdapterInfoWindowAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/h5plugin/H5MapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/h5plugin/H5MapActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/h5plugin/H5MapActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/h5plugin/H5MapActivity;

    .line 71
    iput-object p1, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity$1;->this$0:Lcom/alipay/mobile/h5plugin/H5MapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfoContents(Lcom/alipay/mobile/apmap/model/AdapterMarker;)Landroid/view/View;
    .locals 1
    .param p1, "marker"    # Lcom/alipay/mobile/apmap/model/AdapterMarker;

    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoWindow(Lcom/alipay/mobile/apmap/model/AdapterMarker;)Landroid/view/View;
    .locals 3
    .param p1, "marker"    # Lcom/alipay/mobile/apmap/model/AdapterMarker;

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity$1;->this$0:Lcom/alipay/mobile/h5plugin/H5MapActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 75
    sget v1, Lcom/mpaas/commonbiz/R$layout;->view_info_window:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v2

    .line 76
    .local v1, "v":Landroid/view/View;
    move-object v1, v0

    sget v2, Lcom/mpaas/commonbiz/R$id;->title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 77
    invoke-virtual {p1}, Lcom/alipay/mobile/apmap/model/AdapterMarker;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    sget v0, Lcom/mpaas/commonbiz/R$id;->snippet:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 79
    invoke-virtual {p1}, Lcom/alipay/mobile/apmap/model/AdapterMarker;->getSnippet()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    sget v0, Lcom/mpaas/commonbiz/R$id;->badge:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/h5plugin/H5MapActivity$1$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/h5plugin/H5MapActivity$1$1;-><init>(Lcom/alipay/mobile/h5plugin/H5MapActivity$1;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-object v1
.end method
