.class Lcom/alipay/mobile/nebulax/engine/a/d/c$10;
.super Landroid/content/BroadcastReceiver;
.source "NXWebChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulax/engine/a/d/c;->openFileChooser(Landroid/webkit/ValueCallback;Z)V
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

.field final synthetic e:Lcom/alipay/mobile/nebulax/engine/a/d/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulax/engine/a/d/c;Landroidx/localbroadcastmanager/content/LocalBroadcastManager;Landroid/app/Activity;Landroid/webkit/ValueCallback;Z)V
    .locals 0

    .line 523
    iput-object p1, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$10;->e:Lcom/alipay/mobile/nebulax/engine/a/d/c;

    iput-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$10;->a:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    iput-object p3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$10;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$10;->c:Landroid/webkit/ValueCallback;

    iput-boolean p5, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$10;->d:Z

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 526
    const-string p1, ""

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 527
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$10;->a:Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 531
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 532
    iget-object v0, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$10;->e:Lcom/alipay/mobile/nebulax/engine/a/d/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a(Lcom/alipay/mobile/nebulax/engine/a/d/c;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 533
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 534
    iget-object v2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$10;->e:Lcom/alipay/mobile/nebulax/engine/a/d/c;

    iget-object v2, v2, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v2, "FILE_CHOOSER_RESULT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 536
    return-void

    .line 539
    :cond_1
    nop

    .line 542
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v3, "fileUri"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    .line 543
    if-nez p2, :cond_2

    .line 544
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 546
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$10;->b:Landroid/app/Activity;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz p2, :cond_3

    .line 547
    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$10;->b:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 549
    :cond_3
    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$10;->e:Lcom/alipay/mobile/nebulax/engine/a/d/c;

    iget-object v3, v3, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$10;->c:Landroid/webkit/ValueCallback;

    if-eqz v3, :cond_5

    .line 551
    iget-boolean v4, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$10;->d:Z

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    new-array v4, v2, [Landroid/net/Uri;

    aput-object p2, v4, v0

    move-object p2, v4

    .line 552
    :goto_0
    invoke-interface {v3, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    :cond_5
    if-eqz v1, :cond_8

    .line 563
    goto :goto_2

    .line 554
    :catchall_0
    move-exception p2

    .line 555
    :try_start_1
    iget-object v3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$10;->e:Lcom/alipay/mobile/nebulax/engine/a/d/c;

    iget-object v3, v3, Lcom/alipay/mobile/nebulax/engine/a/d/c;->a:Ljava/lang/String;

    const-string v4, "exception detail"

    invoke-static {v3, v4, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 556
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 557
    iget-object p2, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$10;->c:Landroid/webkit/ValueCallback;

    if-eqz p2, :cond_7

    .line 558
    iget-boolean v3, p0, Lcom/alipay/mobile/nebulax/engine/a/d/c$10;->d:Z

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    new-array v2, v2, [Landroid/net/Uri;

    aput-object p1, v2, v0

    move-object p1, v2

    .line 559
    :goto_1
    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 562
    :cond_7
    if-eqz v1, :cond_8

    .line 563
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 566
    :cond_8
    return-void

    .line 562
    :catchall_1
    move-exception p1

    if-eqz v1, :cond_9

    .line 563
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    throw p1

    .line 529
    :cond_a
    :goto_3
    return-void
.end method
