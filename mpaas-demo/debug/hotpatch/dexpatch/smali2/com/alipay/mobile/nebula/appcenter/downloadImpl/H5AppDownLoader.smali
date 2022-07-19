.class public Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;
.super Ljava/lang/Object;
.source "H5AppDownLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5AppLoader"

.field private static final TIMEOUT:I = 0x2710


# instance fields
.field private callbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;",
            ">;"
        }
    .end annotation
.end field

.field private downloadRequest:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

.field private downloadUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/util/List;)V
    .locals 1
    .param p1, "h5DownloadRequest"    # Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;
    .param p2, "listener"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downloadRequest:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    .line 38
    iput-object p2, p0, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->callbackList:Ljava/util/List;

    .line 39
    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downloadUrl:Ljava/lang/String;

    .line 42
    :cond_0
    return-void
.end method

.method private downLoadFail(Ljava/lang/String;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->callbackList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 125
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    .line 126
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->onFailed(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;ILjava/lang/String;)V

    .line 127
    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downloadUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5DownLoadCallBackList;->unRegisterCallbacks(Ljava/lang/String;)V

    .line 130
    :cond_1
    return-void
.end method

.method private downLoadSuc(Ljava/lang/String;)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->callbackList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 135
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;

    .line 136
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadCallback;->onFinish(Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;Ljava/lang/String;)V

    .line 137
    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downloadUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5DownLoadCallBackList;->unRegisterCallbacks(Ljava/lang/String;)V

    .line 140
    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .line 46
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downloadRequest:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    if-nez v0, :cond_0

    .line 47
    const-string v0, "downloadRequest == null"

    invoke-direct {v1, v0}, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downLoadFail(Ljava/lang/String;)V

    .line 48
    return-void

    .line 51
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "H5AppLoader"

    if-eqz v0, :cond_1

    .line 52
    const-string v0, "downloadRequest.getDownloadUrl() == null"

    invoke-direct {v1, v0}, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downLoadFail(Ljava/lang/String;)V

    .line 53
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "download app "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downloadRequest:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v3, v1, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downloadRequest:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v4, v3

    .line 59
    .local v4, "urlPattern":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v5, v0

    .line 61
    .local v5, "conn":Ljava/net/URLConnection;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x14

    if-ge v0, v6, :cond_2

    instance-of v0, v5, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_2

    .line 63
    move-object v0, v5

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/network/TLSv12SocketFactory;->getInstance()Lcom/alipay/mobile/nebula/appcenter/network/TLSv12SocketFactory;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 66
    :cond_2
    const/16 v0, 0x2710

    invoke-virtual {v5, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 67
    invoke-virtual {v5, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 68
    invoke-static {v5}, Lcom/alipay/mobile/monitor/traffic/AOPHelper;->getInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v0

    move-object v6, v0

    .line 70
    .local v6, "inputStream":Ljava/io/InputStream;
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downloadRequest:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getFileName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 71
    .local v3, "fileName":Ljava/lang/String;
    move-object v3, v0

    const-string v7, "/"

    if-eqz v0, :cond_4

    :try_start_1
    const-string v0, ""

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 75
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .end local v3    # "fileName":Ljava/lang/String;
    .local v0, "fileName":Ljava/lang/String;
    goto :goto_1

    .line 72
    .end local v0    # "fileName":Ljava/lang/String;
    .restart local v3    # "fileName":Ljava/lang/String;
    :cond_4
    :goto_0
    iget-object v0, v1, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downloadRequest:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v8, v1, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downloadRequest:Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;

    .line 73
    invoke-virtual {v8}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDownloadUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 72
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 77
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/download/H5DownloadRequest;->getDefaultDownloadDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 79
    .local v7, "downloadDir":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 81
    .local v8, "filePath":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "path:"

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 83
    invoke-direct {v1, v8}, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downLoadSuc(Ljava/lang/String;)V

    .line 84
    return-void

    .line 87
    :cond_5
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->create(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 88
    const/4 v9, 0x0

    .line 89
    .local v9, "fos":Ljava/io/FileOutputStream;
    const/16 v0, 0x400

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object v10, v0

    .line 91
    .local v10, "buffer":[B
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 93
    :goto_2
    invoke-virtual {v6, v10}, Ljava/io/InputStream;->read([B)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v11, v0

    .local v11, "byteRead":I
    const/4 v12, -0x1

    if-eq v0, v12, :cond_6

    .line 94
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {v9, v10, v0, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 110
    .end local v11    # "byteRead":I
    :catchall_0
    move-exception v0

    move-object/from16 v16, v3

    move-object v15, v4

    goto/16 :goto_5

    .line 106
    :catch_0
    move-exception v0

    move-object/from16 v16, v3

    move-object v15, v4

    goto/16 :goto_4

    .line 96
    .restart local v11    # "byteRead":I
    :cond_6
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V

    .line 97
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/net/URLConnection;->getContentLength()I

    move-result v12

    int-to-long v12, v12

    .line 99
    .local v12, "contentLength":J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v14

    cmp-long v16, v14, v12

    if-eqz v16, :cond_7

    .line 100
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "File "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", downloaded size "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, ", file size "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v16, v3

    move-object v15, v4

    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "urlPattern":Ljava/net/URL;
    .local v15, "urlPattern":Ljava/net/URL;
    .local v16, "fileName":Ljava/lang/String;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v14, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delete file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v3, "downloaded size does not equal to content length"

    invoke-direct {v1, v3}, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downLoadFail(Ljava/lang/String;)V

    goto :goto_3

    .line 104
    .end local v15    # "urlPattern":Ljava/net/URL;
    .end local v16    # "fileName":Ljava/lang/String;
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v4    # "urlPattern":Ljava/net/URL;
    :cond_7
    move-object/from16 v16, v3

    move-object v15, v4

    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "urlPattern":Ljava/net/URL;
    .restart local v15    # "urlPattern":Ljava/net/URL;
    .restart local v16    # "fileName":Ljava/lang/String;
    invoke-direct {v1, v8}, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downLoadSuc(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 110
    .end local v0    # "file":Ljava/io/File;
    .end local v11    # "byteRead":I
    .end local v12    # "contentLength":J
    :goto_3
    :try_start_6
    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 111
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 112
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 113
    return-void

    .line 106
    :catch_1
    move-exception v0

    goto :goto_4

    .line 110
    .end local v15    # "urlPattern":Ljava/net/URL;
    .end local v16    # "fileName":Ljava/lang/String;
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v4    # "urlPattern":Ljava/net/URL;
    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    move-object v15, v4

    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "urlPattern":Ljava/net/URL;
    .restart local v15    # "urlPattern":Ljava/net/URL;
    .restart local v16    # "fileName":Ljava/lang/String;
    goto :goto_5

    .line 106
    .end local v15    # "urlPattern":Ljava/net/URL;
    .end local v16    # "fileName":Ljava/lang/String;
    .restart local v3    # "fileName":Ljava/lang/String;
    .restart local v4    # "urlPattern":Ljava/net/URL;
    :catch_2
    move-exception v0

    move-object/from16 v16, v3

    move-object v15, v4

    .line 107
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "urlPattern":Ljava/net/URL;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v15    # "urlPattern":Ljava/net/URL;
    .restart local v16    # "fileName":Ljava/lang/String;
    :goto_4
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "input error"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downLoadFail(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    :try_start_8
    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 111
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 112
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 113
    return-void

    .line 110
    :catchall_2
    move-exception v0

    :goto_5
    invoke-static {v10}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 111
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 112
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 119
    .end local v5    # "conn":Ljava/net/URLConnection;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "downloadDir":Ljava/lang/String;
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v9    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "buffer":[B
    .end local v15    # "urlPattern":Ljava/net/URL;
    .end local v16    # "fileName":Ljava/lang/String;
    :cond_8
    return-void

    .line 116
    :catchall_3
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "download app exception."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/downloadImpl/H5AppDownLoader;->downLoadFail(Ljava/lang/String;)V

    .line 120
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method
