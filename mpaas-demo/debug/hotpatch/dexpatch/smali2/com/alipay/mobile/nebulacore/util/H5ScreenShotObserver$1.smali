.class Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$1;
.super Landroid/database/ContentObserver;
.source "H5ScreenShotObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$1;->a:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private a(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .line 46
    if-nez p1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$1;->a:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->a(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->a()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "date_added DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 48
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$1;->a:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->a(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->a()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "date_added DESC"

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 50
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "old onChange "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5ScreenShotObserver"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :try_start_0
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$1;->onChange(ZLandroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    return-void

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    .end local v0    # "throwable":Ljava/lang/Throwable;
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 10
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    const-string v0, "H5ScreenShotObserver"

    .line 56
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "new onChange "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$1;->a:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->a(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 58
    const-string v1, "new onChange mContext == null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void

    .line 61
    :cond_0
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$1;->a(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    .line 62
    .local v2, "cursor":Landroid/database/Cursor;
    move-object v2, v1

    if-nez v1, :cond_1

    .line 63
    return-void

    .line 65
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    .line 66
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 67
    return-void

    .line 69
    :cond_2
    const-string v1, "_data"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "path":Ljava/lang/String;
    const-string v3, "date_added"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 71
    .local v3, "dateAdded":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 72
    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v7, 0xa

    cmp-long v9, v5, v7

    if-gtz v9, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "screenshot"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onScreenShot, listeners: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$1;->a:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    invoke-static {v6}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->b(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$1;->a:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->c(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;)Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 75
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$1;->a:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->c(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;)Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;->onScreenShot()V

    .line 77
    :cond_3
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$1;->a:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->b(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 78
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$1;->a:Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;->b(Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;

    .line 79
    invoke-interface {v6}, Lcom/alipay/mobile/nebulacore/util/H5ScreenShotObserver$H5ScreenShotListener;->onScreenShot()V

    .line 80
    goto :goto_0

    .line 83
    :cond_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "dateAdded":J
    return-void

    .line 84
    :catchall_0
    move-exception v1

    .line 85
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    .end local v1    # "throwable":Ljava/lang/Throwable;
    return-void
.end method
