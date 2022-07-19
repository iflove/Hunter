.class Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl$2;
.super Ljava/lang/Object;
.source "H5InPageRenderProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;

    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl$2;->this$0:Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl$2;->this$0:Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;

    # invokes: Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;->applyConfig(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;->access$000(Lcom/alipay/mobile/nebulauc/provider/H5InPageRenderProviderImpl;Ljava/lang/String;)V

    .line 43
    return-void
.end method
