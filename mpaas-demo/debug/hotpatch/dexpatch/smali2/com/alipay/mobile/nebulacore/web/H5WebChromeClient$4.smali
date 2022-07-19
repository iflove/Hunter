.class Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;
.super Landroid/content/BroadcastReceiver;
.source "H5WebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;ZLcom/alipay/mobile/nebula/webview/APFileChooserParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Landroid/webkit/ValueCallback;

.field final synthetic d:Z

.field final synthetic e:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Landroid/app/Activity;Landroid/webkit/ValueCallback;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    .line 508
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->e:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->a:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->c:Landroid/webkit/ValueCallback;

    iput-boolean p5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->d:Z

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resultIntent"    # Landroid/content/Intent;

    const-string v0, ""

    .line 511
    if-eqz p2, :cond_b

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 512
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->a:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 516
    :cond_0
    invoke-virtual {v1, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 517
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->e:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->b(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;)Landroid/content/BroadcastReceiver;

    .line 518
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 519
    .local v1, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->e:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    iget-object v2, v2, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onReceive action "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v2, "FILE_CHOOSER_RESULT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 521
    return-void

    .line 524
    :cond_1
    const/4 v2, 0x0

    .line 527
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "fileUri"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    const/4 v6, 0x0

    .line 528
    .local v6, "resultUri":Landroid/net/Uri;
    move-object v6, v5

    if-nez v5, :cond_2

    .line 529
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v6, v5

    goto :goto_0

    .line 528
    :cond_2
    move-object v5, v6

    .line 531
    .end local v6    # "resultUri":Landroid/net/Uri;
    .local v5, "resultUri":Landroid/net/Uri;
    :goto_0
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->b:Landroid/app/Activity;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v5, :cond_3

    .line 532
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->b:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v5

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    move-object v2, v6

    .line 534
    :cond_3
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->e:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    iget-object v6, v6, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "onReceive result "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->c:Landroid/webkit/ValueCallback;

    if-eqz v6, :cond_5

    .line 536
    iget-boolean v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->d:Z

    if-nez v7, :cond_4

    move-object v7, v5

    goto :goto_1

    :cond_4
    new-array v7, v4, [Landroid/net/Uri;

    aput-object v5, v7, v3

    .line 537
    .local v7, "object":Ljava/lang/Object;
    :goto_1
    invoke-interface {v6, v7}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    .end local v7    # "object":Ljava/lang/Object;
    :cond_5
    if-eqz v2, :cond_9

    .line 548
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    .line 539
    .end local v5    # "resultUri":Landroid/net/Uri;
    :catchall_0
    move-exception v5

    .line 540
    .local v5, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->e:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    iget-object v6, v6, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->TAG:Ljava/lang/String;

    const-string v7, "exception detail"

    invoke-static {v6, v7, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 541
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 542
    .local v0, "resultUri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->c:Landroid/webkit/ValueCallback;

    if-eqz v6, :cond_7

    .line 543
    iget-boolean v7, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$4;->d:Z

    if-nez v7, :cond_6

    move-object v4, v0

    goto :goto_2

    :cond_6
    new-array v4, v4, [Landroid/net/Uri;

    aput-object v0, v4, v3

    :goto_2
    move-object v3, v4

    .line 544
    .local v3, "object":Ljava/lang/Object;
    invoke-interface {v6, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 547
    .end local v3    # "object":Ljava/lang/Object;
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_7
    if-eqz v2, :cond_8

    .line 548
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-void

    .line 547
    :cond_8
    move-object v5, v0

    .line 551
    .end local v0    # "resultUri":Landroid/net/Uri;
    .local v5, "resultUri":Landroid/net/Uri;
    :cond_9
    return-void

    .line 547
    .end local v5    # "resultUri":Landroid/net/Uri;
    :catchall_1
    move-exception v0

    if-eqz v2, :cond_a

    .line 548
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0

    .line 514
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_b
    :goto_3
    return-void
.end method
