.class public Lcom/alipay/mobile/mpaasadapter/SchemeServiceImpl;
.super Lcom/alipay/mobile/framework/service/common/SchemeService;
.source "SchemeServiceImpl.java"


# instance fields
.field private a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/alipay/mobile/framework/service/common/SchemeService$SchemeHandler;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/alipay/mobile/framework/service/common/SchemeService$SchemeHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/common/SchemeService;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/mpaasadapter/SchemeServiceImpl;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    new-instance v0, Lcom/alipay/mobile/mpaasadapter/SchemeServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/mpaasadapter/SchemeServiceImpl$1;-><init>(Lcom/alipay/mobile/mpaasadapter/SchemeServiceImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/mpaasadapter/SchemeServiceImpl;->b:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public cleanTagId()V
    .locals 0

    .line 136
    return-void
.end method

.method public extractTagId(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .line 141
    return-void
.end method

.method public getAppId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 145
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 146
    const-string v1, "appid"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v0, "id":Ljava/lang/String;
    move-object v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const-string v1, "appId"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 150
    :cond_0
    return-object v0

    .line 152
    .end local v0    # "id":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getLastScheme()Ljava/lang/String;
    .locals 1

    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastTagId()Ljava/lang/String;
    .locals 1

    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParams(Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 182
    if-nez p1, :cond_0

    .line 183
    const/4 v0, 0x0

    return-object v0

    .line 185
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 186
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 187
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 189
    :cond_1
    return-object v0
.end method

.method public getSchemeParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTagByAppId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSchemeInvoke()Z
    .locals 1

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportScheme(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 194
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alipay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 197
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 203
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 208
    return-void
.end method

.method public process(Landroid/net/Uri;)I
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .line 56
    const/4 v0, 0x5

    if-nez p1, :cond_0

    .line 57
    return v0

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/mpaasadapter/SchemeServiceImpl;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/framework/service/common/SchemeService$SchemeHandler;

    .line 60
    .local v3, "handler":Lcom/alipay/mobile/framework/service/common/SchemeService$SchemeHandler;
    move-object v3, v4

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/alipay/mobile/framework/service/common/SchemeService$SchemeHandler;->canHandle(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 61
    invoke-interface {v3, p1}, Lcom/alipay/mobile/framework/service/common/SchemeService$SchemeHandler;->handle(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v5

    :cond_1
    return v0

    .line 63
    .end local v3    # "handler":Lcom/alipay/mobile/framework/service/common/SchemeService$SchemeHandler;
    :cond_2
    goto :goto_0

    .line 64
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v1, "scheme":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x1

    if-nez v0, :cond_c

    const-string v0, "alipay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_3

    .line 69
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 70
    .local v3, "paths":Ljava/util/List;
    move-object v3, v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v4, :cond_5

    goto/16 :goto_2

    .line 74
    :cond_5
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v6, "startapp"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 75
    return v4

    .line 78
    :cond_6
    const/4 v0, 0x0

    .line 79
    .local v0, "appId":Ljava/lang/String;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 80
    .local v4, "params":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v7, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 81
    .local v7, "key":Ljava/lang/String;
    const-string v8, "appid"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 82
    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 84
    :cond_7
    invoke-virtual {p1, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .end local v7    # "key":Ljava/lang/String;
    goto :goto_1

    .line 88
    :cond_8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 89
    const/4 v2, 0x2

    return v2

    .line 93
    :cond_9
    const/4 v6, 0x0

    .line 94
    .local v6, "sourceAppId":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v8

    .line 95
    .local v7, "mCtx":Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-interface {v8}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v8

    .line 96
    .local v2, "activityApplication":Lcom/alipay/mobile/framework/app/ActivityApplication;
    move-object v2, v8

    if-eqz v8, :cond_a

    .line 97
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 99
    :cond_a
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v8

    .line 100
    invoke-interface {v8, v6, v0, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v2    # "activityApplication":Lcom/alipay/mobile/framework/app/ActivityApplication;
    .end local v6    # "sourceAppId":Ljava/lang/String;
    .end local v7    # "mCtx":Lcom/alipay/mobile/framework/MicroApplicationContext;
    nop

    .line 105
    return v5

    .line 101
    :catch_0
    move-exception v2

    .line 102
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string v6, "SchemeServiceImpl"

    invoke-interface {v5, v6, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    const/4 v5, 0x4

    return v5

    .line 71
    .end local v0    # "appId":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "params":Landroid/os/Bundle;
    :cond_b
    :goto_2
    return v4

    .line 66
    .end local v3    # "paths":Ljava/util/List;
    :cond_c
    :goto_3
    return v4
.end method

.method public process(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "schemeInnerSource"    # Ljava/lang/String;

    .line 115
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/mpaasadapter/SchemeServiceImpl;->process(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public process(Landroid/net/Uri;Z)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "isOutside"    # Z

    .line 110
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/mpaasadapter/SchemeServiceImpl;->process(Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public registerSchemeHandler(Lcom/alipay/mobile/framework/service/common/SchemeService$SchemeHandler;)V
    .locals 2
    .param p1, "handler"    # Lcom/alipay/mobile/framework/service/common/SchemeService$SchemeHandler;

    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/mpaasadapter/SchemeServiceImpl;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mpaasadapter/SchemeServiceImpl;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/mpaasadapter/SchemeServiceImpl;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/alipay/mobile/mpaasadapter/SchemeServiceImpl;->b:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 44
    return-void
.end method

.method public saveSchemeParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setExternData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 163
    return-void
.end method

.method public setH5HoldListener(Lcom/alipay/mobile/framework/service/common/H5HoldListener;)V
    .locals 0
    .param p1, "h5HoldListener"    # Lcom/alipay/mobile/framework/service/common/H5HoldListener;

    .line 168
    return-void
.end method

.method public unRegisterSchemeHandler(Lcom/alipay/mobile/framework/service/common/SchemeService$SchemeHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/alipay/mobile/framework/service/common/SchemeService$SchemeHandler;

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/mpaasadapter/SchemeServiceImpl;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mpaasadapter/SchemeServiceImpl;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method
