.class public Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;
.super Ljava/lang/Object;
.source "H5AppHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;
    }
.end annotation


# static fields
.field public static final HEADER_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final HEADER_CONNECTION:Ljava/lang/String; = "Connection"

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final HEADER_UA:Ljava/lang/String; = "User-Agent"

.field private static final TAG:Ljava/lang/String; = "H5AppHttpRequest"


# instance fields
.field private final body:Ljava/lang/String;

.field private final headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final method:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    # getter for: Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->url:Ljava/lang/String;
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->access$000(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->url:Ljava/lang/String;

    .line 36
    # getter for: Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->body:Ljava/lang/String;
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->access$100(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->body:Ljava/lang/String;

    .line 37
    # getter for: Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->method:Ljava/lang/String;
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->access$200(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->method:Ljava/lang/String;

    .line 38
    # getter for: Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->headers:Ljava/util/HashMap;
    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;->access$300(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->headers:Ljava/util/HashMap;

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;
    .param p2, "x1"    # Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$1;

    .line 20
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;-><init>(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;

    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;

    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;

    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->body:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;

    .line 20
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->headers:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public execute()Ljava/lang/String;
    .locals 11

    const-string/jumbo v0, "request post error in finally "

    const-string v1, "H5AppHttpRequest"

    .line 42
    const/4 v2, 0x0

    .line 43
    .local v2, "output":Ljava/io/PrintWriter;
    const/4 v3, 0x0

    .line 44
    .local v3, "input":Ljava/io/BufferedReader;
    const-string v4, ""

    .line 47
    .local v4, "result":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->url:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 48
    .local v5, "realUrl":Ljava/net/URL;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "sendPost "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;

    .line 51
    .local v6, "connection":Ljava/net/HttpURLConnection;
    iget-object v7, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->headers:Ljava/util/HashMap;

    if-eqz v7, :cond_0

    .line 52
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 53
    .local v8, "entry":Ljava/util/Map$Entry;
    move-object v8, v9

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 54
    .local v9, "key":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 55
    .local v10, "value":Ljava/lang/String;
    invoke-virtual {v6, v9, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .end local v8    # "entry":Ljava/util/Map$Entry;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    goto :goto_0

    .line 60
    :cond_0
    iget-object v7, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->headers:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v8, "Accept"

    if-eqz v7, :cond_1

    :try_start_1
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 61
    :cond_1
    const-string v7, "*/*"

    invoke-virtual {v6, v8, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_2
    iget-object v7, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->headers:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v8, "Connection"

    if-eqz v7, :cond_3

    :try_start_2
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 64
    :cond_3
    const-string v7, "Keep-Alive"

    invoke-virtual {v6, v8, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_4
    iget-object v7, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->method:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 68
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 69
    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 71
    new-instance v7, Ljava/io/PrintWriter;

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 72
    move-object v2, v7

    iget-object v8, p0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;->body:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 75
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-static {v6}, Lcom/alipay/mobile/monitor/traffic/AOPHelper;->getInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v7

    .line 77
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    .local v8, "line":Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 78
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v4, v7

    goto :goto_1

    .line 86
    .end local v5    # "realUrl":Ljava/net/URL;
    .end local v8    # "line":Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 89
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    goto :goto_5

    .line 91
    :catchall_0
    move-exception v5

    .line 92
    .local v5, "throwable":Ljava/lang/Throwable;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .end local v5    # "throwable":Ljava/lang/Throwable;
    goto :goto_5

    .line 80
    .end local v6    # "connection":Ljava/net/HttpURLConnection;
    :catchall_1
    move-exception v5

    .line 81
    .restart local v5    # "throwable":Ljava/lang/Throwable;
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "request post error"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    const-string/jumbo v7, "sendPostException"

    invoke-virtual {v6, v7, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v6

    invoke-static {v6}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 85
    .end local v5    # "throwable":Ljava/lang/Throwable;
    if-eqz v2, :cond_6

    .line 86
    :try_start_5
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    goto :goto_2

    .line 91
    :catchall_2
    move-exception v5

    goto :goto_3

    .line 88
    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    .line 89
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    .line 92
    .restart local v5    # "throwable":Ljava/lang/Throwable;
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .end local v5    # "throwable":Ljava/lang/Throwable;
    goto :goto_5

    .line 93
    :cond_7
    :goto_4
    nop

    .line 95
    :goto_5
    return-object v4

    .line 84
    :catchall_3
    move-exception v5

    .line 85
    if-eqz v2, :cond_8

    .line 86
    :try_start_6
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    goto :goto_6

    .line 91
    :catchall_4
    move-exception v6

    goto :goto_7

    .line 88
    :cond_8
    :goto_6
    if-eqz v3, :cond_9

    .line 89
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_8

    .line 92
    .local v6, "throwable":Ljava/lang/Throwable;
    :goto_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 93
    .end local v6    # "throwable":Ljava/lang/Throwable;
    :cond_9
    :goto_8
    nop

    :goto_9
    throw v5
.end method

.method public newBuilder()Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;
    .locals 1

    .line 99
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest$Builder;-><init>(Lcom/alipay/mobile/nebula/appcenter/openapi/H5AppHttpRequest;)V

    return-object v0
.end method
