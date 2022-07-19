.class public Lcom/uc/webview/export/WebResourceResponse;
.super Ljava/lang/Object;
.source "U4Source"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/io/InputStream;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/uc/webview/export/WebResourceResponse;->a:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/uc/webview/export/WebResourceResponse;->b:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/uc/webview/export/WebResourceResponse;->c:Ljava/io/InputStream;

    .line 54
    const-string p1, "OK"

    iput-object p1, p0, Lcom/uc/webview/export/WebResourceResponse;->d:Ljava/lang/String;

    .line 55
    const/16 p1, 0xc8

    iput p1, p0, Lcom/uc/webview/export/WebResourceResponse;->e:I

    .line 56
    return-void
.end method


# virtual methods
.method public getData()Ljava/io/InputStream;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/uc/webview/export/WebResourceResponse;->c:Ljava/io/InputStream;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/uc/webview/export/WebResourceResponse;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/uc/webview/export/WebResourceResponse;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/uc/webview/export/WebResourceResponse;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/uc/webview/export/WebResourceResponse;->f:Ljava/util/Map;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/uc/webview/export/WebResourceResponse;->e:I

    return v0
.end method

.method public setData(Ljava/io/InputStream;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/uc/webview/export/WebResourceResponse;->c:Ljava/io/InputStream;

    .line 108
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/uc/webview/export/WebResourceResponse;->b:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/uc/webview/export/WebResourceResponse;->a:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setResponseHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lcom/uc/webview/export/WebResourceResponse;->f:Ljava/util/Map;

    .line 172
    return-void
.end method

.method public setStatusCodeAndReasonPhrase(ILjava/lang/String;)V
    .locals 0

    .line 152
    iput-object p2, p0, Lcom/uc/webview/export/WebResourceResponse;->d:Ljava/lang/String;

    .line 153
    iput p1, p0, Lcom/uc/webview/export/WebResourceResponse;->e:I

    .line 154
    return-void
.end method
