.class public Lcom/alipay/mobile/nebulacore/dev/sampler/ThreadSampler;
.super Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;
.source "ThreadSampler.java"


# instance fields
.field private final d:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "sampleInterval"    # J

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/dev/sampler/AbstractSampler;-><init>(J)V

    .line 12
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/sampler/ThreadSampler;->d:Lcom/alibaba/fastjson/JSONObject;

    .line 16
    return-void
.end method


# virtual methods
.method final a()Lcom/alibaba/fastjson/JSONObject;
    .locals 8

    .line 20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    const/4 v1, 0x0

    .line 21
    .local v1, "group":Ljava/lang/ThreadGroup;
    move-object v1, v0

    .line 24
    .local v0, "topGroup":Ljava/lang/ThreadGroup;
    :goto_0
    if-eqz v1, :cond_0

    .line 25
    move-object v0, v1

    .line 26
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->getParent()Ljava/lang/ThreadGroup;

    move-result-object v1

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadGroup;->activeCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    .line 31
    new-array v2, v2, [Ljava/lang/Thread;

    .line 34
    .local v2, "slackThreads":[Ljava/lang/Thread;
    invoke-virtual {v0, v2}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    .line 35
    .local v5, "actualSize":I
    move v5, v3

    new-array v3, v3, [Ljava/lang/Thread;

    .line 37
    .local v3, "actualThreads":[Ljava/lang/Thread;
    invoke-static {v2, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/sampler/ThreadSampler;->d:Lcom/alibaba/fastjson/JSONObject;

    array-length v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "size"

    invoke-virtual {v4, v7, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/dev/sampler/ThreadSampler;->d:Lcom/alibaba/fastjson/JSONObject;

    return-object v4
.end method
