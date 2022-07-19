.class public Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/AppxPage;
.super Ljava/lang/Object;
.source "AppxPage.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;
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
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/AppxPage;->a:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/AppxPage;->d:Ljava/util/Map;

    .line 18
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/AppxPage;->a()V

    .line 19
    return-void
.end method

.method private a()V
    .locals 11

    .line 22
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/AppxPage;->a:Ljava/lang/String;

    const-string v1, "\\?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 23
    .local v2, "parts":[Ljava/lang/String;
    move-object v2, v0

    array-length v0, v0

    const/4 v3, 0x2

    if-le v0, v3, :cond_3

    .line 24
    const/4 v0, 0x0

    aget-object v3, v2, v0

    iput-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/AppxPage;->b:Ljava/lang/String;

    .line 25
    const/4 v3, 0x1

    aget-object v4, v2, v3

    .line 26
    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 27
    array-length v5, v4

    move-object v6, v1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_2

    aget-object v8, v4, v7

    .line 28
    .local v1, "query":Ljava/lang/String;
    move-object v1, v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 31
    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 32
    .local v6, "kv":[Ljava/lang/String;
    move-object v6, v8

    array-length v8, v8

    if-le v8, v3, :cond_1

    .line 33
    aget-object v8, v6, v0

    .line 34
    .local v8, "key":Ljava/lang/String;
    aget-object v9, v6, v3

    .line 35
    .local v9, "value":Ljava/lang/String;
    const-string v10, "__appxPageId"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 36
    iput-object v9, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/AppxPage;->c:Ljava/lang/String;

    goto :goto_1

    .line 38
    :cond_0
    iget-object v10, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/AppxPage;->d:Ljava/util/Map;

    invoke-interface {v10, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .end local v1    # "query":Ljava/lang/String;
    .end local v6    # "kv":[Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 42
    :cond_2
    return-void

    .line 43
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/AppxPage;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/AppxPage;->b:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 65
    instance-of v0, p1, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/AppxPage;

    if-eqz v0, :cond_2

    .line 66
    move-object v0, p1

    check-cast v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/AppxPage;

    .line 67
    .local v0, "page":Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/AppxPage;
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/AppxPage;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/AppxPage;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 68
    return v2

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/AppxPage;->d:Ljava/util/Map;

    iget-object v3, v0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/AppxPage;->d:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    return v2

    .line 73
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 75
    .end local v0    # "page":Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/AppxPage;
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getMain()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/AppxPage;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPageId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/AppxPage;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/AppxPage;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getmKeyValues()Ljava/util/Map;
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

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/tracedebug/bean/AppxPage;->d:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 80
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
