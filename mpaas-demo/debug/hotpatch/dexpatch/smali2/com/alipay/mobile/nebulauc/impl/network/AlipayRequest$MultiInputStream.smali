.class Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$MultiInputStream;
.super Ljava/io/InputStream;
.source "AlipayRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiInputStream"
.end annotation


# instance fields
.field private inputStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)V
    .locals 0

    .line 1566
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$MultiInputStream;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 1567
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$MultiInputStream;->inputStreams:Ljava/util/ArrayList;

    .line 1568
    return-void
.end method


# virtual methods
.method public addInputStream(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 1571
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$MultiInputStream;->inputStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1572
    return-void
.end method

.method public available()I
    .locals 4

    .line 1576
    const/4 v0, 0x0

    .line 1577
    .local v0, "totalLen":I
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$MultiInputStream;->inputStreams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 1578
    .local v2, "item":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    if-lez v3, :cond_0

    .line 1579
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    add-int/2addr v0, v3

    .line 1581
    .end local v2    # "item":Ljava/io/InputStream;
    :cond_0
    goto :goto_0

    .line 1582
    :cond_1
    return v0
.end method

.method public close()V
    .locals 4

    .line 1620
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$MultiInputStream;->inputStreams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1622
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$MultiInputStream;->inputStreams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1625
    goto :goto_1

    .line 1623
    :catch_0
    move-exception v1

    .line 1624
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$MultiInputStream;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$100(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MultiInputStream close "

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1620
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1627
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public read()I
    .locals 3

    .line 1587
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$MultiInputStream;->inputStreams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    .line 1588
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$MultiInputStream;->inputStreams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 1589
    .local v1, "result":I
    if-eq v1, v2, :cond_0

    .line 1590
    return v1

    .line 1587
    .end local v1    # "result":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1593
    .end local v0    # "i":I
    :cond_1
    return v2
.end method

.method public read([B)I
    .locals 3
    .param p1, "b"    # [B

    .line 1598
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$MultiInputStream;->inputStreams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    .line 1599
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$MultiInputStream;->inputStreams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 1600
    .local v1, "result":I
    if-eq v1, v2, :cond_0

    .line 1601
    return v1

    .line 1598
    .end local v1    # "result":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1604
    .end local v0    # "i":I
    :cond_1
    return v2
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 1609
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$MultiInputStream;->inputStreams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    .line 1610
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$MultiInputStream;->inputStreams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 1611
    .local v1, "result":I
    if-eq v1, v2, :cond_0

    .line 1612
    return v1

    .line 1609
    .end local v1    # "result":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1615
    .end local v0    # "i":I
    :cond_1
    return v2
.end method
