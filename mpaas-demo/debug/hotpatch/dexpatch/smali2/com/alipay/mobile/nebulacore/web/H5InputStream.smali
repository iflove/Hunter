.class public Lcom/alipay/mobile/nebulacore/web/H5InputStream;
.super Ljava/io/InputStream;
.source "H5InputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "H5InputStream"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/net/HttpURLConnection;

.field private c:Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;

.field private d:Z

.field public realStream:Ljava/io/InputStream;

.field public statusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;

    .line 32
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->d:Z

    .line 33
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->a:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->c:Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;

    .line 35
    const-string v1, "androidFallbackNetwork"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 36
    .local v2, "useNetsdkConfig":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 37
    const-string v1, "YES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->d:Z

    goto :goto_0

    .line 39
    :cond_0
    const-string v0, "NO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->d:Z

    .line 43
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->a()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    .line 44
    return-void
.end method

.method private a()Ljava/io/InputStream;
    .locals 6

    .line 126
    const-string v0, "H5InputStream"

    const/4 v1, 0x0

    .line 128
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    const-class v2, Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;

    .line 129
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;

    .line 130
    .local v2, "fallbackStreamProvider":Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;
    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->d:Z

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 131
    const-string v3, "useNetsdk get fallback content"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v3, Ljava/io/BufferedInputStream;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->a:Ljava/lang/String;

    .line 133
    invoke-interface {v2, v4}, Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;->getFallbackInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v3

    goto :goto_0

    .line 135
    :cond_0
    const-string v3, "useUrlConnection get fallback content"

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->a:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 137
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->b:Ljava/net/HttpURLConnection;

    .line 138
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    iput v4, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->statusCode:I

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "statusCode "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->statusCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->b:Ljava/net/HttpURLConnection;

    invoke-static {v5}, Lcom/alipay/mobile/monitor/traffic/AOPHelper;->getInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v4

    .line 142
    .end local v3    # "url":Ljava/net/URL;
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->c:Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;

    if-eqz v3, :cond_1

    .line 143
    invoke-interface {v3, p0}, Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;->onInputOpen(Lcom/alipay/mobile/nebulacore/web/H5InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v2    # "fallbackStreamProvider":Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;
    :cond_1
    goto :goto_1

    .line 145
    :catch_0
    move-exception v2

    .line 146
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed to init stream "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    const-string v0, "H5_FallbackException"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u8d70fallback\u8bf7\u6c42\u5931\u8d25,"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 149
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->c:Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;

    if-eqz v0, :cond_2

    .line 153
    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;->onInputException()V

    .line 157
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-object v1
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0

    .line 59
    :cond_0
    invoke-super {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "close "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5InputStream"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 68
    :cond_0
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->b:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 74
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->b:Ljava/net/HttpURLConnection;

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->c:Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;

    if-eqz v0, :cond_2

    .line 76
    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;->onInputClose(Lcom/alipay/mobile/nebulacore/web/H5InputStream;)V

    .line 78
    :cond_2
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void

    .line 84
    :cond_0
    invoke-super {p0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 86
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0

    .line 92
    :cond_0
    invoke-super {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    .line 51
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B

    .line 113
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0

    .line 121
    :cond_0
    invoke-super {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 100
    .end local p0    # "this":Lcom/alipay/mobile/nebulacore/web/H5InputStream;
    :cond_0
    :try_start_1
    invoke-super {p0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 2
    .param p1, "byteCount"    # J

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0

    .line 108
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
