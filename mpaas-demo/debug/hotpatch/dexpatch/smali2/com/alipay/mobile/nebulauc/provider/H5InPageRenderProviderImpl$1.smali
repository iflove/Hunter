.class Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl$1;
.super Ljava/util/HashSet;
.source "H5InPageRenderProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;)V
    .locals 1
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl$1;->this$0:Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 30
    const-string v0, "map"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl$1;->add(Ljava/lang/Object;)Z

    .line 31
    const-string v0, "video"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl$1;->add(Ljava/lang/Object;)Z

    .line 32
    const-string v0, "camera"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl$1;->add(Ljava/lang/Object;)Z

    .line 33
    const-string v0, "canvas"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl$1;->add(Ljava/lang/Object;)Z

    .line 34
    const-string v0, "input"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl$1;->add(Ljava/lang/Object;)Z

    .line 35
    const-string v0, "ad"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl$1;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method
