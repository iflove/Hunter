.class public final Lcom/alipay/mobile/nebulaappproxy/utils/pkg/TinyAppPkgUtils;
.super Ljava/lang/Object;
.source "TinyAppPkgUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TinyAppPkgUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exists(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)Z
    .locals 8
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p1, "path"    # Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    if-eqz p0, :cond_b

    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 34
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {p1}, Lcom/alipay/mobile/nebulaappproxy/utils/pkg/TinyAppPkgUtils;->isPathInBlackList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    .line 38
    :cond_1
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "onlineHost"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "host":Ljava/lang/String;
    const-string v2, "http"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 41
    return v0

    .line 44
    :cond_2
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebulaappproxy/utils/pkg/TinyAppPkgUtils;->getAbsoluteUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "realPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getFromPkg realPath "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TinyAppPkgUtils"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 47
    return v0

    .line 49
    :cond_3
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 50
    return v0

    .line 53
    :cond_4
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v4

    .line 54
    .local v5, "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v5, v3

    if-nez v3, :cond_5

    .line 55
    return v0

    .line 58
    :cond_5
    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Session;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackagePool;->getPackage(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    move-result-object v3

    move-object v6, v4

    .line 59
    .local v6, "pkg":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    move-object v6, v3

    if-nez v3, :cond_6

    .line 60
    return v0

    .line 62
    :cond_6
    invoke-virtual {v6}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 63
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 64
    .local v4, "url":Ljava/lang/String;
    move-object v4, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 67
    invoke-static {v4, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 68
    const/4 v0, 0x1

    return v0

    .line 84
    .end local v4    # "url":Ljava/lang/String;
    :cond_8
    goto :goto_0

    .line 85
    :cond_9
    return v0

    .line 35
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "realPath":Ljava/lang/String;
    .end local v5    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    .end local v6    # "pkg":Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;
    :cond_a
    :goto_1
    return v0

    .line 32
    :cond_b
    :goto_2
    return v0
.end method

.method private static getAbsoluteUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 4
    .param p0, "oriUrl"    # Ljava/lang/String;
    .param p1, "startParams"    # Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 127
    .local v0, "finalUrl":Ljava/lang/String;
    const-string/jumbo v1, "url"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    .line 128
    .local v3, "entryUrl":Ljava/lang/String;
    move-object v3, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    invoke-static {v3, p0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getAbsoluteUrlV2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_0
    move-object v0, p0

    .line 133
    :goto_0
    return-object v0
.end method

.method public static getData(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)[B
    .locals 9
    .param p0, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p1, "path"    # Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 93
    :cond_0
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "onlineHost"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "host":Ljava/lang/String;
    const-string v2, "http"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 96
    return-object v0

    .line 99
    :cond_1
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebulaappproxy/utils/pkg/TinyAppPkgUtils;->getAbsoluteUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "realPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getFromPkg realPath "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TinyAppPkgUtils"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v3

    move-object v5, v0

    .line 102
    .local v5, "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v5, v3

    if-eqz v3, :cond_3

    .line 103
    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Session;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v3

    move-object v6, v0

    .line 104
    .local v6, "h5ContentProvider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    move-object v6, v3

    if-eqz v3, :cond_3

    .line 105
    const/4 v3, 0x1

    .line 106
    invoke-interface {v6, v2, v3}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;->getContent(Ljava/lang/String;Z)Landroid/webkit/WebResourceResponse;

    move-result-object v3

    move-object v7, v0

    .line 107
    .local v7, "webResourceResponse":Landroid/webkit/WebResourceResponse;
    move-object v7, v3

    if-eqz v3, :cond_3

    .line 108
    const/4 v3, 0x0

    .line 110
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v7}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v8

    .line 111
    move-object v3, v8

    if-eqz v8, :cond_2

    .line 112
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->inputToByte(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 112
    return-object v0

    .line 117
    :cond_2
    :goto_0
    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 118
    goto :goto_1

    .line 114
    :catchall_0
    move-exception v8

    .line 115
    .local v8, "throwable":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v4, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v8    # "throwable":Ljava/lang/Throwable;
    goto :goto_0

    .line 117
    :catchall_1
    move-exception v0

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 122
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "h5ContentProvider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    .end local v7    # "webResourceResponse":Landroid/webkit/WebResourceResponse;
    :cond_3
    :goto_1
    return-object v0

    .line 90
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "realPath":Ljava/lang/String;
    .end local v5    # "h5Session":Lcom/alipay/mobile/h5container/api/H5Session;
    :cond_4
    :goto_2
    return-object v0
.end method

.method private static isPathInBlackList(Ljava/lang/String;)Z
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .line 137
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 138
    return v1

    .line 140
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    const/4 v2, 0x0

    move-object v3, v2

    .line 141
    .local v3, "blackList":Lcom/alibaba/fastjson/JSONArray;
    move-object v3, v0

    const-string v4, "api_permission"

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 143
    :try_start_0
    const-string/jumbo v0, "ta_fs_tar_bl"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v2, "taFSTarBlackList":Ljava/lang/String;
    move-object v2, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 150
    .end local v2    # "taFSTarBlackList":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TinyAppPkgUtils"

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v0, "*"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 152
    return v2

    .line 154
    :cond_2
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 157
    :cond_3
    invoke-virtual {v3, p0}, Lcom/alibaba/fastjson/JSONArray;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 158
    return v2

    .line 160
    :cond_4
    return v1
.end method
