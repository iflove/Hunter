.class Lcom/alipay/mobile/h5plugin/H5MapActivity$1$1;
.super Ljava/lang/Object;
.source "H5MapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/h5plugin/H5MapActivity$1;->getInfoWindow(Lcom/alipay/mobile/apmap/model/AdapterMarker;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/h5plugin/H5MapActivity$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/h5plugin/H5MapActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/h5plugin/H5MapActivity$1;

    .line 80
    iput-object p1, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity$1$1;->this$1:Lcom/alipay/mobile/h5plugin/H5MapActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity$1$1;->this$1:Lcom/alipay/mobile/h5plugin/H5MapActivity$1;

    iget-object v0, v0, Lcom/alipay/mobile/h5plugin/H5MapActivity$1;->this$0:Lcom/alipay/mobile/h5plugin/H5MapActivity;

    # invokes: Lcom/alipay/mobile/h5plugin/H5MapActivity;->displayOptionsMenu()V
    invoke-static {v0}, Lcom/alipay/mobile/h5plugin/H5MapActivity;->access$000(Lcom/alipay/mobile/h5plugin/H5MapActivity;)V

    .line 84
    return-void
.end method
