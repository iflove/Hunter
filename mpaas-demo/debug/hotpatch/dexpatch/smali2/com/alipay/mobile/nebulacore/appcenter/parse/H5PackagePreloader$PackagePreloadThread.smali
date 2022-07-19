.class Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;
.super Ljava/lang/Thread;
.source "H5PackagePreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackagePreloadThread"
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

.field e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .line 113
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 114
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->b:Ljava/lang/String;

    .line 115
    return-void
.end method


# virtual methods
.method public preload(Ljava/lang/String;)V
    .locals 11
    .param p1, "appId"    # Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "do preload enter appId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5PackagePreloader"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    const/4 v2, 0x0

    move-object v3, v2

    .line 131
    .local v3, "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v3, v0

    if-eqz v0, :cond_8

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 134
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 135
    .local v0, "params":Landroid/os/Bundle;
    invoke-interface {v3, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->c:Ljava/lang/String;

    .line 136
    invoke-interface {v3, p1, v4}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 137
    if-nez v4, :cond_1

    .line 138
    return-void

    .line 141
    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->c:Ljava/lang/String;

    const-string v5, "appVersion"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v4, "appId"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->c:Ljava/lang/String;

    invoke-interface {v3, p1, v4}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getInstallPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    .line 144
    .local v5, "installPath":Ljava/lang/String;
    move-object v5, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 145
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "file://"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v2

    .line 146
    .local v6, "offlineHost":Ljava/lang/String;
    move-object v6, v4

    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 149
    :cond_2
    const-string/jumbo v4, "offlineHost"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    .end local v6    # "offlineHost":Ljava/lang/String;
    :cond_3
    move-object v6, v2

    .line 151
    :goto_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->c:Ljava/lang/String;

    invoke-interface {v3, p1, v4}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 152
    .local v6, "map":Ljava/util/Map;
    const-string v7, "host"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 153
    .local v2, "host":Ljava/lang/String;
    move-object v2, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 154
    invoke-virtual {v0, v7, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->initAppHost(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 158
    :cond_4
    const/4 v4, 0x0

    .line 159
    .local v4, "isNebulaApp":Z
    if-eqz v3, :cond_5

    invoke-interface {v3, p1}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isNebulaApp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 160
    const/4 v4, 0x1

    .line 162
    :cond_5
    const-string v7, "isNebulaApp"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 163
    const-string v7, "appType"

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    const-string v7, "fromPreload"

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 167
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 168
    .local v7, "content":Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0, v7}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackageParser;->parsePackage(Landroid/os/Bundle;Ljava/util/Map;)Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    move-result-object v9

    iput-object v9, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->d:Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    .line 170
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "parse appId "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " errorCode "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->d:Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    iget v10, v10, Lcom/alipay/mobile/nebulacore/api/H5ParseResult;->code:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->d:Lcom/alipay/mobile/nebulacore/api/H5ParseResult;

    iget v1, v1, Lcom/alipay/mobile/nebulacore/api/H5ParseResult;->code:I

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v8, 0x0

    :goto_1
    iput-boolean v8, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->a:Z

    .line 174
    if-eqz v8, :cond_7

    .line 175
    iput-object v7, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 177
    :cond_7
    return-void

    .line 132
    .end local v0    # "params":Landroid/os/Bundle;
    .end local v2    # "host":Ljava/lang/String;
    .end local v4    # "isNebulaApp":Z
    .end local v5    # "installPath":Ljava/lang/String;
    .end local v6    # "map":Ljava/util/Map;
    .end local v7    # "content":Ljava/util/concurrent/ConcurrentHashMap;
    :cond_8
    :goto_2
    return-void
.end method

.method public run()V
    .locals 3

    .line 119
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->preload(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    return-void

    .line 122
    :catchall_0
    move-exception v0

    .line 123
    .local v0, "thr":Ljava/lang/Throwable;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5PackagePreloader$PackagePreloadThread;->a:Z

    .line 124
    const-string v1, "H5PackagePreloader"

    const-string/jumbo v2, "preload package error!"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    .end local v0    # "thr":Ljava/lang/Throwable;
    return-void
.end method
