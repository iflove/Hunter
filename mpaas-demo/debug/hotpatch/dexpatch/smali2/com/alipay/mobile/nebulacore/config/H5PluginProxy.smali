.class public Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5PluginProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "H5PluginProxy"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Lcom/alipay/mobile/h5container/api/H5PluginManager;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/alipay/mobile/h5container/api/H5PluginManager;)V
    .locals 8
    .param p1, "infoList"    # Ljava/util/List;
    .param p2, "pluginManager"    # Lcom/alipay/mobile/h5container/api/H5PluginManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebula/config/H5PluginConfig;",
            ">;",
            "Lcom/alipay/mobile/h5container/api/H5PluginManager;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;->b:Lcom/alipay/mobile/h5container/api/H5PluginManager;

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;->a:Ljava/util/Map;

    .line 34
    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 38
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    .line 39
    .local v2, "info":Lcom/alipay/mobile/nebula/config/H5PluginConfig;
    move-object v2, v5

    iget-boolean v5, v5, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->lazyInit:Z

    if-eqz v5, :cond_4

    .line 40
    new-instance v5, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;-><init>(Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;)V

    .line 41
    .local v3, "proxy":Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;
    move-object v3, v5

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->registered:Z

    .line 42
    iput-object v1, v3, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->plugin:Lcom/alipay/mobile/h5container/api/H5Plugin;

    .line 43
    iput-object v2, v3, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->pluginInfo:Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    .line 45
    iget-object v5, v2, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->eventList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 46
    .local v4, "event":Ljava/lang/String;
    move-object v4, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 47
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;->a:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 48
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v6, "pluginProxyList":Ljava/util/List;
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;->a:Ljava/util/Map;

    invoke-interface {v7, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 51
    .end local v6    # "pluginProxyList":Ljava/util/List;
    :cond_1
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;->a:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 53
    .restart local v6    # "pluginProxyList":Ljava/util/List;
    :goto_2
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .end local v4    # "event":Ljava/lang/String;
    .end local v6    # "pluginProxyList":Ljava/util/List;
    :cond_2
    goto :goto_1

    .line 56
    .end local v3    # "proxy":Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;
    :cond_3
    goto :goto_0

    .line 57
    :cond_4
    invoke-direct {p0, v2, v1}, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;->a(Lcom/alipay/mobile/nebula/config/H5PluginConfig;Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alipay/mobile/h5container/api/H5Plugin;

    .line 59
    .end local v2    # "info":Lcom/alipay/mobile/nebula/config/H5PluginConfig;
    goto :goto_0

    .line 60
    :cond_5
    return-void

    .line 35
    :cond_6
    :goto_3
    return-void
.end method

.method private a(Lcom/alipay/mobile/nebula/config/H5PluginConfig;Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alipay/mobile/h5container/api/H5Plugin;
    .locals 12
    .param p1, "info"    # Lcom/alipay/mobile/nebula/config/H5PluginConfig;
    .param p2, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 159
    .local v0, "time":J
    const/4 v2, 0x0

    .line 161
    .local v2, "plugin":Lcom/alipay/mobile/h5container/api/H5Plugin;
    iget-object v3, p1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->bundleName:Ljava/lang/String;

    .line 162
    .local v3, "bundleName":Ljava/lang/String;
    iget-object v4, p1, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->className:Ljava/lang/String;

    .line 165
    .local v4, "clazzName":Ljava/lang/String;
    const-string v5, "H5PluginProxy"

    const/4 v6, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Event;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Event;->getId()Ljava/lang/String;

    move-result-object v7

    .line 166
    const-string/jumbo v8, "native_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 167
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 169
    const-string/jumbo v7, "nebula"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "in tinyProcess event "

    const-string v9, " "

    if-nez v7, :cond_1

    .line 170
    const-string v7, "liteprocess"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 171
    const-string/jumbo v7, "tinyappservice"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 172
    const-string/jumbo v7, "tinyappcommon"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 173
    const-string v7, "android-phone-wallet-wasp"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 174
    const-string v7, "h5worker"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 175
    const-string v7, "-aomp"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 176
    const-string v7, "H5BeeVideoPlayerPlugin"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is not to load class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 182
    invoke-static {v5, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-object v6

    .line 177
    :cond_1
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "  can to load class "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 177
    invoke-static {v5, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_2
    const/4 v7, 0x1

    invoke-static {v3, v4, v7}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getClass(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v7

    move-object v8, v6

    .line 193
    .local v8, "clazz":Ljava/lang/Class;
    move-object v8, v7

    if-nez v7, :cond_3

    .line 194
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "could not find plugin class "

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-object v6

    .line 199
    :cond_3
    :try_start_0
    const-class v7, Lcom/alipay/mobile/h5container/api/H5Plugin;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 200
    return-object v6

    .line 202
    :cond_4
    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/h5container/api/H5Plugin;

    .line 203
    move-object v2, v7

    if-nez v7, :cond_5

    .line 204
    return-object v6

    .line 206
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v0

    .line 207
    .local v9, "elapse":J
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "register ext plugin "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " elapse "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;->b:Lcom/alipay/mobile/h5container/api/H5PluginManager;

    invoke-interface {v7, v2}, Lcom/alipay/mobile/h5container/api/H5PluginManager;->register(Lcom/alipay/mobile/h5container/api/H5Plugin;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    nop

    .end local v9    # "elapse":J
    goto :goto_1

    .line 209
    :catchall_0
    move-exception v7

    .line 210
    .local v7, "t":Ljava/lang/Throwable;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "failed to initialize plugin "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    invoke-static {v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    const-string v9, "load plugin fail"

    invoke-virtual {v5, v9, v6}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    .line 212
    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    const-string v6, "className"

    invoke-virtual {v5, v6, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    const-string v6, "exception"

    invoke-virtual {v5, v6, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    .line 211
    invoke-static {v5}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 215
    .end local v7    # "t":Ljava/lang/Throwable;
    :goto_1
    return-object v2
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 11
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 117
    const-string v0, "H5PluginProxy"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 118
    const-string v2, "invalid event!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return v1

    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 123
    .local v4, "action":Ljava/lang/String;
    move-object v4, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    const-string v2, "invalid event name"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return v1

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;->a:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object v5, v3

    .line 128
    .local v5, "pluginProxyList":Ljava/util/List;
    move-object v5, v2

    if-eqz v2, :cond_8

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 131
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x1

    sub-int/2addr v2, v6

    .line 132
    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_7

    .line 133
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;

    .line 134
    .local v3, "proxy":Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;
    move-object v3, v7

    iget-object v7, v7, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->plugin:Lcom/alipay/mobile/h5container/api/H5Plugin;

    if-eqz v7, :cond_3

    iget-boolean v7, v3, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->registered:Z

    if-nez v7, :cond_6

    .line 139
    :cond_3
    iget-object v7, v3, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->plugin:Lcom/alipay/mobile/h5container/api/H5Plugin;

    if-nez v7, :cond_4

    .line 140
    iget-object v7, v3, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->pluginInfo:Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    invoke-direct {p0, v7, p1}, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;->a(Lcom/alipay/mobile/nebula/config/H5PluginConfig;Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alipay/mobile/h5container/api/H5Plugin;

    move-result-object v7

    iput-object v7, v3, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->plugin:Lcom/alipay/mobile/h5container/api/H5Plugin;

    .line 143
    :cond_4
    const/4 v7, 0x0

    .line 144
    .local v7, "result":Z
    iget-object v8, v3, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->plugin:Lcom/alipay/mobile/h5container/api/H5Plugin;

    if-eqz v8, :cond_5

    .line 145
    iget-object v8, v3, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->pluginInfo:Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    iget-object v8, v8, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->className:Ljava/lang/String;

    .line 146
    .local v8, "className":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "] handle pass "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v9, v3, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->plugin:Lcom/alipay/mobile/h5container/api/H5Plugin;

    invoke-interface {v9, p1, p2}, Lcom/alipay/mobile/h5container/api/H5Plugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v7

    .line 148
    iput-boolean v6, v3, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->registered:Z

    .line 150
    .end local v8    # "className":Ljava/lang/String;
    :cond_5
    if-eqz v7, :cond_6

    .line 151
    return v6

    .line 132
    .end local v3    # "proxy":Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;
    .end local v7    # "result":Z
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 154
    :cond_7
    return v1

    .line 129
    .end local v2    # "index":I
    :cond_8
    :goto_1
    return v1
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 11
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 76
    const-string v0, "H5PluginProxy"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 77
    const-string v2, "invalid event!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return v1

    .line 81
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    .line 82
    .local v4, "action":Ljava/lang/String;
    move-object v4, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    const-string v2, "invalid event name"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return v1

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;->a:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    move-object v5, v3

    .line 87
    .local v5, "pluginProxyList":Ljava/util/List;
    move-object v5, v2

    if-eqz v2, :cond_8

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 90
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x1

    sub-int/2addr v2, v6

    .line 91
    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_7

    .line 92
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;

    .line 93
    .local v3, "proxy":Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;
    move-object v3, v7

    iget-object v7, v7, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->plugin:Lcom/alipay/mobile/h5container/api/H5Plugin;

    if-eqz v7, :cond_3

    iget-boolean v7, v3, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->registered:Z

    if-nez v7, :cond_6

    .line 98
    :cond_3
    iget-object v7, v3, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->plugin:Lcom/alipay/mobile/h5container/api/H5Plugin;

    if-nez v7, :cond_4

    .line 99
    iget-object v7, v3, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->pluginInfo:Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    invoke-direct {p0, v7, p1}, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;->a(Lcom/alipay/mobile/nebula/config/H5PluginConfig;Lcom/alipay/mobile/h5container/api/H5Event;)Lcom/alipay/mobile/h5container/api/H5Plugin;

    move-result-object v7

    iput-object v7, v3, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->plugin:Lcom/alipay/mobile/h5container/api/H5Plugin;

    .line 101
    :cond_4
    const/4 v7, 0x0

    .line 102
    .local v7, "result":Z
    iget-object v8, v3, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->plugin:Lcom/alipay/mobile/h5container/api/H5Plugin;

    if-eqz v8, :cond_5

    .line 103
    iget-object v8, v3, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->pluginInfo:Lcom/alipay/mobile/nebula/config/H5PluginConfig;

    iget-object v8, v8, Lcom/alipay/mobile/nebula/config/H5PluginConfig;->className:Ljava/lang/String;

    .line 104
    .local v8, "className":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "] intercept pass "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v9, v3, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->plugin:Lcom/alipay/mobile/h5container/api/H5Plugin;

    invoke-interface {v9, p1, p2}, Lcom/alipay/mobile/h5container/api/H5Plugin;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z

    move-result v7

    .line 106
    iput-boolean v7, v3, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->registered:Z

    .line 108
    .end local v8    # "className":Ljava/lang/String;
    :cond_5
    if-eqz v7, :cond_6

    .line 109
    return v6

    .line 91
    .end local v3    # "proxy":Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;
    .end local v7    # "result":Z
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 112
    :cond_7
    return v1

    .line 88
    .end local v2    # "index":I
    :cond_8
    :goto_1
    return v1
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 2
    .param p1, "filter"    # Lcom/alipay/mobile/h5container/api/H5EventFilter;

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    .local v1, "apiName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 66
    .end local v1    # "apiName":Ljava/lang/String;
    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method public onRelease()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 72
    return-void
.end method
