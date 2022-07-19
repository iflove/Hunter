.class Lcom/alipay/mobile/h5plugin/H5MapActivity$2;
.super Ljava/lang/Object;
.source "H5MapActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/h5plugin/H5MapActivity;->displayOptionsMenu()V
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

    .line 167
    iput-object p1, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity$2;->this$0:Lcom/alipay/mobile/h5plugin/H5MapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 170
    if-nez p3, :cond_1

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity$2;->this$0:Lcom/alipay/mobile/h5plugin/H5MapActivity;

    const-string v1, "com.autonavi.minimap"

    # invokes: Lcom/alipay/mobile/h5plugin/H5MapActivity;->isInstalled(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/h5plugin/H5MapActivity;->access$100(Lcom/alipay/mobile/h5plugin/H5MapActivity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v1, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity$2;->this$0:Lcom/alipay/mobile/h5plugin/H5MapActivity;

    # getter for: Lcom/alipay/mobile/h5plugin/H5MapActivity;->address:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/h5plugin/H5MapActivity;->access$200(Lcom/alipay/mobile/h5plugin/H5MapActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity$2;->this$0:Lcom/alipay/mobile/h5plugin/H5MapActivity;

    # getter for: Lcom/alipay/mobile/h5plugin/H5MapActivity;->longitude:D
    invoke-static {v0}, Lcom/alipay/mobile/h5plugin/H5MapActivity;->access$300(Lcom/alipay/mobile/h5plugin/H5MapActivity;)D

    move-result-wide v3

    iget-object v0, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity$2;->this$0:Lcom/alipay/mobile/h5plugin/H5MapActivity;

    # getter for: Lcom/alipay/mobile/h5plugin/H5MapActivity;->latitude:D
    invoke-static {v0}, Lcom/alipay/mobile/h5plugin/H5MapActivity;->access$400(Lcom/alipay/mobile/h5plugin/H5MapActivity;)D

    move-result-wide v5

    # invokes: Lcom/alipay/mobile/h5plugin/H5MapActivity;->launchAmap(Ljava/lang/String;DD)V
    invoke-static/range {v1 .. v6}, Lcom/alipay/mobile/h5plugin/H5MapActivity;->access$500(Lcom/alipay/mobile/h5plugin/H5MapActivity;Ljava/lang/String;DD)V

    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity$2;->this$0:Lcom/alipay/mobile/h5plugin/H5MapActivity;

    const-string v1, "http://wap.amap.com"

    # invokes: Lcom/alipay/mobile/h5plugin/H5MapActivity;->launchUrl(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/mobile/h5plugin/H5MapActivity;->access$600(Lcom/alipay/mobile/h5plugin/H5MapActivity;Ljava/lang/String;)V

    return-void

    .line 176
    :cond_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_3

    .line 177
    iget-object v1, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity$2;->this$0:Lcom/alipay/mobile/h5plugin/H5MapActivity;

    const-string v2, "com.baidu.BaiduMap"

    # invokes: Lcom/alipay/mobile/h5plugin/H5MapActivity;->isInstalled(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/alipay/mobile/h5plugin/H5MapActivity;->access$100(Lcom/alipay/mobile/h5plugin/H5MapActivity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 178
    iget-object v2, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity$2;->this$0:Lcom/alipay/mobile/h5plugin/H5MapActivity;

    # getter for: Lcom/alipay/mobile/h5plugin/H5MapActivity;->address:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/h5plugin/H5MapActivity;->access$200(Lcom/alipay/mobile/h5plugin/H5MapActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity$2;->this$0:Lcom/alipay/mobile/h5plugin/H5MapActivity;

    # getter for: Lcom/alipay/mobile/h5plugin/H5MapActivity;->latitude:D
    invoke-static {v0}, Lcom/alipay/mobile/h5plugin/H5MapActivity;->access$400(Lcom/alipay/mobile/h5plugin/H5MapActivity;)D

    move-result-wide v4

    iget-object v0, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity$2;->this$0:Lcom/alipay/mobile/h5plugin/H5MapActivity;

    # getter for: Lcom/alipay/mobile/h5plugin/H5MapActivity;->longitude:D
    invoke-static {v0}, Lcom/alipay/mobile/h5plugin/H5MapActivity;->access$300(Lcom/alipay/mobile/h5plugin/H5MapActivity;)D

    move-result-wide v6

    # invokes: Lcom/alipay/mobile/h5plugin/H5MapActivity;->launchBaidu(Ljava/lang/String;DD)V
    invoke-static/range {v2 .. v7}, Lcom/alipay/mobile/h5plugin/H5MapActivity;->access$700(Lcom/alipay/mobile/h5plugin/H5MapActivity;Ljava/lang/String;DD)V

    return-void

    .line 180
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/h5plugin/H5MapActivity$2;->this$0:Lcom/alipay/mobile/h5plugin/H5MapActivity;

    sget v2, Lcom/mpaas/commonbiz/R$string;->baidu_map_not_installed:I

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 183
    :cond_3
    return-void
.end method
