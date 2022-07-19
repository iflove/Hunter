.class Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;
.super Ljava/lang/Object;
.source "H5FilePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->download(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;

.field final synthetic val$context:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic val$downloadTaskId:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;

    iput-object p2, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->val$downloadTaskId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->val$context:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .line 284
    move-object/from16 v1, p0

    const-string v2, " is abort"

    const-string v3, "downloadTaskId="

    const-string v4, ""

    const-string v5, "H5FilePlugin"

    .line 285
    nop

    .line 286
    nop

    .line 287
    nop

    .line 288
    nop

    .line 289
    nop

    .line 291
    const/4 v8, 0x0

    :try_start_0
    new-instance v9, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_28
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_27
    .catchall {:try_start_0 .. :try_end_0} :catchall_16

    :try_start_1
    iget-object v10, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;

    invoke-direct {v9, v10, v8}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;-><init>(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$1;)V

    .line 292
    iget-object v10, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->val$downloadTaskId:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_26
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_27
    .catchall {:try_start_1 .. :try_end_1} :catchall_16

    if-nez v10, :cond_0

    .line 293
    :try_start_2
    iget-object v10, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->val$downloadTaskId:Ljava/lang/String;

    iput-object v10, v9, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->downloadTaskId:Ljava/lang/String;

    .line 294
    iget-object v10, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;

    # getter for: Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->downloadFileHandles:Ljava/util/Map;
    invoke-static {v10}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->access$500(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;)Ljava/util/Map;

    move-result-object v10

    iget-object v11, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->val$downloadTaskId:Ljava/lang/String;

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 438
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v3, v5

    goto/16 :goto_32

    .line 432
    :catch_0
    move-exception v0

    move-object v12, v2

    move-object/from16 v22, v3

    move-object v3, v5

    move-object/from16 v16, v8

    move-object/from16 v25, v16

    :goto_0
    const/4 v6, 0x0

    :goto_1
    move-object v2, v0

    goto/16 :goto_3e

    .line 426
    :catch_1
    move-exception v0

    move-object v12, v2

    move-object v7, v3

    move-object v3, v5

    move-object/from16 v16, v8

    move-object/from16 v25, v16

    const/4 v6, 0x0

    :goto_2
    move-object v2, v0

    goto/16 :goto_44

    .line 296
    :cond_0
    :goto_3
    :try_start_3
    const-string v10, "GET"

    .line 297
    nop

    .line 299
    new-instance v11, Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;

    .line 300
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;-><init>(Landroid/content/Context;)V

    .line 301
    new-instance v12, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;

    iget-object v13, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->val$url:Ljava/lang/String;

    invoke-direct {v12, v13}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v12, v10}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setRequestMethod(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v12, v8}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setReqData([B)V

    .line 304
    const-wide/32 v13, 0xea60

    invoke-virtual {v12, v13, v14}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->setTimeout(J)V

    .line 305
    const/4 v10, 0x2

    iput v10, v12, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->linkType:I

    .line 308
    iget-object v10, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;

    # getter for: Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-static {v10}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->access$200(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v10
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_26
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_27
    .catchall {:try_start_3 .. :try_end_3} :catchall_16

    if-eqz v10, :cond_1

    :try_start_4
    iget-object v10, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;

    # getter for: Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-static {v10}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->access$200(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v10

    invoke-interface {v10}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v10
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :cond_1
    move-object v10, v8

    :goto_4
    :try_start_5
    iget-object v13, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->val$url:Ljava/lang/String;

    invoke-static {v10, v13}, Lcom/alipay/mobile/nebula/util/H5CookieUtil;->getCookie(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 309
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_26
    .catch Ljava/util/concurrent/CancellationException; {:try_start_5 .. :try_end_5} :catch_27
    .catchall {:try_start_5 .. :try_end_5} :catchall_16

    if-nez v13, :cond_2

    .line 310
    :try_start_6
    const-string v13, "Cookie"

    invoke-virtual {v12, v13, v10}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "add cookie:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " , for h5HttpUrlRequest"

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 315
    :cond_2
    nop

    .line 316
    :try_start_7
    invoke-virtual {v11, v12}, Lcom/alipay/mobile/common/transport/h5/H5NetworkManager;->enqueue(Lcom/alipay/mobile/common/transport/h5/H5HttpUrlRequest;)Ljava/util/concurrent/Future;

    move-result-object v10

    .line 317
    iput-object v10, v9, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->future:Ljava/util/concurrent/Future;

    .line 318
    invoke-interface {v10}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_26
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_27
    .catchall {:try_start_7 .. :try_end_7} :catchall_16

    .line 319
    if-eqz v10, :cond_12

    :try_start_8
    invoke-virtual {v10}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v11

    if-eqz v11, :cond_12

    .line 320
    invoke-virtual {v10}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->getHeader()Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v11

    invoke-virtual {v11}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v11

    .line 321
    array-length v12, v11
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_23
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_22
    .catchall {:try_start_8 .. :try_end_8} :catchall_11

    move-object v15, v4

    const/4 v8, 0x0

    const-wide/16 v17, 0x0

    :goto_5
    if-ge v8, v12, :cond_7

    :try_start_9
    aget-object v19, v11, v8

    .line 322
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v7

    .line 323
    if-eqz v7, :cond_6

    .line 324
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    .line 325
    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "name:"

    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - value:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v6, "Content-Type"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 327
    nop

    .line 328
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 329
    invoke-static {v13}, Lcom/alipay/mobile/aompfilemanager/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 330
    :try_start_a
    invoke-static {v13}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-object v15, v4

    move-object v4, v6

    goto :goto_6

    .line 438
    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v3, v5

    goto/16 :goto_9

    .line 432
    :catch_2
    move-exception v0

    move-object v12, v2

    move-object/from16 v22, v3

    move-object v3, v5

    goto/16 :goto_a

    .line 426
    :catch_3
    move-exception v0

    move-object v12, v2

    move-object v7, v3

    move-object v3, v5

    goto/16 :goto_b

    .line 335
    :cond_3
    :goto_6
    :try_start_b
    const-string/jumbo v6, "set-cookie"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 336
    iget-object v6, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;

    # getter for: Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-static {v6}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->access$200(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;

    # getter for: Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-static {v6}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->access$200(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v6

    invoke-interface {v6}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v6

    goto :goto_7

    :cond_4
    const/4 v6, 0x0

    :goto_7
    iget-object v14, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->val$url:Ljava/lang/String;

    invoke-static {v6, v14, v13}, Lcom/alipay/mobile/nebula/util/H5CookieUtil;->setCookie(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v14, "insert cookie:"

    invoke-direct {v6, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " , for "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->val$url:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_5
    const-string v6, "Content-Length"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v6, :cond_6

    .line 343
    :try_start_c
    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 344
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 347
    goto :goto_8

    .line 345
    :catchall_2
    move-exception v0

    move-object v6, v0

    .line 346
    :try_start_d
    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 321
    :cond_6
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    .line 438
    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object v3, v5

    move-object v4, v15

    :goto_9
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    goto/16 :goto_34

    .line 432
    :catch_4
    move-exception v0

    move-object v12, v2

    move-object/from16 v22, v3

    move-object v3, v5

    move-object v4, v15

    :goto_a
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/16 v25, 0x0

    goto/16 :goto_1

    .line 426
    :catch_5
    move-exception v0

    move-object v12, v2

    move-object v7, v3

    move-object v3, v5

    move-object v4, v15

    :goto_b
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/16 v25, 0x0

    goto/16 :goto_2

    .line 353
    :cond_7
    :try_start_e
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_21
    .catch Ljava/util/concurrent/CancellationException; {:try_start_e .. :try_end_e} :catch_20
    .catchall {:try_start_e .. :try_end_e} :catchall_10

    if-eqz v6, :cond_8

    .line 354
    :try_start_f
    iget-object v4, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->val$url:Ljava/lang/String;

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/util/concurrent/CancellationException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 357
    :cond_8
    :try_start_10
    iget-object v6, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;

    # invokes: Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->getFileCache()Lcom/alipay/mobile/nebula/filecache/FileCache;
    invoke-static {v6}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->access$000(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;)Lcom/alipay/mobile/nebula/filecache/FileCache;

    move-result-object v6

    .line 358
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->val$url:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v4}, Lcom/alipay/mobile/nebula/filecache/FileCache;->getTempPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_21
    .catch Ljava/util/concurrent/CancellationException; {:try_start_10 .. :try_end_10} :catch_20
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    .line 359
    const/4 v6, 0x1

    :try_start_11
    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->create(Ljava/lang/String;Z)Z

    .line 360
    iput-object v4, v9, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->tempFilePath:Ljava/lang/String;

    .line 361
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_1f
    .catch Ljava/util/concurrent/CancellationException; {:try_start_11 .. :try_end_11} :catch_1e
    .catchall {:try_start_11 .. :try_end_11} :catchall_f

    .line 363
    :try_start_12
    invoke-virtual {v10}, Lcom/alipay/mobile/common/transport/h5/H5HttpUrlResponse;->getInputStream()Ljava/io/InputStream;

    move-result-object v7
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_1d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_12 .. :try_end_12} :catch_1c
    .catchall {:try_start_12 .. :try_end_12} :catchall_e

    .line 365
    const-wide/16 v10, 0x0

    cmp-long v12, v17, v10

    if-gtz v12, :cond_9

    .line 366
    :try_start_13
    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v10
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/util/concurrent/CancellationException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    int-to-long v10, v10

    goto :goto_c

    .line 438
    :catchall_4
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v4

    move-object v3, v5

    move-object/from16 v20, v8

    move-object v4, v15

    const/4 v6, 0x0

    move-object v8, v7

    goto/16 :goto_34

    .line 432
    :catch_6
    move-exception v0

    move-object v12, v2

    move-object/from16 v22, v3

    move-object/from16 v16, v4

    move-object v3, v5

    move-object/from16 v25, v7

    move-object v4, v15

    goto/16 :goto_0

    .line 426
    :catch_7
    move-exception v0

    move-object v12, v2

    move-object/from16 v16, v4

    move-object/from16 v25, v7

    move-object v4, v15

    const/4 v6, 0x0

    move-object v2, v0

    move-object v7, v3

    move-object v3, v5

    goto/16 :goto_44

    .line 365
    :cond_9
    move-wide/from16 v10, v17

    .line 369
    :goto_c
    const/16 v12, 0x400

    :try_start_14
    new-array v12, v12, [B

    .line 371
    nop

    .line 372
    nop

    .line 373
    new-instance v13, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v13}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 374
    new-instance v14, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v14}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 375
    const/16 v17, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v23, 0x0

    .line 377
    :goto_d
    iget-boolean v6, v9, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->abort:Z
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_1b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_14 .. :try_end_14} :catch_1a
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    if-nez v6, :cond_f

    :try_start_15
    invoke-virtual {v7, v12}, Ljava/io/InputStream;->read([B)I

    move-result v6
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_f
    .catch Ljava/util/concurrent/CancellationException; {:try_start_15 .. :try_end_15} :catch_e
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    move-object/from16 v25, v7

    const/4 v7, -0x1

    if-eq v6, v7, :cond_e

    .line 378
    const/4 v7, 0x0

    :try_start_16
    invoke-virtual {v8, v12, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_16} :catch_d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_16 .. :try_end_16} :catch_c
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 379
    move-object/from16 v20, v8

    int-to-long v7, v6

    add-long v6, v17, v7

    .line 380
    :try_start_17
    iput-wide v6, v9, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->totalBytesWritten:J

    .line 381
    iput-wide v10, v9, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->totalBytesExpectedToWrite:J

    .line 383
    const-wide/16 v17, 0x0

    cmp-long v8, v10, v17

    if-lez v8, :cond_c

    .line 384
    long-to-float v8, v6

    move-object/from16 v21, v12

    long-to-float v12, v10

    div-float/2addr v8, v12

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float v8, v8, v12

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_17} :catch_b
    .catch Ljava/util/concurrent/CancellationException; {:try_start_17 .. :try_end_17} :catch_a
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    int-to-float v8, v8

    .line 385
    cmpl-float v12, v8, v19

    if-gtz v12, :cond_b

    move-object v12, v2

    move-object/from16 v22, v3

    :try_start_18
    iget-wide v2, v9, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->totalBytesWritten:J
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_18} :catch_9
    .catch Ljava/util/concurrent/CancellationException; {:try_start_18 .. :try_end_18} :catch_8
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    move-object/from16 v27, v4

    move-object/from16 v26, v5

    :try_start_19
    iget-wide v4, v9, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->totalBytesExpectedToWrite:J

    cmp-long v23, v2, v4

    if-nez v23, :cond_a

    goto :goto_e

    :cond_a
    move-wide/from16 v17, v6

    move/from16 v23, v8

    move-object v2, v12

    move-object/from16 v8, v20

    move-object/from16 v12, v21

    move-object/from16 v3, v22

    move-object/from16 v7, v25

    move-object/from16 v5, v26

    move-object/from16 v4, v27

    const/4 v6, 0x1

    goto :goto_d

    .line 432
    :catch_8
    move-exception v0

    goto/16 :goto_11

    .line 426
    :catch_9
    move-exception v0

    move-object/from16 v27, v4

    move-object v2, v0

    move-object v3, v5

    move-object v4, v15

    move-object/from16 v8, v20

    move-object/from16 v7, v22

    goto/16 :goto_18

    .line 385
    :cond_b
    move-object v12, v2

    move-object/from16 v22, v3

    move-object/from16 v27, v4

    move-object/from16 v26, v5

    .line 387
    :goto_e
    move/from16 v19, v8

    goto :goto_f

    .line 383
    :cond_c
    move-object/from16 v22, v3

    move-object/from16 v27, v4

    move-object/from16 v26, v5

    move-object/from16 v21, v12

    move-object v12, v2

    move/from16 v8, v23

    .line 392
    :goto_f
    iput v8, v9, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->progress:F

    .line 394
    const-string v2, "downloadTaskId"

    iget-object v3, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->val$downloadTaskId:Ljava/lang/String;

    invoke-virtual {v13, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    const-string/jumbo v2, "progress"

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string/jumbo v2, "totalBytesWritten"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string/jumbo v2, "totalBytesExpectedToWrite"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string v2, "data"

    invoke-virtual {v14, v2, v13}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object v2, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;

    # getter for: Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-static {v2}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->access$200(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v2

    if-eqz v2, :cond_d

    iget-object v2, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;

    # getter for: Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-static {v2}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->access$200(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 400
    iget-object v2, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;

    # getter for: Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-static {v2}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->access$200(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v2

    const-string v3, "downloadTaskStateChange"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v14, v5}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_19} :catch_11
    .catch Ljava/util/concurrent/CancellationException; {:try_start_19 .. :try_end_19} :catch_10
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    goto :goto_10

    .line 399
    :cond_d
    const/4 v5, 0x0

    .line 377
    :goto_10
    move-wide/from16 v17, v6

    move/from16 v23, v8

    move-object v2, v12

    move-object/from16 v8, v20

    move-object/from16 v12, v21

    move-object/from16 v3, v22

    move-object/from16 v7, v25

    move-object/from16 v5, v26

    move-object/from16 v4, v27

    const/4 v6, 0x1

    goto/16 :goto_d

    .line 438
    :catchall_5
    move-exception v0

    move-object/from16 v27, v4

    goto :goto_13

    .line 432
    :catch_a
    move-exception v0

    move-object v12, v2

    move-object/from16 v22, v3

    :goto_11
    move-object/from16 v27, v4

    move-object v2, v0

    move-object v3, v5

    move-object v4, v15

    move-object/from16 v8, v20

    goto :goto_16

    .line 426
    :catch_b
    move-exception v0

    move-object v12, v2

    move-object/from16 v27, v4

    move-object v2, v0

    move-object v7, v3

    move-object v3, v5

    move-object v4, v15

    move-object/from16 v8, v20

    goto/16 :goto_18

    .line 438
    :catchall_6
    move-exception v0

    move-object/from16 v27, v4

    goto :goto_12

    .line 432
    :catch_c
    move-exception v0

    move-object v12, v2

    move-object/from16 v22, v3

    move-object/from16 v27, v4

    goto :goto_15

    .line 426
    :catch_d
    move-exception v0

    move-object v12, v2

    move-object/from16 v27, v4

    goto :goto_17

    .line 377
    :cond_e
    move-object v12, v2

    move-object/from16 v22, v3

    move-object/from16 v27, v4

    move-object/from16 v26, v5

    goto :goto_19

    .line 438
    :catchall_7
    move-exception v0

    move-object/from16 v27, v4

    move-object/from16 v25, v7

    :goto_12
    move-object/from16 v20, v8

    :goto_13
    move-object v2, v0

    move-object v3, v5

    move-object v4, v15

    move-object/from16 v8, v25

    :goto_14
    move-object/from16 v16, v27

    goto/16 :goto_33

    .line 432
    :catch_e
    move-exception v0

    move-object v12, v2

    move-object/from16 v22, v3

    move-object/from16 v27, v4

    move-object/from16 v25, v7

    :goto_15
    move-object/from16 v20, v8

    move-object v2, v0

    move-object v3, v5

    move-object v4, v15

    :goto_16
    move-object/from16 v16, v27

    goto/16 :goto_3d

    .line 426
    :catch_f
    move-exception v0

    move-object v12, v2

    move-object/from16 v27, v4

    move-object/from16 v25, v7

    :goto_17
    move-object/from16 v20, v8

    move-object v2, v0

    move-object v7, v3

    move-object v3, v5

    move-object v4, v15

    :goto_18
    move-object/from16 v16, v27

    goto/16 :goto_43

    .line 377
    :cond_f
    move-object v12, v2

    move-object/from16 v22, v3

    move-object/from16 v27, v4

    move-object/from16 v26, v5

    move-object/from16 v25, v7

    :goto_19
    move-object/from16 v20, v8

    .line 404
    :try_start_1a
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->flush()V

    .line 406
    iget-boolean v2, v9, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->abort:Z

    if-nez v2, :cond_11

    .line 411
    invoke-static/range {v27 .. v27}, Lcom/alipay/mobile/aompfilemanager/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 412
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1a} :catch_19
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1a .. :try_end_1a} :catch_18
    .catchall {:try_start_1a .. :try_end_1a} :catchall_c

    if-eqz v3, :cond_10

    .line 413
    :try_start_1b
    iget-object v3, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->val$url:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/aompfilemanager/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1b} :catch_11
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1b .. :try_end_1b} :catch_10
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    move-object v4, v3

    goto :goto_1a

    .line 438
    :catchall_8
    move-exception v0

    move-object v2, v0

    move-object v4, v15

    move-object/from16 v8, v25

    move-object/from16 v3, v26

    goto :goto_14

    .line 432
    :catch_10
    move-exception v0

    move-object v2, v0

    move-object v4, v15

    move-object/from16 v8, v20

    move-object/from16 v3, v26

    goto :goto_16

    .line 426
    :catch_11
    move-exception v0

    move-object v2, v0

    move-object v4, v15

    move-object/from16 v8, v20

    move-object/from16 v7, v22

    move-object/from16 v3, v26

    goto :goto_18

    .line 412
    :cond_10
    move-object v4, v15

    .line 415
    :goto_1a
    nop

    .line 416
    :try_start_1c
    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/resourcehandler/H5ResourceHandlerUtil;->localIdToUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 417
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 418
    const-string/jumbo v5, "tempFilePath"
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1c} :catch_17
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1c .. :try_end_1c} :catch_16
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    move-object/from16 v6, v27

    :try_start_1d
    invoke-virtual {v3, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string v5, "apFilePath"

    invoke-virtual {v3, v5, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_1d} :catch_15
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1d .. :try_end_1d} :catch_14
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    .line 420
    nop

    .line 421
    :try_start_1e
    iget-object v2, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->val$context:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v2, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_1e} :catch_13
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1e .. :try_end_1e} :catch_12
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    const/16 v24, 0x1

    goto :goto_1e

    .line 438
    :catchall_9
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v6

    move-object/from16 v8, v25

    move-object/from16 v3, v26

    const/4 v6, 0x1

    goto/16 :goto_34

    .line 432
    :catch_12
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v6

    move-object/from16 v8, v20

    move-object/from16 v3, v26

    const/4 v6, 0x1

    goto/16 :goto_3e

    .line 426
    :catch_13
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v6

    move-object/from16 v8, v20

    move-object/from16 v7, v22

    move-object/from16 v3, v26

    const/4 v6, 0x1

    goto/16 :goto_44

    .line 438
    :catchall_a
    move-exception v0

    goto :goto_1b

    .line 432
    :catch_14
    move-exception v0

    goto :goto_1c

    .line 426
    :catch_15
    move-exception v0

    goto :goto_1d

    .line 438
    :catchall_b
    move-exception v0

    move-object/from16 v6, v27

    :goto_1b
    move-object v2, v0

    move-object/from16 v16, v6

    goto :goto_1f

    .line 432
    :catch_16
    move-exception v0

    move-object/from16 v6, v27

    :goto_1c
    move-object v2, v0

    move-object/from16 v16, v6

    goto :goto_20

    .line 426
    :catch_17
    move-exception v0

    move-object/from16 v6, v27

    :goto_1d
    move-object v2, v0

    move-object/from16 v16, v6

    goto :goto_21

    .line 406
    :cond_11
    move-object/from16 v6, v27

    move-object v4, v15

    const/16 v24, 0x0

    .line 423
    :goto_1e
    move-object v5, v6

    move/from16 v7, v24

    move-object/from16 v8, v25

    goto/16 :goto_2b

    .line 438
    :catchall_c
    move-exception v0

    move-object/from16 v6, v27

    move-object v2, v0

    move-object/from16 v16, v6

    move-object v4, v15

    :goto_1f
    move-object/from16 v8, v25

    goto/16 :goto_28

    .line 432
    :catch_18
    move-exception v0

    move-object/from16 v6, v27

    move-object v2, v0

    move-object/from16 v16, v6

    move-object v4, v15

    :goto_20
    move-object/from16 v8, v20

    goto/16 :goto_29

    .line 426
    :catch_19
    move-exception v0

    move-object/from16 v6, v27

    move-object v2, v0

    move-object/from16 v16, v6

    move-object v4, v15

    :goto_21
    move-object/from16 v8, v20

    move-object/from16 v7, v22

    goto/16 :goto_2a

    .line 438
    :catchall_d
    move-exception v0

    move-object v6, v4

    move-object/from16 v25, v7

    move-object/from16 v20, v8

    move-object v2, v0

    move-object v3, v5

    move-object/from16 v16, v6

    move-object v4, v15

    move-object/from16 v8, v25

    goto/16 :goto_33

    .line 432
    :catch_1a
    move-exception v0

    move-object v12, v2

    move-object/from16 v22, v3

    move-object v6, v4

    move-object/from16 v25, v7

    move-object/from16 v20, v8

    move-object v2, v0

    move-object v3, v5

    move-object/from16 v16, v6

    move-object v4, v15

    goto/16 :goto_3d

    .line 426
    :catch_1b
    move-exception v0

    move-object v12, v2

    move-object v6, v4

    move-object/from16 v25, v7

    move-object/from16 v20, v8

    move-object v2, v0

    move-object v7, v3

    move-object v3, v5

    move-object/from16 v16, v6

    move-object v4, v15

    goto/16 :goto_43

    .line 438
    :catchall_e
    move-exception v0

    move-object v6, v4

    move-object/from16 v26, v5

    move-object/from16 v20, v8

    const/4 v5, 0x0

    move-object v2, v0

    move-object v8, v5

    goto :goto_22

    .line 432
    :catch_1c
    move-exception v0

    move-object v12, v2

    move-object/from16 v22, v3

    move-object v6, v4

    move-object/from16 v26, v5

    move-object/from16 v20, v8

    const/4 v5, 0x0

    move-object v2, v0

    move-object/from16 v25, v5

    goto :goto_23

    .line 426
    :catch_1d
    move-exception v0

    move-object v12, v2

    move-object v6, v4

    move-object/from16 v26, v5

    move-object/from16 v20, v8

    const/4 v5, 0x0

    move-object v2, v0

    move-object v7, v3

    move-object/from16 v25, v5

    goto :goto_24

    .line 438
    :catchall_f
    move-exception v0

    move-object v6, v4

    move-object/from16 v26, v5

    const/4 v5, 0x0

    move-object v2, v0

    move-object v8, v5

    move-object/from16 v20, v8

    :goto_22
    move-object/from16 v16, v6

    goto :goto_25

    .line 432
    :catch_1e
    move-exception v0

    move-object v12, v2

    move-object/from16 v22, v3

    move-object v6, v4

    move-object/from16 v26, v5

    const/4 v5, 0x0

    move-object v2, v0

    move-object v8, v5

    move-object/from16 v25, v8

    :goto_23
    move-object/from16 v16, v6

    goto :goto_26

    .line 426
    :catch_1f
    move-exception v0

    move-object v12, v2

    move-object v6, v4

    move-object/from16 v26, v5

    const/4 v5, 0x0

    move-object v2, v0

    move-object v7, v3

    move-object v8, v5

    move-object/from16 v25, v8

    :goto_24
    move-object/from16 v16, v6

    goto :goto_27

    .line 438
    :catchall_10
    move-exception v0

    move-object/from16 v26, v5

    const/4 v5, 0x0

    move-object v2, v0

    move-object v8, v5

    move-object/from16 v16, v8

    move-object/from16 v20, v16

    :goto_25
    move-object v4, v15

    goto :goto_28

    .line 432
    :catch_20
    move-exception v0

    move-object v12, v2

    move-object/from16 v22, v3

    move-object/from16 v26, v5

    const/4 v5, 0x0

    move-object v2, v0

    move-object v8, v5

    move-object/from16 v16, v8

    move-object/from16 v25, v16

    :goto_26
    move-object v4, v15

    goto :goto_29

    .line 426
    :catch_21
    move-exception v0

    move-object v12, v2

    move-object/from16 v26, v5

    const/4 v5, 0x0

    move-object v2, v0

    move-object v7, v3

    move-object v8, v5

    move-object/from16 v16, v8

    move-object/from16 v25, v16

    :goto_27
    move-object v4, v15

    goto :goto_2a

    .line 438
    :catchall_11
    move-exception v0

    move-object/from16 v26, v5

    move-object v5, v8

    move-object v2, v0

    move-object/from16 v16, v8

    move-object/from16 v20, v16

    :goto_28
    move-object/from16 v3, v26

    goto/16 :goto_33

    .line 432
    :catch_22
    move-exception v0

    move-object v12, v2

    move-object/from16 v22, v3

    move-object/from16 v26, v5

    move-object v5, v8

    move-object v2, v0

    move-object/from16 v16, v8

    move-object/from16 v25, v16

    :goto_29
    move-object/from16 v3, v26

    goto/16 :goto_3d

    .line 426
    :catch_23
    move-exception v0

    move-object v12, v2

    move-object/from16 v26, v5

    move-object v5, v8

    move-object v2, v0

    move-object v7, v3

    move-object/from16 v16, v8

    move-object/from16 v25, v16

    :goto_2a
    move-object/from16 v3, v26

    goto/16 :goto_43

    .line 319
    :cond_12
    move-object v12, v2

    move-object/from16 v22, v3

    move-object/from16 v26, v5

    move-object v5, v8

    .line 424
    :try_start_1f
    iget-object v2, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;

    iget-object v3, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->val$context:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const-string/jumbo v6, "the response is null"

    # invokes: Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->setError(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V
    invoke-static {v2, v3, v6}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->access$600(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_1f} :catch_25
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1f .. :try_end_1f} :catch_24
    .catchall {:try_start_1f .. :try_end_1f} :catchall_15

    move-object v8, v5

    move-object/from16 v20, v8

    const/4 v7, 0x0

    .line 443
    :goto_2b
    if-eqz v8, :cond_13

    .line 444
    :try_start_20
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_12

    move-object/from16 v3, v26

    goto :goto_2c

    .line 446
    :catchall_12
    move-exception v0

    move-object v2, v0

    .line 447
    move-object/from16 v3, v26

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2d

    .line 443
    :cond_13
    move-object/from16 v3, v26

    .line 448
    :goto_2c
    nop

    .line 451
    :goto_2d
    if-eqz v20, :cond_14

    .line 452
    :try_start_21
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_13

    goto :goto_2e

    .line 454
    :catchall_13
    move-exception v0

    move-object v2, v0

    .line 455
    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2f

    .line 456
    :cond_14
    :goto_2e
    nop

    .line 457
    :goto_2f
    iget-object v2, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;

    # getter for: Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->downloadFileHandles:Ljava/util/Map;
    invoke-static {v2}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->access$500(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;)Ljava/util/Map;

    move-result-object v2

    iget-object v6, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->val$downloadTaskId:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;

    .line 459
    if-eqz v2, :cond_15

    .line 460
    :try_start_22
    iget-boolean v6, v2, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->abort:Z

    if-eqz v6, :cond_15

    .line 461
    iget-object v6, v2, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->tempFilePath:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_15

    .line 462
    new-instance v6, Ljava/io/File;

    iget-object v2, v2, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->tempFilePath:Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_14

    goto :goto_30

    .line 467
    :catchall_14
    move-exception v0

    move-object v2, v0

    .line 468
    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 470
    goto/16 :goto_49

    .line 469
    :cond_15
    :goto_30
    goto/16 :goto_49

    .line 438
    :catchall_15
    move-exception v0

    move-object/from16 v3, v26

    move-object v2, v0

    move-object v8, v5

    goto :goto_32

    .line 432
    :catch_24
    move-exception v0

    move-object/from16 v3, v26

    move-object v2, v0

    move-object v8, v5

    goto/16 :goto_3c

    .line 426
    :catch_25
    move-exception v0

    move-object/from16 v3, v26

    move-object v2, v0

    move-object v8, v5

    goto :goto_31

    :catch_26
    move-exception v0

    move-object v12, v2

    move-object/from16 v22, v3

    move-object v3, v5

    move-object v5, v8

    move-object v2, v0

    :goto_31
    move-object/from16 v16, v8

    move-object/from16 v25, v16

    move-object/from16 v7, v22

    goto/16 :goto_43

    .line 438
    :catchall_16
    move-exception v0

    move-object v3, v5

    move-object v5, v8

    move-object v2, v0

    :goto_32
    move-object/from16 v16, v8

    move-object/from16 v20, v16

    :goto_33
    const/4 v6, 0x0

    .line 439
    :goto_34
    :try_start_23
    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 440
    iget-object v5, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;

    iget-object v7, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->val$context:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->setError(Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V
    invoke-static {v5, v7, v2}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->access$600(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1a

    .line 443
    if-eqz v8, :cond_16

    .line 444
    :try_start_24
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_17

    goto :goto_35

    .line 446
    :catchall_17
    move-exception v0

    move-object v2, v0

    .line 447
    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_36

    .line 448
    :cond_16
    :goto_35
    nop

    .line 451
    :goto_36
    if-eqz v20, :cond_17

    .line 452
    :try_start_25
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_18

    goto :goto_37

    .line 454
    :catchall_18
    move-exception v0

    move-object v2, v0

    .line 455
    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_38

    .line 456
    :cond_17
    :goto_37
    nop

    .line 457
    :goto_38
    iget-object v2, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;

    # getter for: Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->downloadFileHandles:Ljava/util/Map;
    invoke-static {v2}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->access$500(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;)Ljava/util/Map;

    move-result-object v2

    iget-object v5, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->val$downloadTaskId:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;

    .line 459
    if-eqz v2, :cond_18

    .line 460
    :try_start_26
    iget-boolean v5, v2, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->abort:Z

    if-eqz v5, :cond_18

    .line 461
    iget-object v5, v2, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->tempFilePath:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 462
    new-instance v5, Ljava/io/File;

    iget-object v2, v2, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->tempFilePath:Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_19

    goto :goto_3a

    .line 467
    :catchall_19
    move-exception v0

    move-object v2, v0

    .line 468
    :goto_39
    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 470
    goto :goto_3b

    .line 469
    :cond_18
    :goto_3a
    nop

    .line 471
    :goto_3b
    move v7, v6

    move-object/from16 v5, v16

    goto/16 :goto_49

    .line 442
    :catchall_1a
    move-exception v0

    move-object v2, v0

    goto/16 :goto_4a

    .line 432
    :catch_27
    move-exception v0

    move-object v12, v2

    move-object/from16 v22, v3

    move-object v3, v5

    move-object v5, v8

    move-object v2, v0

    :goto_3c
    move-object/from16 v16, v8

    move-object/from16 v25, v16

    :goto_3d
    const/4 v6, 0x0

    .line 433
    :goto_3e
    :try_start_27
    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 434
    iget-object v2, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;

    # getter for: Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->downloadFileHandles:Ljava/util/Map;
    invoke-static {v2}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->access$500(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;)Ljava/util/Map;

    move-result-object v2

    iget-object v5, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->val$downloadTaskId:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;

    .line 435
    if-eqz v2, :cond_19

    .line 436
    new-instance v5, Ljava/lang/StringBuilder;

    move-object/from16 v7, v22

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->val$downloadTaskId:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v2, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->abort:Z

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_21

    .line 443
    :cond_19
    if-eqz v25, :cond_1a

    .line 444
    :try_start_28
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1b

    goto :goto_3f

    .line 446
    :catchall_1b
    move-exception v0

    move-object v2, v0

    .line 447
    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_40

    .line 448
    :cond_1a
    :goto_3f
    nop

    .line 451
    :goto_40
    if-eqz v8, :cond_1b

    .line 452
    :try_start_29
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1c

    goto :goto_41

    .line 454
    :catchall_1c
    move-exception v0

    move-object v2, v0

    .line 455
    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_42

    .line 456
    :cond_1b
    :goto_41
    nop

    .line 457
    :goto_42
    iget-object v2, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;

    # getter for: Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->downloadFileHandles:Ljava/util/Map;
    invoke-static {v2}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->access$500(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;)Ljava/util/Map;

    move-result-object v2

    iget-object v5, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->val$downloadTaskId:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;

    .line 459
    if-eqz v2, :cond_18

    .line 460
    :try_start_2a
    iget-boolean v5, v2, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->abort:Z

    if-eqz v5, :cond_18

    .line 461
    iget-object v5, v2, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->tempFilePath:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 462
    new-instance v5, Ljava/io/File;

    iget-object v2, v2, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->tempFilePath:Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1d

    goto/16 :goto_3a

    .line 467
    :catchall_1d
    move-exception v0

    move-object v2, v0

    goto/16 :goto_39

    .line 426
    :catch_28
    move-exception v0

    move-object v12, v2

    move-object v7, v3

    move-object v3, v5

    move-object v5, v8

    move-object v2, v0

    move-object/from16 v16, v8

    move-object/from16 v25, v16

    :goto_43
    const/4 v6, 0x0

    .line 427
    :goto_44
    :try_start_2b
    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 428
    iget-object v2, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;

    # getter for: Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->downloadFileHandles:Ljava/util/Map;
    invoke-static {v2}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->access$500(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;)Ljava/util/Map;

    move-result-object v2

    iget-object v5, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->val$downloadTaskId:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;

    .line 429
    if-eqz v2, :cond_1c

    .line 430
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->val$downloadTaskId:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v2, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->abort:Z

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_21

    .line 443
    :cond_1c
    if-eqz v25, :cond_1d

    .line 444
    :try_start_2c
    invoke-virtual/range {v25 .. v25}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1e

    goto :goto_45

    .line 446
    :catchall_1e
    move-exception v0

    move-object v2, v0

    .line 447
    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_46

    .line 448
    :cond_1d
    :goto_45
    nop

    .line 451
    :goto_46
    if-eqz v8, :cond_1e

    .line 452
    :try_start_2d
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1f

    goto :goto_47

    .line 454
    :catchall_1f
    move-exception v0

    move-object v2, v0

    .line 455
    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_48

    .line 456
    :cond_1e
    :goto_47
    nop

    .line 457
    :goto_48
    iget-object v2, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;

    # getter for: Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->downloadFileHandles:Ljava/util/Map;
    invoke-static {v2}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->access$500(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;)Ljava/util/Map;

    move-result-object v2

    iget-object v5, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->val$downloadTaskId:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;

    .line 459
    if-eqz v2, :cond_18

    .line 460
    :try_start_2e
    iget-boolean v5, v2, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->abort:Z

    if-eqz v5, :cond_18

    .line 461
    iget-object v5, v2, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->tempFilePath:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 462
    new-instance v5, Ljava/io/File;

    iget-object v2, v2, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->tempFilePath:Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_20

    goto/16 :goto_3a

    .line 467
    :catchall_20
    move-exception v0

    move-object v2, v0

    goto/16 :goto_39

    .line 471
    :goto_49
    if-eqz v7, :cond_1f

    .line 472
    const-string v2, "image"

    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 473
    iget-object v2, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;

    # getter for: Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->h5Page:Lcom/alipay/mobile/h5container/api/H5Page;
    invoke-static {v2}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->access$200(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v2

    iget-object v3, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->val$url:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->fileToByte(Ljava/io/File;)[B

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/nebula/util/H5EdgeUtils;->checkImageRisk(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;[B)V

    .line 476
    :cond_1f
    return-void

    .line 442
    :catchall_21
    move-exception v0

    move-object v2, v0

    move-object/from16 v20, v8

    move-object/from16 v8, v25

    .line 443
    :goto_4a
    if-eqz v8, :cond_20

    .line 444
    :try_start_2f
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_22

    goto :goto_4b

    .line 446
    :catchall_22
    move-exception v0

    move-object v4, v0

    .line 447
    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4c

    .line 448
    :cond_20
    :goto_4b
    nop

    .line 451
    :goto_4c
    if-eqz v20, :cond_21

    .line 452
    :try_start_30
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_23

    goto :goto_4d

    .line 454
    :catchall_23
    move-exception v0

    move-object v4, v0

    .line 455
    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4e

    .line 456
    :cond_21
    :goto_4d
    nop

    .line 457
    :goto_4e
    iget-object v4, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->this$0:Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;

    # getter for: Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->downloadFileHandles:Ljava/util/Map;
    invoke-static {v4}, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;->access$500(Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, v1, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$3;->val$downloadTaskId:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;

    .line 459
    if-eqz v4, :cond_22

    .line 460
    :try_start_31
    iget-boolean v5, v4, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->abort:Z

    if-eqz v5, :cond_22

    .line 461
    iget-object v5, v4, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->tempFilePath:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_22

    .line 462
    new-instance v5, Ljava/io/File;

    iget-object v4, v4, Lcom/alipay/mobile/aompfilemanager/h5plugin/H5FilePlugin$DownloadFileHandle;->tempFilePath:Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_24

    goto :goto_4f

    .line 467
    :catchall_24
    move-exception v0

    move-object v4, v0

    .line 468
    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_50

    .line 469
    :cond_22
    :goto_4f
    nop

    .line 470
    :goto_50
    throw v2
.end method
