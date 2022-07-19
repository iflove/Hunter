.class public Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;
.super Ljava/lang/Object;
.source "H5ContentProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
.implements Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ContentProviderImpl"


# instance fields
.field private A:Lcom/alibaba/fastjson/JSONObject;

.field private B:Z

.field private C:Z

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private volatile J:Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;

.field private K:Z

.field private L:Ljava/lang/Boolean;

.field private a:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alipay/mobile/nebulacore/web/H5InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/os/Bundle;

.field private p:Lcom/alipay/mobile/h5container/api/H5Page;

.field private q:Lcom/alipay/mobile/nebula/provider/H5ResProvider;

.field private r:Lcom/alipay/mobile/nebula/resourcehandler/H5ResourceHandler;

.field private s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Z

.field private x:Ljava/util/concurrent/ExecutorService;

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 7
    .param p1, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->i:Z

    .line 88
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->j:Z

    .line 90
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->k:Z

    .line 111
    const-string v1, "YES"

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->u:Ljava/lang/String;

    .line 112
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->v:Z

    .line 114
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->w:Z

    .line 116
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->x:Ljava/util/concurrent/ExecutorService;

    .line 120
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->y:Z

    .line 126
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->B:Z

    .line 130
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->C:Z

    .line 134
    const-string v4, "https://render.alipay.com/p/s/h5container/index"

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->E:Ljava/lang/String;

    .line 136
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->F:Z

    .line 137
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->G:Z

    .line 138
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->H:Z

    .line 147
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->K:Z

    .line 824
    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->L:Ljava/lang/Boolean;

    .line 150
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->o:Landroid/os/Bundle;

    .line 151
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->p:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 152
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->s:Ljava/util/HashMap;

    .line 153
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->o:Landroid/os/Bundle;

    const-string v4, "appId"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->d:Ljava/lang/String;

    .line 154
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->o:Landroid/os/Bundle;

    const-string v4, "sessionId"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->D:Ljava/lang/String;

    .line 155
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->m:Ljava/util/List;

    .line 156
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->n:Ljava/util/List;

    .line 157
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->l:Ljava/util/Map;

    .line 158
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->D:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackagePool;->getPackage(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    .line 159
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->o:Landroid/os/Bundle;

    const-string v4, "offlineHost"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->b:Ljava/lang/String;

    .line 160
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->o:Landroid/os/Bundle;

    const-string v4, "onlineHost"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->c:Ljava/lang/String;

    .line 161
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->o:Landroid/os/Bundle;

    const-string v4, "mapHost"

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->e:Z

    .line 162
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->o:Landroid/os/Bundle;

    const-string v4, "enableFallback"

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->f:Z

    .line 163
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->g:Z

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mapHost "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->e:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " enableFallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->f:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5ContentProviderImpl"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "appId "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->d:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " offlineHost "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " sessionId:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->D:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "onlineHost "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->o:Landroid/os/Bundle;

    const-string v4, "cdnBaseUrl"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->h:Ljava/lang/String;

    .line 168
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->o:Landroid/os/Bundle;

    const-string v4, "appVersion"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->t:Ljava/lang/String;

    .line 169
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v4, Lcom/alipay/mobile/nebula/provider/H5ResProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5ResProvider;

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->q:Lcom/alipay/mobile/nebula/provider/H5ResProvider;

    .line 170
    nop

    .line 171
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v2

    const-class v4, Lcom/alipay/mobile/nebula/resourcehandler/H5ResourceHandler;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/resourcehandler/H5ResourceHandler;

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->r:Lcom/alipay/mobile/nebula/resourcehandler/H5ResourceHandler;

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, " cdnHost "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->h:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " version:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->t:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v2, "h5_resRedirect"

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->A:Lcom/alibaba/fastjson/JSONObject;

    .line 174
    const-string v2, "h5_mainUrlDegrade"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->G:Z

    .line 175
    const-string v2, "h5_disableResPkgIn4"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "yes"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->I:Z

    .line 176
    const-string v2, "h5_tryConcatOnlineHost"

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "tryConcatOnlineHostConfig":Ljava/lang/String;
    const-string v3, "NO"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->B:Z

    .line 181
    :cond_0
    const-string v4, "h5_enableNetworkFallbackAsync"

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 182
    .local v4, "fallbackAsyncSwitch":Lcom/alibaba/fastjson/JSONObject;
    const-string v5, "enable"

    invoke-static {v4, v5, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->k:Z

    .line 183
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->o:Landroid/os/Bundle;

    const-string v6, "isNebulaApp"

    invoke-static {v5, v6, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->C:Z

    .line 185
    const-string v5, "h5_resManifest"

    invoke-static {v5}, Lcom/alipay/mobile/nebula/wallet/H5WalletWrapper;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 186
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 187
    .local v5, "configObj":Lcom/alibaba/fastjson/JSONObject;
    const-string v6, "matchHeaders"

    invoke-static {v5, v6, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 188
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->H:Z

    .line 191
    :cond_1
    const-string v0, "h5_enableAlipayNumFont"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->K:Z

    .line 192
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->o:Landroid/os/Bundle;

    return-object v0
.end method

.method private static a(I)Landroid/webkit/WebResourceResponse;
    .locals 4
    .param p0, "pageId"    # I

    .line 986
    const-string v0, "text/html"

    .line 987
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 988
    .local v1, "ips":Ljava/io/InputStream;
    new-instance v2, Landroid/webkit/WebResourceResponse;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v2
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "inputStream"    # Ljava/io/InputStream;

    .line 1006
    const/4 v0, 0x0

    .line 1007
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1008
    if-nez p1, :cond_0

    .line 1009
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1011
    :cond_0
    if-eqz p1, :cond_1

    .line 1012
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1015
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[buildContent] url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mimeType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5ContentProviderImpl"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    :cond_2
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->v:Z

    if-eqz v1, :cond_3

    .line 1019
    const-string v1, "YES"

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->c(Ljava/lang/String;)V

    .line 1022
    :cond_3
    new-instance v1, Landroid/webkit/WebResourceResponse;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2, p3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 1023
    .local v1, "resp":Landroid/webkit/WebResourceResponse;
    iget-boolean v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->H:Z

    if-eqz v2, :cond_4

    .line 1024
    invoke-static {p2, v1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Ljava/lang/String;Landroid/webkit/WebResourceResponse;)V

    .line 1026
    :cond_4
    return-object v1
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pureUrl"    # Ljava/lang/String;
    .param p3, "onlineUrl"    # Ljava/lang/String;

    .line 712
    const-string v0, "H5_AL_PAGE_RES_REDIRECT"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 713
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 714
    invoke-virtual {v0}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    const-string v1, "targetUrl"

    invoke-virtual {v0, v1, p3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v0

    .line 712
    invoke-static {v0}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 716
    new-instance v0, Lcom/alipay/mobile/nebulacore/web/H5InputStream;

    invoke-direct {v0, p3, p0}, Lcom/alipay/mobile/nebulacore/web/H5InputStream;-><init>(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;)V

    .line 717
    .local v0, "is":Lcom/alipay/mobile/nebulacore/web/H5InputStream;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "load response from tinyRes online "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5ContentProviderImpl"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    return-object v1
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/io/InputStream;

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/alipay/mobile/nebulacore/web/H5InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Landroid/webkit/WebResourceResponse;
    .locals 9
    .param p1, "is"    # Lcom/alipay/mobile/nebulacore/web/H5InputStream;
    .param p2, "pureUrl"    # Ljava/lang/String;
    .param p3, "fallbackUrl"    # Ljava/lang/String;
    .param p4, "originUrl"    # Ljava/lang/String;
    .param p5, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 723
    iget-object v0, p1, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->inputToByte(Ljava/io/InputStream;)[B

    move-result-object v0

    const/4 v1, 0x0

    .line 725
    .local v1, "bytes":[B
    move-object v1, v0

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-virtual {v0, p2, v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    :cond_0
    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p5

    move-object v5, p4

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Lcom/alipay/mobile/nebulacore/web/H5InputStream;Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 732
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    goto :goto_0

    .line 733
    :catchall_0
    move-exception v0

    .line 734
    .local v0, "throwable":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getFallbackStream "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "H5ContentProviderImpl"

    invoke-static {v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 738
    .local v0, "stream":Ljava/io/InputStream;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->n:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 739
    invoke-direct {p0, p3, v0}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    return-object v2
.end method

.method private a(Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .line 1049
    const/4 v0, 0x0

    .line 1050
    .local v0, "mimeType":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1051
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1052
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1053
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mimeType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5ContentProviderImpl"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    :cond_0
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->v:Z

    if-eqz v1, :cond_1

    .line 1057
    const-string v1, "YES"

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->c(Ljava/lang/String;)V

    .line 1060
    :cond_1
    new-instance v1, Landroid/webkit/WebResourceResponse;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2, p2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v1
.end method

.method private a()Ljava/lang/String;
    .locals 6

    .line 644
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    const-class v0, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    .line 646
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;

    const/4 v1, 0x0

    move-object v2, v1

    .line 647
    .local v2, "h5AppCenterPresetProvider":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    move-object v2, v0

    if-eqz v0, :cond_0

    .line 648
    invoke-interface {v2}, Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;->getTinyCommonApp()Ljava/lang/String;

    move-result-object v0

    .line 649
    .local v0, "tinyCommonApp":Ljava/lang/String;
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 650
    .local v1, "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    move-object v1, v3

    if-eqz v3, :cond_0

    .line 651
    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 652
    .local v3, "version":Ljava/lang/String;
    invoke-interface {v1, v0, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->getH5AppCdnBaseUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->z:Ljava/lang/String;

    .line 653
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getTinyResFallbackUrl "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->z:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "H5ContentProviderImpl"

    invoke-static {v5, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    .end local v0    # "tinyCommonApp":Ljava/lang/String;
    .end local v1    # "appProvider":Lcom/alipay/mobile/nebula/provider/H5AppProvider;
    .end local v2    # "h5AppCenterPresetProvider":Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;
    .end local v3    # "version":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->z:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .line 662
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->A:Lcom/alibaba/fastjson/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->A:Lcom/alibaba/fastjson/JSONObject;

    const-string v2, "switch"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, "switchValue":Ljava/lang/String;
    const-string v2, "no"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 667
    return-object v1

    .line 669
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->A:Lcom/alibaba/fastjson/JSONObject;

    const-string v3, "content"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    move-object v3, v1

    .line 670
    .local v3, "urlJson":Lcom/alibaba/fastjson/JSONObject;
    move-object v3, v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 671
    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v1

    .line 672
    .local v4, "online":Ljava/lang/String;
    move-object v4, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 673
    return-object v4

    .line 676
    .end local v4    # "online":Ljava/lang/String;
    :cond_2
    return-object v1

    .line 663
    .end local v0    # "switchValue":Ljava/lang/String;
    .end local v3    # "urlJson":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    :goto_0
    return-object v1
.end method

.method private a(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1129
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$6;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$6;-><init>(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1145
    return-void
.end method

.method private static a(Lcom/alipay/mobile/h5container/api/H5Page;[BLjava/lang/String;)V
    .locals 4
    .param p0, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p1, "data"    # [B
    .param p2, "pureUrl"    # Ljava/lang/String;

    .line 631
    const-string v0, "https://appx/af-appx.min.js"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 633
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x64

    const-string v3, "UTF-8"

    invoke-direct {v0, p1, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 634
    const-string v1, "\\r?\\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, "lines":[Ljava/lang/String;
    invoke-interface {p0}, Lcom/alipay/mobile/h5container/api/H5Page;->getSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v1

    const/4 v2, 0x0

    .line 636
    .local v2, "sess":Lcom/alipay/mobile/h5container/api/H5Session;
    move-object v2, v1

    if-eqz v1, :cond_0

    .line 637
    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/alipay/mobile/h5container/api/H5Session;->setAppxVersionInRender(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    .end local v0    # "lines":[Ljava/lang/String;
    .end local v2    # "sess":Lcom/alipay/mobile/h5container/api/H5Session;
    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 641
    :cond_1
    return-void
.end method

.method private a(Lcom/alipay/mobile/nebulacore/web/H5InputStream;Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "is"    # Lcom/alipay/mobile/nebulacore/web/H5InputStream;
    .param p2, "page"    # Lcom/alipay/mobile/h5container/api/H5Page;
    .param p3, "originUrl"    # Ljava/lang/String;
    .param p4, "pureUrl"    # Ljava/lang/String;
    .param p5, "fallbackUrl"    # Ljava/lang/String;
    .param p6, "isAsync"    # Z

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "load response from fallback fallbackUrl: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pureUrl :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", originUrl :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isAsync: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, "fallbackLog":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", statusCode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->statusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "H5ContentProviderImpl"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->v:Z

    if-eqz v1, :cond_1

    .line 751
    const-string v1, "NO"

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->c(Ljava/lang/String;)V

    .line 754
    :cond_1
    sget-boolean v1, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 755
    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 756
    const-string v1, "pageLoad|loadFrom"

    const-string v3, "fallback"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 760
    :cond_2
    const-string v1, "fallbackType"

    const/4 v3, 0x1

    if-eqz p6, :cond_3

    .line 761
    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->i:Z

    if-nez v4, :cond_4

    .line 762
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->i:Z

    .line 763
    if-eqz p2, :cond_4

    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 764
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v1, v4}, Lcom/alipay/mobile/h5container/api/H5PageData;->putIntExtra(Ljava/lang/String;I)V

    goto :goto_1

    .line 768
    :cond_3
    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->j:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->i:Z

    if-nez v4, :cond_4

    .line 769
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->j:Z

    .line 770
    if-eqz p2, :cond_4

    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 771
    invoke-interface {p2}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->putIntExtra(Ljava/lang/String;I)V

    .line 777
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->o:Landroid/os/Bundle;

    const-string v3, "url"

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 778
    .local v1, "startUpUrl":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fallback showProgress start_up_url is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pureUrl is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    invoke-static {v1, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->p:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v3, :cond_5

    .line 781
    const-string v3, "fallback showProgress"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->p:Lcom/alipay/mobile/h5container/api/H5Page;

    const/4 v3, 0x0

    const-string v4, "showProgressBar_fallback"

    invoke-interface {v2, v4, v3}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 784
    :cond_5
    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/webkit/WebResourceResponse;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "resp"    # Landroid/webkit/WebResourceResponse;

    .line 1030
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->getHeader(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1031
    .local v2, "headerMap":Ljava/util/Map;
    move-object v2, v0

    if-eqz v0, :cond_1

    .line 1033
    const-string v0, "Content-Type"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1035
    .local v1, "contentType":Ljava/lang/String;
    move-object v1, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1036
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getMimeTypeFromContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "mimeType":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1037
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "set content-type "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from header.json: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "H5ContentProviderImpl"

    invoke-static {v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    invoke-virtual {p1, v4}, Landroid/webkit/WebResourceResponse;->setMimeType(Ljava/lang/String;)V

    .line 1040
    .end local v4    # "mimeType":Ljava/lang/String;
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_1

    .line 1043
    invoke-virtual {p1, v2}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    .line 1046
    .end local v1    # "contentType":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5Page;)Z
    .locals 3
    .param p1, "h5Page"    # Lcom/alipay/mobile/h5container/api/H5Page;

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "disableResPkg switch: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->I:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5ContentProviderImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->I:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 571
    invoke-interface {p1}, Lcom/alipay/mobile/h5container/api/H5Page;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/nebula/webview/WebViewType;->SYSTEM_BUILD_IN:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v0, v2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1

    .line 574
    :cond_1
    return v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6
    .param p1, "pureUrl"    # Ljava/lang/String;
    .param p2, "originUrl"    # Ljava/lang/String;

    .line 535
    const-string v0, "index.html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "index.html"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 536
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 537
    return-object v1

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->J:Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;

    if-nez v0, :cond_3

    .line 540
    monitor-enter p0

    .line 541
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->J:Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;

    if-nez v0, :cond_2

    .line 542
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;

    .line 543
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->J:Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;

    .line 545
    :cond_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 548
    :cond_3
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->J:Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;

    if-eqz v0, :cond_4

    .line 549
    invoke-static {}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getInstance()Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebula/startParam/H5StartParamManager;->getHomePage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "homePagePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->J:Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->d:Ljava/lang/String;

    invoke-interface {v2, v3, p2, v0}, Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;->getSnapshotData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    move-object v3, v1

    .line 551
    .local v3, "snapshotData":[B
    move-object v3, v2

    if-eqz v2, :cond_4

    .line 553
    const-string v2, "package_prepare"

    const-string v4, "H5ContentProviderImpl.getSnapshotIndexForTiny()"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->handleTinyAppKeyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-string v2, "H5ContentProviderImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "snapshot first page using local snapshotFile success! appid:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 555
    return-object v3

    .line 560
    .end local v0    # "homePagePath":Ljava/lang/String;
    .end local v3    # "snapshotData":[B
    :cond_4
    goto :goto_2

    .line 558
    :catchall_1
    move-exception v0

    .line 559
    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "H5ContentProviderImpl"

    const-string v3, "getSnapShotIndexForTiny error!"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 561
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_2
    return-object v1
.end method

.method private static a([BLjava/lang/String;)[B
    .locals 4
    .param p0, "data"    # [B
    .param p1, "pureUrl"    # Ljava/lang/String;

    .line 579
    const/4 v0, 0x0

    .line 580
    .local v0, "combineJS":Ljava/lang/String;
    const-string v1, "https://appx/af-appx.worker.min.js"

    if-eqz p0, :cond_0

    sget-object v2, Lcom/alipay/mobile/h5container/api/H5Flag;->sInjectDebugConsoleJS:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 581
    const-string v2, "h5_enableInjectDebugConsole"

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "yes"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/alipay/mobile/nebula/R$raw;->h5_debug_console_sw:I

    invoke-static {v3}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 586
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 587
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5DevDebugProvider;

    .line 589
    if-eqz v2, :cond_3

    const-string v2, "https://appx/af-appx.min.js"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 590
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/alipay/mobile/nebula/R$raw;->h5_bugme_hookappx:I

    invoke-static {v2}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_2
    move-object v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 592
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object p0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method private a([BLjava/lang/String;Z)[B
    .locals 9
    .param p1, "data"    # [B
    .param p2, "pureUrl"    # Ljava/lang/String;
    .param p3, "isMainDoc"    # Z

    .line 596
    const/4 v0, 0x0

    .line 597
    .local v0, "combineJS":Ljava/lang/String;
    if-nez p3, :cond_0

    const-string v1, "index.worker.js"

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    if-eqz p1, :cond_3

    .line 598
    const-string v1, "h5_enableReplaceBugmeScript"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "no"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->p:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v1, :cond_3

    .line 599
    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->p:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5PageData;->useBugmeNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 601
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    .line 602
    const-string v1, "https://bugme.cfg"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->getContent(Ljava/lang/String;Z)[B

    move-result-object v1

    const/4 v3, 0x0

    .line 603
    .local v3, "bugCfg":[B
    move-object v3, v1

    if-eqz v1, :cond_2

    .line 604
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 605
    .local v1, "bugmeStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ".__BUGME_ENV__ =\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->p:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/api/H5PageData;->getBugmeEnv()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 606
    .local v4, "bugmeScript":Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 607
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "window"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    const-string v7, "bugmeR"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto :goto_0

    .line 609
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "self"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    const-string v7, "bugmeW"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 611
    :goto_0
    const-string v5, "/*BUGME_START*/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 612
    .local v5, "indexStart":I
    const-string v6, "/*BUGME_END*/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 613
    .local v6, "indexEnd":I
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 614
    .local v2, "combineA":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 615
    .local v7, "combineB":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v8

    .line 619
    .end local v1    # "bugmeStr":Ljava/lang/String;
    .end local v2    # "combineA":Ljava/lang/String;
    .end local v3    # "bugCfg":[B
    .end local v4    # "bugmeScript":Ljava/lang/String;
    .end local v5    # "indexStart":I
    .end local v6    # "indexEnd":I
    .end local v7    # "combineB":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 617
    :catchall_0
    move-exception v1

    .line 618
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "H5ContentProviderImpl"

    const-string v3, "ide replace bugme script failed."

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 621
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_3
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object p1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4
    .param p0, "mimeType"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .line 992
    if-nez p1, :cond_0

    .line 993
    const-string p1, ""

    .line 995
    :cond_0
    const/4 v0, 0x0

    .line 997
    .local v0, "data":[B
    :try_start_0
    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1000
    goto :goto_0

    .line 998
    :catch_0
    move-exception v1

    .line 999
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "H5ContentProviderImpl"

    const-string v3, "failed to get byte array"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1001
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1002
    .local v1, "ips":Ljava/io/InputStream;
    new-instance v2, Landroid/webkit/WebResourceResponse;

    const-string v3, "UTF-8"

    invoke-direct {v2, p0, v3, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v2
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->d:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .line 940
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->b:Ljava/lang/String;

    .line 941
    .local v0, "host":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "H5ContentProviderImpl"

    const/4 v3, 0x0

    if-nez v1, :cond_8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 946
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 947
    const-string v1, "[getFallback] url not starts with host"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    return-object v3

    .line 951
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->h:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->h:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 952
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->h:Ljava/lang/String;

    .line 955
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 956
    .local v1, "finalUrl":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[getFallback] fallback final url "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->p:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v2, :cond_7

    .line 959
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getFallbackReason()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    const-string v2, "contentPackageIsNull"

    .line 960
    .local v2, "fallbackReason":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getUnAvailableReason()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    const-string v4, ""

    .line 961
    .local v4, "unAvailableReason":Ljava/lang/String;
    :goto_2
    sget-object v5, Lcom/alipay/mobile/h5container/api/H5PageLoader;->mainUrl:Ljava/lang/String;

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "fallbackUrl"

    if-eqz v5, :cond_6

    .line 962
    sget-object v5, Lcom/alipay/mobile/h5container/api/H5Plugin$CommonEvents;->H5_AL_SESSION_FALLBACK:Ljava/lang/String;

    invoke-static {v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    .line 963
    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->param1()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    const-string v7, "fallbackReason"

    invoke-virtual {v5, v7, v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    const-string v7, "unAvailableReason"

    invoke-virtual {v5, v7, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    iget-boolean v7, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->C:Z

    .line 964
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "isNebulaApp"

    invoke-virtual {v5, v8, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "inTinyProcess"

    invoke-virtual {v5, v8, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    sget-wide v7, Lcom/alipay/mobile/h5container/api/H5PageData;->sAppDownloadDelaySeconds:J

    .line 965
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "downloadDelaySeconds"

    invoke-virtual {v5, v8, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    .line 966
    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->p:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v7}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    .line 967
    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    invoke-virtual {v5, v6, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    .line 968
    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->p:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v7}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    .line 970
    .local v5, "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;->newH5MonitorLogConfig()Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

    move-result-object v7

    .line 971
    const-string v8, "webapp"

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;->setLogType(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

    move-result-object v7

    .line 972
    const-string v8, "H-MM"

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;->setLogHeader(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;

    move-result-object v7

    .line 973
    .local v7, "logConfig":Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;
    invoke-static {v5, v7}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->monitorLog(Lcom/alipay/mobile/nebula/log/H5LogData;Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;)V

    .line 975
    .end local v5    # "logData":Lcom/alipay/mobile/nebula/log/H5LogData;
    .end local v7    # "logConfig":Lcom/alipay/mobile/nebula/log/H5MonitorLogConfig;
    :cond_6
    const-string v5, "H5_AL_SESSION_HTTPPROXY_FAIL"

    invoke-static {v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    .line 976
    invoke-virtual {v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->param2()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v5

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->p:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v7}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/h5container/api/H5PageData;->getPageInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 977
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    invoke-virtual {v3, v6, v1}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 978
    invoke-virtual {v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->p:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v5}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lcom/alipay/mobile/h5container/api/H5PageData;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v3

    .line 975
    invoke-static {v3}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 981
    .end local v2    # "fallbackReason":Ljava/lang/String;
    .end local v4    # "unAvailableReason":Ljava/lang/String;
    :cond_7
    return-object v1

    .line 942
    .end local v1    # "finalUrl":Ljava/lang/String;
    :cond_8
    :goto_3
    const-string v1, "[getFallback] cdn url or install host empty!"

    invoke-static {v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    return-object v3
.end method

.method private b()Z
    .locals 2

    .line 827
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->L:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 828
    const-string v0, "h5_enableUseGetContentOnUi"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 829
    .local v0, "value":Ljava/lang/String;
    const-string v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 830
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->L:Ljava/lang/Boolean;

    goto :goto_0

    .line 832
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->L:Ljava/lang/Boolean;

    .line 835
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->L:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;)Lcom/alipay/mobile/h5container/api/H5Page;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->p:Lcom/alipay/mobile/h5container/api/H5Page;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 1
    .param p1, "isLocal"    # Ljava/lang/String;

    .line 1174
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->u:Ljava/lang/String;

    .line 1175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->v:Z

    .line 1176
    return-void
.end method


# virtual methods
.method public clearInputException()V
    .locals 1

    .line 1082
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->F:Z

    .line 1083
    return-void
.end method

.method public disconnect()V
    .locals 6

    .line 1092
    :try_start_0
    const-string v0, "H5ContentProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "disconnect connList "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->m:Ljava/util/List;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1094
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1095
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebulacore/web/H5InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1097
    .local v2, "his":Lcom/alipay/mobile/nebulacore/web/H5InputStream;
    if-eqz v2, :cond_0

    .line 1098
    :try_start_2
    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 1100
    :catch_0
    move-exception v3

    .line 1101
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "H5ContentProviderImpl"

    const-string v5, "close connection exception."

    invoke-static {v4, v5, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1102
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    nop

    .line 1094
    .end local v2    # "his":Lcom/alipay/mobile/nebulacore/web/H5InputStream;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1104
    .end local v1    # "index":I
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1105
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1108
    :try_start_4
    const-string v0, "H5ContentProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "disconnect inputStreamList "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->n:Ljava/util/List;

    monitor-enter v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1111
    :try_start_5
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1113
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1116
    goto :goto_3

    .line 1114
    :catch_1
    move-exception v3

    .line 1115
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_7
    const-string v4, "H5ContentProviderImpl"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1117
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 1118
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1119
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 1105
    :catchall_1
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 1122
    :catch_2
    move-exception v0

    .line 1123
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "H5ContentProviderImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1126
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method

.method public getContent(Landroid/net/Uri;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;ZZZ)Landroid/webkit/WebResourceResponse;
    .locals 8

    .line 202
    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isMain()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not invoke on ui thread!!!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 207
    :cond_1
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 208
    const-string p1, "H5ContentProviderImpl"

    const-string p2, "invalid url parameter"

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-direct {p0, v0, v0}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 212
    :cond_2
    const-string v1, "file://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "http://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "https://"

    .line 213
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 214
    const-string p1, "H5ContentProviderImpl"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "skip load resource for "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-object v0

    .line 218
    :cond_3
    nop

    .line 222
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->purifyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 224
    sget-boolean v1, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 226
    const-string v1, "https://appx"

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "h5_appx_host"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getStringConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 228
    const-string p2, "af-appx.min.js"

    invoke-virtual {v5, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 229
    nop

    .line 230
    new-instance p2, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;

    invoke-direct {p2, p0, v1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$1;-><init>(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 237
    :cond_4
    const-string p2, "https://appx"

    invoke-virtual {v5, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 238
    const-string p3, "H5ContentProviderImpl"

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "[debug] appx replacedUrl: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-direct {p0, p1, v5, p2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 243
    :cond_5
    const-string v1, "https://appx"

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 244
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;

    .line 245
    if-eqz v1, :cond_7

    .line 246
    const-string v2, "https://appx/af-appx.min.js"

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 247
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->p:Lcom/alipay/mobile/h5container/api/H5Page;

    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_JS_RenderFrameworkStart:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    goto :goto_1

    .line 248
    :cond_6
    const-string v2, "https://appx/af-appx.worker.min.js"

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 249
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->p:Lcom/alipay/mobile/h5container/api/H5Page;

    sget-object v3, Lcom/alipay/mobile/nebulax/kernel/track/TrackId;->Stub_JS_WorkerFrameworkStart:Lcom/alipay/mobile/nebulax/kernel/track/TrackId;

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/nebula/provider/H5EventTrackerProvider;->stub(Lcom/alipay/mobile/nebulax/kernel/node/Node;Lcom/alipay/mobile/nebulax/kernel/track/TrackId;)Lcom/alipay/mobile/nebulax/kernel/track/Event;

    .line 255
    :cond_7
    :goto_1
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->y:Z

    if-eqz v1, :cond_8

    const-string v1, "https://appx"

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 256
    const-string v1, "H5ContentProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hasTinyGoOnline true use tinyRes again "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 258
    const-string p2, "https://"

    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 259
    invoke-direct {p0, p1, v5, p2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 264
    :cond_8
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->K:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    .line 265
    if-nez p1, :cond_9

    const/4 v1, 0x0

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "https://resource/alipaynumber-regular.ttf"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 266
    :goto_2
    if-eqz v1, :cond_b

    .line 267
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AlipayFontProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5AlipayFontProvider;

    .line 268
    if-eqz v1, :cond_b

    .line 269
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/provider/H5AlipayFontProvider;->getAlipayNumberTtfPath()Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_b

    .line 272
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 273
    if-eqz v3, :cond_a

    .line 274
    new-instance v4, Landroid/webkit/WebResourceResponse;

    const-string v6, "application/font-sfnt"

    const-string v7, "UTF-8"

    invoke-direct {v4, v6, v7, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 276
    const-string v3, "H5ContentProviderImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isAlipayNumFontUrl true use local font "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 277
    return-object v4

    .line 281
    :cond_a
    goto :goto_3

    .line 279
    :catch_0
    move-exception v1

    .line 280
    :try_start_2
    const-string v3, "H5ContentProviderImpl"

    const-string v4, "load local font resource exception "

    invoke-static {v3, v4, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 286
    :cond_b
    :goto_3
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    const/4 v3, 0x1

    if-eqz v1, :cond_11

    .line 287
    invoke-virtual {v1, v5}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->get(Ljava/lang/String;)[B

    move-result-object v1

    .line 289
    iget-boolean v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->B:Z

    if-eqz v4, :cond_c

    if-nez v1, :cond_c

    if-eqz p1, :cond_c

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->c:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 290
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->get(Ljava/lang/String;)[B

    move-result-object v1

    .line 294
    :cond_c
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->o:Landroid/os/Bundle;

    const-string v6, "isTinyApp"

    invoke-static {v4, v6, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 295
    invoke-direct {p0, v1, v5, p6}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a([BLjava/lang/String;Z)[B

    move-result-object v1

    .line 298
    invoke-direct {p0, v5, p2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 299
    if-eqz v4, :cond_e

    .line 300
    nop

    .line 301
    if-eqz p3, :cond_d

    invoke-interface {p3}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 302
    invoke-interface {p3}, Lcom/alipay/mobile/h5container/api/H5Page;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/h5container/api/H5PageData;->setUseSnapshot(Z)V

    .line 307
    :cond_d
    move-object v1, v4

    :cond_e
    if-eqz v1, :cond_11

    .line 308
    new-instance p3, Ljava/io/ByteArrayInputStream;

    invoke-direct {p3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 309
    sget-object p4, Lcom/alipay/mobile/h5container/api/H5PageLoader;->mainUrl:Ljava/lang/String;

    invoke-static {p2, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_f

    .line 310
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance p4, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$2;

    invoke-direct {p4, p0, v5}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$2;-><init>(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;Ljava/lang/String;)V

    invoke-interface {p2, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 327
    :cond_f
    iget-boolean p4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->w:Z

    if-nez p4, :cond_10

    .line 328
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->w:Z

    .line 329
    invoke-static {}, Lcom/alipay/mobile/nebula/wallet/H5ThreadPoolFactory;->getSingleThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object p4

    new-instance p5, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$3;

    invoke-direct {p5, p0, p2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$3;-><init>(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;Ljava/lang/String;)V

    invoke-interface {p4, p5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 342
    :cond_10
    :goto_4
    const-string p2, "H5ContentProviderImpl"

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "[main_pkg] load response from "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->d:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " version:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    iget-object p5, p5, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->currentUseVersion:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " size:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p5, v1

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " package "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-direct {p0, p1, v5, p3}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 352
    :cond_11
    nop

    .line 353
    if-eqz p3, :cond_12

    .line 354
    invoke-direct {p0, p3}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Lcom/alipay/mobile/h5container/api/H5Page;)Z

    move-result v1

    goto :goto_5

    .line 353
    :cond_12
    const/4 v1, 0x0

    .line 356
    :goto_5
    if-nez v1, :cond_16

    .line 357
    invoke-static {v5, p6}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->getContent(Ljava/lang/String;Z)[B

    move-result-object v1

    .line 358
    invoke-static {v1, v5}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a([BLjava/lang/String;)[B

    move-result-object v1

    .line 359
    if-eqz v1, :cond_13

    .line 360
    invoke-static {p3, v1, v5}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Lcom/alipay/mobile/h5container/api/H5Page;[BLjava/lang/String;)V

    .line 361
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Landroid/net/Uri;)V

    .line 362
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 363
    invoke-direct {p0, p1, v5, p2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 367
    :cond_13
    if-eqz p6, :cond_15

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->G:Z

    if-eqz v1, :cond_14

    goto :goto_6

    .line 376
    :cond_14
    const-string v1, "H5ContentProviderImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "[getContent] not use degrade res for url: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " isMainDoc: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p6, " mainUrlCanDegrade: "

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p6, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->G:Z

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {v1, p6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 368
    :cond_15
    :goto_6
    invoke-static {}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->getInstance()Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;

    move-result-object p6

    invoke-virtual {p6, v5}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalDegradePkg;->getContent(Ljava/lang/String;)[B

    move-result-object p6

    .line 369
    invoke-static {p6, v5}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a([BLjava/lang/String;)[B

    move-result-object p6

    .line 370
    if-eqz p6, :cond_17

    .line 371
    invoke-static {p3, p6, v5}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Lcom/alipay/mobile/h5container/api/H5Page;[BLjava/lang/String;)V

    .line 372
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 373
    invoke-direct {p0, p1, v5, p2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 381
    :cond_16
    const-string p6, "H5ContentProviderImpl"

    const-string v1, "disable respkg by SystemWebView & 4.x"

    invoke-static {p6, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_17
    :goto_7
    iget-object p6, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->s:Ljava/util/HashMap;

    invoke-virtual {p6, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    .line 385
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 386
    const-string p1, "H5ContentProviderImpl"

    const-string p2, "load response from map local."

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string p1, "text/html"

    invoke-static {p1, p6}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 391
    :cond_18
    const-string p6, "file://"

    invoke-virtual {v5, p6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_19

    iget-object p6, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->b:Ljava/lang/String;

    invoke-virtual {v5, p6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p6

    if-nez p6, :cond_19

    const/4 p6, 0x1

    goto :goto_8

    :cond_19
    const/4 p6, 0x0

    .line 392
    :goto_8
    const-string v1, "https://alipay.com/h5container/un_safe.html"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    if-eqz p6, :cond_1a

    goto/16 :goto_e

    .line 397
    :cond_1a
    const-string p6, "https://alipay.com/h5container/redirect_link.html"

    invoke-virtual {p6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_1b

    .line 398
    sget p1, Lcom/alipay/mobile/nebula/R$raw;->redirect_link:I

    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object p1

    .line 399
    const-string p3, "####"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string p4, "url"

    invoke-virtual {p2, p4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 400
    const-string p2, "text/html"

    invoke-static {p2, p1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 401
    :cond_1b
    const-string p6, "https://alipay.com/h5container/white_link.html"

    invoke-virtual {p6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_1c

    .line 402
    sget p1, Lcom/alipay/mobile/nebula/R$raw;->white_link:I

    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(I)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 403
    :cond_1c
    const-string p6, "https://alipay.com/h5container/security_link.html"

    invoke-virtual {p6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_1d

    .line 404
    sget p1, Lcom/alipay/mobile/nebula/R$raw;->security_link:I

    invoke-static {p1}, Lcom/alipay/mobile/nebula/appcenter/res/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object p1

    .line 405
    const-string p3, "####"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string p4, "url"

    invoke-virtual {p2, p4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 406
    const-string p2, "text/html"

    invoke-static {p2, p1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 407
    :cond_1d
    const-string p6, "https://a.alipayobjects.com/bridgeapi/1.0/jsready.js"

    invoke-virtual {p6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_1f

    .line 408
    const-string p1, "H5ContentProviderImpl"

    const-string p2, "load response for h5 js bridge"

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    nop

    .line 410
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->p:Lcom/alipay/mobile/h5container/api/H5Page;

    instance-of p2, p1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz p2, :cond_1e

    .line 411
    check-cast p1, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getScriptLoader()Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->composeBridge()Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    .line 410
    :cond_1e
    move-object p1, v0

    .line 413
    :goto_9
    const-string p2, "application/javascript"

    invoke-static {p2, p1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 416
    :cond_1f
    const-string p6, "/favicon.ico"

    invoke-virtual {p2, p6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p6

    if-nez p6, :cond_31

    const-string p6, "/favicon.png"

    .line 417
    invoke-virtual {p2, p6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p6

    if-nez p6, :cond_31

    const-string p6, "/favicon2.ico"

    .line 418
    invoke-virtual {p2, p6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_20

    goto/16 :goto_d

    .line 423
    :cond_20
    iget-object p6, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->q:Lcom/alipay/mobile/nebula/provider/H5ResProvider;

    if-eqz p6, :cond_21

    invoke-interface {p6, p2}, Lcom/alipay/mobile/nebula/provider/H5ResProvider;->contains(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_21

    .line 424
    const-string p3, "H5ContentProviderImpl"

    const-string p4, "load response from resource provider."

    invoke-static {p3, p4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->q:Lcom/alipay/mobile/nebula/provider/H5ResProvider;

    invoke-interface {p3, p2}, Lcom/alipay/mobile/nebula/provider/H5ResProvider;->getResource(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    .line 426
    invoke-direct {p0, p1, v5, p2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 430
    :cond_21
    const-string p6, "https://appx"

    invoke-virtual {v5, p6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_23

    .line 431
    invoke-direct {p0, v5}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 432
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_22

    .line 434
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v5, p2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 437
    :cond_22
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a()Ljava/lang/String;

    move-result-object p6

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_23

    .line 438
    iput-boolean v3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->y:Z

    .line 439
    const-string p2, "https://"

    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 440
    invoke-direct {p0, p1, v5, p2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 446
    :cond_23
    nop

    .line 447
    iget-boolean p1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->f:Z

    if-eqz p1, :cond_24

    .line 448
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    .line 447
    :cond_24
    move-object p1, v0

    .line 452
    :goto_a
    iget-boolean p6, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->f:Z

    if-eqz p6, :cond_26

    iget-boolean p6, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->g:Z

    if-eqz p6, :cond_26

    .line 453
    nop

    .line 454
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_25

    .line 455
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->getPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 456
    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 457
    new-instance p3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_b

    .line 454
    :cond_25
    move-object p2, v0

    move-object p3, p2

    .line 460
    :goto_b
    new-instance p1, Landroid/webkit/WebResourceResponse;

    const-string p4, "fallbackUrl"

    invoke-direct {p1, p2, p4, p3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    .line 463
    :cond_26
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p6

    if-nez p6, :cond_2a

    if-eqz p4, :cond_2a

    .line 464
    if-eqz p5, :cond_27

    iget-boolean p4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->k:Z

    if-eqz p4, :cond_27

    if-eqz p3, :cond_27

    invoke-interface {p3}, Lcom/alipay/mobile/h5container/api/H5Page;->pageIsClose()Z

    move-result p4

    if-nez p4, :cond_27

    .line 467
    iget-object p4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->l:Ljava/util/Map;

    invoke-static {p2}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    invoke-interface {p4, p5, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v3, p3

    move-object v4, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Lcom/alipay/mobile/nebulacore/web/H5InputStream;Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 469
    return-object v0

    .line 472
    :cond_27
    new-instance v2, Lcom/alipay/mobile/nebulacore/web/H5InputStream;

    invoke-direct {v2, p1, p0}, Lcom/alipay/mobile/nebulacore/web/H5InputStream;-><init>(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;)V

    .line 473
    iget-object p4, v2, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    if-eqz p4, :cond_28

    iget-object p4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    if-eqz p4, :cond_28

    .line 474
    move-object v1, p0

    move-object v3, v5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Lcom/alipay/mobile/nebulacore/web/H5InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 476
    :cond_28
    const-string p4, "H5ContentProviderImpl"

    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "fallback realStream or contentPackage is null, statusCode: "

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p6, v2, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->statusCode:I

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, " fallbackUrl:"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    sget-boolean p4, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz p4, :cond_29

    .line 481
    if-eqz p3, :cond_29

    invoke-interface {p3}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_29

    .line 482
    const-string p2, "pageLoad|loadFrom"

    const-string p3, "fallback"

    invoke-static {p2, p3}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 485
    :cond_29
    iget-object p2, v2, Lcom/alipay/mobile/nebulacore/web/H5InputStream;->realStream:Ljava/io/InputStream;

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 489
    :cond_2a
    sget-boolean p1, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz p1, :cond_2b

    .line 490
    if-eqz p3, :cond_2b

    invoke-interface {p3}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 491
    const-string p1, "pageLoad|loadFrom"

    const-string p3, "online"

    invoke-static {p1, p3}, Lcom/alipay/mobile/nebula/util/TestDataUtils;->storeJSParams(Ljava/lang/String;Ljava/lang/Object;)V

    .line 494
    :cond_2b
    const-string p1, "H5ContentProviderImpl"

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "load response from web "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-boolean p1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->v:Z

    if-eqz p1, :cond_2c

    .line 496
    const-string p1, "NO"

    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->c(Ljava/lang/String;)V

    .line 499
    :cond_2c
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->r:Lcom/alipay/mobile/nebula/resourcehandler/H5ResourceHandler;

    if-eqz p1, :cond_2d

    .line 500
    nop

    .line 501
    invoke-interface {p1, p2}, Lcom/alipay/mobile/nebula/resourcehandler/H5ResourceHandler;->shouldInterceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    .line 502
    if-eqz p1, :cond_2d

    .line 503
    return-object p1

    .line 506
    :cond_2d
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->o:Landroid/os/Bundle;

    const-string p3, "isTinyApp"

    invoke-static {p1, p3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 507
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->J:Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;

    if-nez p1, :cond_2f

    .line 508
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 509
    :try_start_3
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->J:Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;

    if-nez p1, :cond_2e

    .line 510
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object p1

    const-class p3, Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;

    .line 511
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;

    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->J:Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;

    .line 513
    :cond_2e
    monitor-exit p0

    goto :goto_c

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 515
    :cond_2f
    :goto_c
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->J:Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;

    if-eqz p1, :cond_30

    .line 516
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->J:Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;

    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->p:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {p1, p3, p2}, Lcom/alipay/mobile/nebula/provider/H5TinyAppContentProvider;->shouldInterceptRequest(Lcom/alipay/mobile/h5container/api/H5Page;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    .line 518
    if-eqz p1, :cond_30

    .line 519
    return-object p1

    .line 523
    :cond_30
    return-object v0

    .line 419
    :cond_31
    :goto_d
    const-string p1, "H5ContentProviderImpl"

    const-string p2, "favicon request intercepted"

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string p1, "image/x-icon"

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 395
    :cond_32
    :goto_e
    const-string p1, "H5ContentProviderImpl"

    const-string p2, "load response forbidden by safe strategy."

    invoke-static {p1, p2}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->E:Ljava/lang/String;

    new-instance p2, Lcom/alipay/mobile/nebulacore/web/H5InputStream;

    iget-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->E:Ljava/lang/String;

    invoke-direct {p2, p3, p0}, Lcom/alipay/mobile/nebulacore/web/H5InputStream;-><init>(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/web/H5InputStream$H5InputListener;)V

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object p1

    .line 524
    :catchall_1
    move-exception p1

    .line 525
    const-string p2, "H5ContentProviderImpl"

    const-string p3, "load response from web catch exception "

    invoke-static {p2, p3, p1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 526
    return-object v0
.end method

.method public getContent(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 7
    .param p1, "originUrl"    # Ljava/lang/String;

    .line 788
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getContent(Landroid/net/Uri;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;ZZZ)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public getContent(Ljava/lang/String;Z)Landroid/webkit/WebResourceResponse;
    .locals 7
    .param p1, "originUrl"    # Ljava/lang/String;
    .param p2, "fallback"    # Z

    .line 793
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getContent(Landroid/net/Uri;Ljava/lang/String;Lcom/alipay/mobile/h5container/api/H5Page;ZZZ)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public getContent(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "onGetResponse"    # Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;

    .line 800
    const-string v0, "IO"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$4;-><init>(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 821
    return-void
.end method

.method public getContentOnUi(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;)V
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "responseListen"    # Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;

    .line 842
    const-string v0, "H5ContentProviderImpl"

    if-nez p2, :cond_0

    .line 843
    :try_start_0
    const-string v1, "responseListen == null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    return-void

    .line 847
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 849
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->getContent(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;)V

    .line 850
    return-void

    .line 854
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 855
    .local v1, "time":J
    const/4 v3, 0x0

    .line 856
    .local v3, "data":[B
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    if-eqz v4, :cond_2

    .line 857
    invoke-virtual {v4, p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->get(Ljava/lang/String;)[B

    move-result-object v4

    move-object v3, v4

    move-object v9, v3

    goto :goto_0

    .line 856
    :cond_2
    move-object v9, v3

    .line 859
    .end local v3    # "data":[B
    .local v9, "data":[B
    :goto_0
    if-eqz v9, :cond_3

    .line 860
    const/4 v3, 0x0

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v3, p1, v4}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/io/InputStream;)Landroid/webkit/WebResourceResponse;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;->onGetResponse(Landroid/webkit/WebResourceResponse;)V

    .line 861
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getContentOnUi form contentPackage:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 863
    :cond_3
    const-string v3, "IO"

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v10

    new-instance v11, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;

    move-object v3, v11

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-wide v7, v1

    invoke-direct/range {v3 .. v8}, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl$5;-><init>(Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;J)V

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 907
    .end local v1    # "time":J
    .end local v9    # "data":[B
    return-void

    .line 905
    :catchall_0
    move-exception v1

    .line 906
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 908
    .end local v1    # "throwable":Ljava/lang/Throwable;
    return-void
.end method

.method public getContentPackageStatus()Ljava/lang/String;
    .locals 3

    .line 699
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    if-nez v0, :cond_0

    .line 700
    const-string v0, ""

    return-object v0

    .line 702
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->size()I

    move-result v0

    const-string v1, "_"

    const-string v2, "|"

    if-lez v0, :cond_1

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_Y_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getAppCredit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 703
    return-object v0

    .line 706
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_N_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    invoke-static {}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getInstance()Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->getAppCredit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 706
    return-object v0
.end method

.method public getFallbackUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "originUrl"    # Ljava/lang/String;

    .line 929
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->l:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 930
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getFallbackUrl originUrl is : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fallbackUrl is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->l:Ljava/util/Map;

    .line 933
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 931
    const-string v1, "H5ContentProviderImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 936
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocal()Ljava/lang/String;
    .locals 1

    .line 1184
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalResource(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 681
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->get(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    .line 684
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5GlobalPackage;->getContent(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method public getLottieAnimationImgsCount(Ljava/lang/String;)I
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 688
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 689
    :cond_0
    const/4 v1, 0x0

    .line 690
    .local v1, "count":I
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 691
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 692
    add-int/lit8 v1, v1, 0x1

    .line 694
    :cond_1
    goto :goto_0

    .line 695
    :cond_2
    return v1
.end method

.method public hasInputException()Z
    .locals 1

    .line 1086
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->F:Z

    return v0
.end method

.method public mapContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .line 912
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->s:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    return-void
.end method

.method public onInputClose(Lcom/alipay/mobile/nebulacore/web/H5InputStream;)V
    .locals 2
    .param p1, "his"    # Lcom/alipay/mobile/nebulacore/web/H5InputStream;

    .line 1065
    const-string v0, "H5ContentProviderImpl"

    const-string v1, "on input stream close."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1067
    return-void
.end method

.method public onInputException()V
    .locals 2

    .line 1077
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->F:Z

    .line 1078
    const-string v0, "H5ContentProviderImpl"

    const-string v1, "h5InputStream exception"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    return-void
.end method

.method public onInputOpen(Lcom/alipay/mobile/nebulacore/web/H5InputStream;)V
    .locals 2
    .param p1, "his"    # Lcom/alipay/mobile/nebulacore/web/H5InputStream;

    .line 1071
    const-string v0, "H5ContentProviderImpl"

    const-string v1, "on input stream open."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1073
    return-void
.end method

.method public reSetLocal()V
    .locals 1

    .line 1179
    const-string v0, "YES"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->u:Ljava/lang/String;

    .line 1180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->v:Z

    .line 1181
    return-void
.end method

.method public releaseContent()V
    .locals 3

    .line 1148
    const-string v0, "H5ContentProviderImpl"

    const-string v1, "releaseContent"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    if-eqz v1, :cond_0

    .line 1151
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->releaseContent()V

    .line 1154
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->D:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackagePool;->clearPackage(Ljava/lang/String;)V

    .line 1155
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->x:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    .line 1157
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1160
    goto :goto_0

    .line 1158
    :catchall_0
    move-exception v1

    .line 1159
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1162
    .end local v1    # "throwable":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->p:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 1164
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->l:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 1166
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1169
    return-void

    .line 1167
    :catchall_1
    move-exception v1

    .line 1168
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "clear mFallbackUrlMap exception "

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1171
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    return-void
.end method

.method public setEnableFallbackUrl(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 917
    iput-boolean p1, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->g:Z

    .line 918
    return-void
.end method

.method public setFallbackCache(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "originUrl"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .line 922
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5ContentProviderImpl;->a:Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;

    if-eqz v0, :cond_0

    .line 923
    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5UrlHelper;->purifyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/alipay/mobile/nebulacore/appcenter/parse/H5ContentPackage;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    :cond_0
    return-void
.end method
