.class public Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
.super Ljava/lang/Object;
.source "H5PreRenderPool.java"


# static fields
.field public static final CONTAINSMODE_CONTENT:I = 0x0

.field public static final CONTAINSMODE_CONTENT_URL:I = 0x2

.field public static final CONTAINSMODE_POINT:I = 0x1

.field private static a:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulacore/ui/H5Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/Bundle;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Landroid/os/Handler;

.field private h:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->b:Ljava/util/List;

    .line 24
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->c:Ljava/util/Map;

    .line 25
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->d:Ljava/util/List;

    .line 26
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->e:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->b:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->c:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->d:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->e:Ljava/util/List;

    .line 39
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .line 86
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 87
    .local v2, "anchorIndex":I
    move v2, v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 88
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 89
    return-object v0

    .line 91
    :cond_0
    return-object p0
.end method

.method public static getInstance()Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;
    .locals 2

    .line 42
    sget-object v0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->a:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    if-nez v0, :cond_1

    .line 43
    const-class v0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->a:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;-><init>()V

    sput-object v1, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->a:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    .line 47
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 49
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->a:Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;

    return-object v0
.end method


# virtual methods
.method public containsPoolKey(Landroid/os/Bundle;I)Z
    .locals 4
    .param p1, "key"    # Landroid/os/Bundle;
    .param p2, "mode"    # I

    .line 68
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_4

    if-eq p2, v1, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    .line 80
    const/4 v0, 0x0

    .local v0, "result":Z
    goto :goto_0

    .line 76
    .end local v0    # "result":Z
    :cond_0
    const-string v2, "url"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->e:Ljava/util/List;

    if-eqz v3, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 78
    .restart local v0    # "result":Z
    :cond_1
    goto :goto_0

    .line 73
    .end local v0    # "result":Z
    .end local v2    # "url":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->c:Ljava/util/Map;

    if-eqz v2, :cond_3

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    .line 74
    .restart local v0    # "result":Z
    :cond_3
    goto :goto_0

    .line 70
    .end local v0    # "result":Z
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->d:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONObject(Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, 0x1

    .line 71
    .restart local v0    # "result":Z
    :cond_5
    nop

    .line 82
    :goto_0
    return v0
.end method

.method public getCurrentIndex(Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)I
    .locals 1
    .param p1, "h5Fragment"    # Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 112
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getPreFragment(Landroid/os/Bundle;I)Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    .locals 5
    .param p1, "key"    # Landroid/os/Bundle;
    .param p2, "mode"    # I

    .line 123
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz p2, :cond_6

    const/4 v3, 0x1

    if-eq p2, v3, :cond_3

    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    .line 138
    const/4 v0, 0x0

    .local v0, "result":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    goto :goto_3

    .line 133
    .end local v0    # "result":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    :cond_0
    const-string v3, "url"

    invoke-static {p1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "url":Ljava/lang/String;
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->e:Ljava/util/List;

    if-eqz v4, :cond_1

    invoke-interface {v4, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    .line 135
    .local v1, "index3":I
    :goto_0
    move v1, v4

    if-eq v4, v2, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 136
    .restart local v0    # "result":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    :cond_2
    goto :goto_3

    .line 129
    .end local v0    # "result":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    .end local v1    # "index3":I
    .end local v3    # "url":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->c:Ljava/util/Map;

    if-eqz v3, :cond_4

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :cond_4
    const/4 v3, -0x1

    .line 130
    .local v1, "index2":I
    :goto_1
    move v1, v3

    if-eq v3, v2, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 131
    .restart local v0    # "result":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    :cond_5
    goto :goto_3

    .line 125
    .end local v0    # "result":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    .end local v1    # "index2":I
    :cond_6
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->d:Ljava/util/List;

    if-eqz v3, :cond_7

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONObject(Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    goto :goto_2

    :cond_7
    const/4 v3, -0x1

    .line 126
    .local v1, "index":I
    :goto_2
    move v1, v3

    if-eq v3, v2, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 127
    .restart local v0    # "result":Lcom/alipay/mobile/nebulacore/ui/H5Fragment;
    :cond_8
    nop

    .line 140
    .end local v1    # "index":I
    :goto_3
    return-object v0
.end method

.method public getPreFragmentCount()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPreFragmentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulacore/ui/H5Fragment;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->b:Ljava/util/List;

    return-object v0
.end method

.method public getPreHandler()Landroid/os/Handler;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->g:Landroid/os/Handler;

    return-object v0
.end method

.method public getPreParamContentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->d:Ljava/util/List;

    return-object v0
.end method

.method public getPreParamPointMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/Bundle;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->c:Ljava/util/Map;

    return-object v0
.end method

.method public getPreRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->h:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getPreUrlList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->e:Ljava/util/List;

    return-object v0
.end method

.method public getUrls()Lcom/alibaba/fastjson/JSONArray;
    .locals 3

    .line 57
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 58
    .local v0, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->e:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 59
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 60
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 61
    .end local v2    # "url":Ljava/lang/String;
    goto :goto_0

    .line 63
    :cond_0
    return-object v0
.end method

.method public isIntercept()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->f:Z

    return v0
.end method

.method public putPreFragment(Landroid/os/Bundle;Lcom/alipay/mobile/nebulacore/ui/H5Fragment;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "h5Fragment"    # Lcom/alipay/mobile/nebulacore/ui/H5Fragment;

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 97
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->toJSONObject(Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 100
    const-string v0, "url"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v0    # "url":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 104
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_2
    return-void
.end method

.method public putPreFragmentBundle(Landroid/os/Bundle;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "index"    # Ljava/lang/Integer;

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 205
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->c:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 208
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 211
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->e:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 214
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 220
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->g:Landroid/os/Handler;

    .line 221
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->h:Ljava/lang/Runnable;

    .line 222
    return-void
.end method

.method public removeFragment(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "key"    # Landroid/os/Bundle;

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 145
    .local v1, "indexObj":Ljava/lang/Integer;
    move-object v1, v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v2, 0x0

    .line 146
    .local v2, "index":I
    move v2, v0

    if-ltz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 150
    .local v0, "size":I
    if-ltz v2, :cond_2

    if-ge v2, v0, :cond_2

    .line 151
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 153
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 154
    if-ltz v2, :cond_3

    if-ge v2, v0, :cond_3

    .line 155
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 157
    :cond_3
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 158
    if-ltz v2, :cond_4

    if-ge v2, v0, :cond_4

    .line 159
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->e:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 161
    :cond_4
    return-void
.end method

.method public setIsIntercept(Z)V
    .locals 0
    .param p1, "isIntercept"    # Z

    .line 184
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->f:Z

    .line 185
    return-void
.end method

.method public setPreHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "preHandler"    # Landroid/os/Handler;

    .line 192
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->g:Landroid/os/Handler;

    .line 193
    return-void
.end method

.method public setPreRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "preRunnable"    # Ljava/lang/Runnable;

    .line 200
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/prerender/H5PreRenderPool;->h:Ljava/lang/Runnable;

    .line 201
    return-void
.end method
