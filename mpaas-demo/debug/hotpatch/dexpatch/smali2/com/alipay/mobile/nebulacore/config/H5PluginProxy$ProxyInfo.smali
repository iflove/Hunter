.class Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;
.super Ljava/lang/Object;
.source "H5PluginProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProxyInfo"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;

.field public plugin:Lcom/alipay/mobile/h5container/api/H5Plugin;

.field public pluginInfo:Lcom/alipay/mobile/nebula/config/H5PluginConfig;

.field public registered:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;

    .line 218
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/config/H5PluginProxy$ProxyInfo;->a:Lcom/alipay/mobile/nebulacore/config/H5PluginProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
