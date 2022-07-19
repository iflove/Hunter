.class Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1$1;
.super Ljava/lang/Object;
.source "NebulaUtil.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5ImageUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;

    .line 206
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1$1;->a:Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "multimediaID"    # Ljava/lang/String;

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "multimediaID : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5NebulaUtil"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1$1;->a:Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1$1;->a:Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/util/NebulaUtil$1;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    const/4 v1, 0x0

    .line 212
    .local v1, "pageData":Lcom/alipay/mobile/h5container/api/H5PageData;
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/h5container/api/H5PageData;->setMultimediaID(Ljava/lang/String;)V

    .line 216
    .end local v1    # "pageData":Lcom/alipay/mobile/h5container/api/H5PageData;
    :cond_0
    return-void
.end method
