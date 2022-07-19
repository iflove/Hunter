.class Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$1;
.super Ljava/lang/Object;
.source "H5TabBarPlugin.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;

    .line 127
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetAsyncData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 139
    return-void
.end method

.method public onGetSyncData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 4
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    .line 130
    const-string v0, "textColor"

    invoke-static {p1, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 131
    .local v0, "textColor":I
    const-string v1, "selectedColor"

    invoke-static {p1, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v1

    .line 132
    .local v1, "selectedColor":I
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;

    new-instance v3, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    invoke-direct {v3, v0}, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;-><init>(I)V

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->a(Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;)Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    .line 133
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;

    new-instance v3, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    invoke-direct {v3, v1}, Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;-><init>(I)V

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;->b(Lcom/alipay/mobile/nebulacore/plugin/ui/H5TabBarPlugin;Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;)Lcom/alipay/mobile/nebulacore/util/TinyAppColorUtils$SafeColor;

    .line 134
    return-void
.end method

.method public onShowDefaultTab()V
    .locals 0

    .line 144
    return-void
.end method
