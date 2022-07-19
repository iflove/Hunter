.class Lcom/alipay/mobile/h5container/api/H5TitleBar$1;
.super Ljava/lang/Object;
.source "H5TitleBar.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5CallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/h5container/api/H5TitleBar;->onCheckedChanged(Landroid/widget/RadioGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/h5container/api/H5TitleBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/h5container/api/H5TitleBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/h5container/api/H5TitleBar;

    .line 1134
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar$1;->this$0:Lcom/alipay/mobile/h5container/api/H5TitleBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 3
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 1137
    const-string/jumbo v0, "prevent"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 1138
    .local v0, "prevent":Z
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onShare event prevent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5TitleBar"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar$1;->this$0:Lcom/alipay/mobile/h5container/api/H5TitleBar;

    # getter for: Lcom/alipay/mobile/h5container/api/H5TitleBar;->segmentGroup:Lcom/alipay/mobile/nebula/view/H5SegmentGroup;
    invoke-static {v1}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->access$000(Lcom/alipay/mobile/h5container/api/H5TitleBar;)Lcom/alipay/mobile/nebula/view/H5SegmentGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1140
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5TitleBar$1;->this$0:Lcom/alipay/mobile/h5container/api/H5TitleBar;

    # getter for: Lcom/alipay/mobile/h5container/api/H5TitleBar;->segmentGroup:Lcom/alipay/mobile/nebula/view/H5SegmentGroup;
    invoke-static {v1}, Lcom/alipay/mobile/h5container/api/H5TitleBar;->access$000(Lcom/alipay/mobile/h5container/api/H5TitleBar;)Lcom/alipay/mobile/nebula/view/H5SegmentGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebula/view/H5SegmentGroup;->performLastItemChecked(Z)V

    .line 1142
    :cond_0
    return-void
.end method
