.class Lcom/alipay/mobile/h5container/api/H5PageImageManager$1;
.super Ljava/lang/Object;
.source "H5PageImageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/h5container/api/H5PageImageManager;->uploadLog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/h5container/api/H5PageImageManager;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/h5container/api/H5PageImageManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/h5container/api/H5PageImageManager;

    .line 58
    iput-object p1, p0, Lcom/alipay/mobile/h5container/api/H5PageImageManager$1;->this$0:Lcom/alipay/mobile/h5container/api/H5PageImageManager;

    iput-object p2, p0, Lcom/alipay/mobile/h5container/api/H5PageImageManager$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/h5container/api/H5PageImageManager$1;->this$0:Lcom/alipay/mobile/h5container/api/H5PageImageManager;

    # getter for: Lcom/alipay/mobile/h5container/api/H5PageImageManager;->providerMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/alipay/mobile/h5container/api/H5PageImageManager;->access$000(Lcom/alipay/mobile/h5container/api/H5PageImageManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageImageManager$1;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    move-object v2, v1

    .line 62
    .local v2, "list":Ljava/util/List;
    move-object v2, v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/api/H5PageImage;

    .line 64
    .local v0, "pageImage":Lcom/alipay/mobile/h5container/api/H5PageImage;
    iget-object v3, p0, Lcom/alipay/mobile/h5container/api/H5PageImageManager$1;->this$0:Lcom/alipay/mobile/h5container/api/H5PageImageManager;

    # invokes: Lcom/alipay/mobile/h5container/api/H5PageImageManager;->getParam(Ljava/util/List;)Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/alipay/mobile/h5container/api/H5PageImageManager;->access$100(Lcom/alipay/mobile/h5container/api/H5PageImageManager;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 65
    .local v3, "param3":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "url="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/h5container/api/H5PageImageManager$1;->val$url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "^appId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/alipay/mobile/h5container/api/H5PageImage;->appId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "^version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/alipay/mobile/h5container/api/H5PageImage;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "param4":Ljava/lang/String;
    const-string v5, "H5_AL_PAGE_ONLINE_IMAGE"

    invoke-static {v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    .line 68
    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    invoke-virtual {v5, v3, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v1

    .line 67
    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 69
    iget-object v1, p0, Lcom/alipay/mobile/h5container/api/H5PageImageManager$1;->this$0:Lcom/alipay/mobile/h5container/api/H5PageImageManager;

    # getter for: Lcom/alipay/mobile/h5container/api/H5PageImageManager;->providerMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/alipay/mobile/h5container/api/H5PageImageManager;->access$000(Lcom/alipay/mobile/h5container/api/H5PageImageManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v5, p0, Lcom/alipay/mobile/h5container/api/H5PageImageManager$1;->val$url:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .end local v0    # "pageImage":Lcom/alipay/mobile/h5container/api/H5PageImage;
    .end local v3    # "param3":Ljava/lang/String;
    .end local v4    # "param4":Ljava/lang/String;
    :cond_0
    return-void
.end method
