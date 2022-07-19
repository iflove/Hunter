.class Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$1;
.super Ljava/lang/Object;
.source "H5TraceProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler$SampleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;

    .line 81
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$1;->a:Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSample(Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 4
    .param p1, "result"    # Lcom/alibaba/fastjson/JSONObject;

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$1;->a:Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->a(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$1;->a:Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->b(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_0

    .line 86
    return v1

    .line 90
    :cond_0
    const-string v0, "size"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 92
    .local v0, "threadSize":I
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$1;->a:Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->c(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;

    .line 93
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->onSampleThread(I)V

    .line 94
    goto :goto_0

    .line 95
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$1;->a:Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->d(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;

    .line 96
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$Session;->onSampleThread(I)V

    .line 97
    goto :goto_1

    .line 99
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$1;->a:Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->a(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 100
    const/4 v1, 0x1

    return v1
.end method
