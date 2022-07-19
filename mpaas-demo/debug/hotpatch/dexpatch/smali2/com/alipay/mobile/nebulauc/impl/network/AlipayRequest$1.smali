.class Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$1;
.super Ljava/lang/Object;
.source "AlipayRequest.java"

# interfaces
.implements Lcom/alipay/mobile/h5container/api/H5ResInputListen;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->request(ZLjava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

.field final synthetic val$startTime:J

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;Ljava/lang/String;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    .line 622
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$1;->val$type:Ljava/lang/String;

    iput-wide p3, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$1;->val$startTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetInput(Ljava/io/InputStream;)V
    .locals 10
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 626
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 628
    .local v0, "onGetInputTime":J
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 629
    .local v2, "map":Ljava/util/Map;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 630
    .local v3, "list":Ljava/util/List;
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$1;->val$type:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    const-string v4, "content-type"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;
    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$000(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Lcom/uc/webview/export/internal/interfaces/EventHandler;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->headers(Ljava/util/Map;)V

    .line 634
    if-nez p1, :cond_0

    .line 635
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$100(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "onGetInput inputStream null return"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;
    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$000(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Lcom/uc/webview/export/internal/interfaces/EventHandler;

    move-result-object v4

    invoke-interface {v4}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->endData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 662
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->complete()V

    .line 663
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 637
    return-void

    .line 640
    :cond_0
    :goto_0
    const/4 v4, -0x1

    .line 641
    .local v4, "length":I
    const/16 v5, 0x1000

    :try_start_1
    new-array v5, v5, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    .local v5, "buffer":[B
    :try_start_2
    invoke-virtual {p1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v6

    .line 646
    goto :goto_1

    .line 644
    :catch_0
    move-exception v6

    .line 645
    .local v6, "e":Ljava/io/EOFException;
    :try_start_3
    iget-object v7, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;
    invoke-static {v7}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$100(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleResponse eof "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    .end local v6    # "e":Ljava/io/EOFException;
    :goto_1
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 648
    nop

    .line 652
    .end local v4    # "length":I
    .end local v5    # "buffer":[B
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;
    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$000(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Lcom/uc/webview/export/internal/interfaces/EventHandler;

    move-result-object v4

    invoke-interface {v4}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->endData()V

    .line 654
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 655
    .local v4, "currentTime":J
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$100(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "load response form multiMedia :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->url:Ljava/lang/String;
    invoke-static {v8}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$200(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " total coast:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$1;->val$startTime:J

    sub-long v8, v4, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " onGetInputTime coast:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$1;->val$startTime:J

    sub-long v8, v0, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " parseInput coast:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v8, v4, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "onGetInputTime":J
    .end local v2    # "map":Ljava/util/Map;
    .end local v3    # "list":Ljava/util/List;
    .end local v4    # "currentTime":J
    goto :goto_2

    .line 650
    .restart local v0    # "onGetInputTime":J
    .restart local v2    # "map":Ljava/util/Map;
    .restart local v3    # "list":Ljava/util/List;
    .local v4, "length":I
    .restart local v5    # "buffer":[B
    :cond_1
    iget-object v6, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->eventHandler:Lcom/uc/webview/export/internal/interfaces/EventHandler;
    invoke-static {v6}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$000(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Lcom/uc/webview/export/internal/interfaces/EventHandler;

    move-result-object v6

    invoke-interface {v6, v5, v4}, Lcom/uc/webview/export/internal/interfaces/EventHandler;->data([BI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 651
    .end local v4    # "length":I
    .end local v5    # "buffer":[B
    goto/16 :goto_0

    .line 659
    .end local v0    # "onGetInputTime":J
    .end local v2    # "map":Ljava/util/Map;
    .end local v3    # "list":Ljava/util/List;
    :catchall_0
    move-exception v0

    .line 660
    .local v0, "throwable":Ljava/lang/Throwable;
    :try_start_4
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    # getter for: Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->access$100(Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 662
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->complete()V

    .line 663
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 664
    nop

    .line 665
    return-void

    .line 662
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulauc/impl/network/AlipayRequest;->complete()V

    .line 663
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method
